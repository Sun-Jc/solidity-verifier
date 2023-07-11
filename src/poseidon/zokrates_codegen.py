import json
import sys

jsonPath = sys.argv[1]

params = json.load(open(jsonPath))

N = params['state_size_field_elements']

def gen_mix_func():
    M = params['matrix_M']
    
    lines = []
    for i in range(N):
        for j in range(N):
            m = int(M[i][j], 16)
            lines.append('o[{i}] = o[{i}] + input[{j}] * {m};'.format(i=i, j=j, m=m))


    mix_func = '''
    def mix(field[{N}] input) -> field[{N}] {{
        field[{N}] mut o = [0; {N}];
        {lines}
        return o;
    }}
    '''.format(N=N, lines='\n'.join(lines))

    return mix_func


# print(gen_mix_func())


RF = params['full_rounds']
RP = params['partial_rounds']

C = params['round_constants']

lines = [] 
for i in range(RF + RP):
    lines.append('\n// round {}'.format(i))
    
    cs = [ '%s' % int(C[i * N + j],16) for j in range(N)]
    
    
        
    lines.append('i = ark(i, [{}]);'.format(', '.join(cs)))
    
    if (i < RF / 2) or (i >= RF / 2 + RP):
        lines.append('i = sbox_full(i); ')
    else:
        lines.append('i[0] = sbox_partial(i[0]); ')
        
    
    lines.append('i = mix(i);')
        
main = '\n'.join(lines)


pre = r'''
def ark<N>(field[N] mut i, field[N] c) -> field[N] {
    for u32 id in 0..N {
        i[id] = i[id] + c[id];
    }
    return i;
}

def sbox_full<N>(field[N] i) -> field[N] {
    field[N] mut o = [0; N];

    for u32 id in 0..N {
        o[id] = i[id] * i[id];
        o[id] = o[id] * o[id];
        o[id] = i[id] * o[id];
    }

    return o;
}

def sbox_partial(field i0) -> field {
    field mut o0 = i0 * i0;
    o0 = o0 * o0;
    o0 = i0 * o0;
    return o0;
}
'''

code = pre + '''

{mix}

def main(field[{n}] inputs) -> field {{
    field[{np1}] mut i = [0; {np1}];
    for u32 id in 0..{n} {{
        i[id+1] = inputs[id];
    }}

{main}

 return i[1];
}}

'''.format(mix=gen_mix_func(), main=main, n=N-1, np1=N)

print(code)
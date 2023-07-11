import json

jsonPath = 'poseidon-5-bn256.json'

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


print(gen_mix_func())


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
        
print('\n'.join(lines))

params
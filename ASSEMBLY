
#PEDRO RONDON

import ply.lex as lex

# r'atring' -> r significa que la cadena es tradada sin caracteres de escape,
# es decir r'\n' seria un \ seguido de n (no se interpretaria como salto de linea)

 # Lista de tokens

reserved = {
  'imprimir' : 'IMPRIMIR',
  'definir' : 'DEFINIR',
  'si' : 'CONDICIONAL_SI',
  'sino' : 'CONDICIONAL_SINO',
  'fin' : 'FIN_SI',
  'verdadero' : 'VERDADERO',
  'falso' : 'FALSO',
  'mientras' : 'MIENTRAS',
  'para' : 'PARA',
  'en' : 'EN',
  'rango' : 'RANGO',
  'final' : 'FIN_BUCLE',
  'retornar' : 'RETORNAR',
  'entero' : 'VAR_ENTERO',
  'cadena' : 'VAR_CADENA',
  'flotante' : 'VAR_FLOTANTE',
  'booleano' : 'VAR_BOOLEANO',
  'finCodigo' : 'FIN_CODIGO',
  'finFuncion' : 'FIN_FUNCION'
}

tokens = [
    'ID',
    'NUM',
    'OPERADOR_SUM',
    'OPERADOR_REST',
    'OPERADOR_MULT',
    'OPERADOR_DIV',
    'PAR_IZQ',
    'PAR_DER',
    'COMENTARIO_UNO',
    'COMENTARIO_DOS',
    'COMP_MENOR_QUE',
    'COMP_MAYOR_QUE',
    'IGUAL',
    'COMA',
    'COR_IZQ',
    'COR_DER',
    'DOS_PUNTOS',
    'CADENA'
    
] + list(reserved.values())
 
 # Regular expression rules for simple tokens
#t_NUMERO  = r'\d+'
t_OPERADOR_SUM    = r'\+'
t_OPERADOR_REST   = r'\-'
t_OPERADOR_MULT   = r'\*'
t_OPERADOR_DIV  = r'\/'
t_PAR_IZQ = r'\('
t_PAR_DER  = r'\)'
t_COR_IZQ = r'\{'
t_COR_DER = r'\}'
t_IMPRIMIR = r'imprimir'
t_DEFINIR = r'definir'
t_VERDADERO = r'verdadero'
t_FALSO = r'falso'
t_CONDICIONAL_SI = r'si'
t_CONDICIONAL_SINO = r'sino'
t_FIN_SI = r'fin'
t_MIENTRAS = r'mientras' 
t_PARA = r'para'
t_EN = r'en'
t_RANGO = r'rango'
t_FIN_BUCLE = r'final'
t_COMP_MAYOR_QUE = r'\>'
t_COMP_MENOR_QUE = r'\<'
t_IGUAL = r'\='
t_RETORNAR = r'\retornar'
t_COMA = r'\,'
t_DOS_PUNTOS = r'\:'
 # A regular expression rule with some action code

def t_NUM(t):
    #r'\d+'
    r'(["+"-]*[0-9]+["."0-9]*)'
    try:
      t.value = int(t.value)  #guardamos el valor del lexema
    except:
      t.value = float(t.value)  #guardamos el valor del lexema 
    #print("se reconocifo el numero")
    return t
def t_CADENA(t):
  r'\"([a-zA-Z0-9" "".""_""-"]+)"'
  t.type = reserved.get(t.value, 'CADENA')
  return t

def t_COMENTARIO_UNO(t):
  r'\#([a-zA-Z0-9" "]+)'
  t.type = reserved.get(t.value, 'COMENTARIO_UNO')
  return t

def t_COMENTARIO_DOS(t):
  r'\@([a-zA-Z0-9" ""\n"]+)@'
  t.type = reserved.get(t.value, 'COMENTARIO_DOS')
  return t

def t_ID(t):
  r'[a-zA-Z]+([a-zA-Z0-9]*)'
  t.type = reserved.get(t.value, 'ID')
  return t
  
 # Define a rule so we can track line numbers
def t_nuevalinea(t):
    r'\n+'
    t.lexer.lineno += len(t.value)
 
 # A string containing ignored characters (tabs)
t_ignore  = ' \t'
 
 # Error handling rule
def t_error(t):
    print("Caracter Ilegal '%s'" % t.value[0])
    t.lexer.skip(1)
 
# Build the lexer
lexer = lex.lex()

# Leer Input.txt
fileObject = open("Input.txt", "r")
data = fileObject.read()
print(data)
 
# Give the lexer some input
lexer.input(data)

# Tokenize
tokens2 = []
while True:
    tok = lexer.token()
    if not tok:
        break      # No more input
    #print(tok)
    print(tok.type, tok.value, tok.lineno, tok.lexpos)
    tokens2.append({'type': tok.type.lower(), 'lexeme':str(tok.value).lower(), 'line': tok.lineno})

tokens2.append({'type':'$', 'lexeme':'$', 'line': tokens2[-1]['line']})
print(tokens2)
#{'type':'condicional_si', 'lexeme':'si', 'line':1}
#Inica el Analizador Sintactico
import pandas as pd
import graphviz
dot = graphviz.Digraph(comment='Arbol Sintactico')
counter = 0
syntax_table = pd.read_csv("prueba6.csv", index_col=0)
#print(data.loc["E'"][')'])

lista = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Ax', 'Bx', 'Cx', 'Dx', 'Ex', 'Fx', 'Gx', 'Hx', 'Ix', 'Jx', 'Kx', 'Lx', 'Mx', 'Nx', 'Ox', 'Px', 'Qx', 'Rx', 'Sx', 'Tx', 'Ux', 'Vx', 'Wx', 'Xx', 'Yx', 'Zx', 'Ay', 'By', 'Cy', 'Dy', 'Ey', 'Fy', 'Gy', 'Hy', 'Iy', 'Jy', 'Ky', 'Ly', 'My', 'Ny', 'Oy', 'Py', 'Qy', 'Ry', 'Sy', 'Ty', 'Uy', 'Vy', 'Wy', 'Xy', 'Yy', 'Zy', 'Az', 'Bz', 'Cz', 'Dz', 'Ez', 'Fz', 'Gz', 'Hz', 'Iz', 'Jz', 'Kz', 'Lz', 'Mz', 'Nz', 'Oz', 'Pz', 'Qz', 'Rz', 'Sz', 'Tz', 'Uz', 'Vz', 'Wz', 'Xz', 'Yz', 'Zz', 'Aa', 'Ba', 'Ca', 'Da', 'Ea', 'Fa', 'Ga', 'Ha', 'Ia', 'Ja', 'Ka', 'La', 'Ma', 'Na', 'Oa', 'Pa', 'Qa', 'Ra', 'Sa', 'Ta', 'Ua', 'Va', 'Wa', 'Xa', 'Ya', 'Za', 'Ab', 'Bb', 'Cb', 'Db', 'Eb', 'Fb', 'Gb', 'Hb', 'Ib', 'Jb', 'Kb', 'Lb', 'Mb', 'Nb', 'Ob', 'Pb', 'Qb', 'Rb', 'Sb', 'Tb', 'Ub', 'Vb', 'Wb', 'Xb', 'Yb', 'Zb', 'Ac', 'Bc', 'Cc', 'Dc', 'Ec', 'Fc', 'Gc', 'Hc', 'Ic', 'Jc', 'Kc', 'Lc', 'Mc', 'Nc', 'Oc', 'Pc', 'Qc', 'Rc', 'Sc', 'Tc', 'Uc', 'Vc', 'Wc', 'Xc', 'Yc', 'Zc' ]

def print_stack():
  print("\nStack:")
  for e in stack:
    print(e.symbol, "-", e.is_terminal)
  print()

def print_input():
  print("\nInput:")
  for t in tokens2:
    print(t['type'], ",", t['lexeme'])
  print()

def buscar_nodo(raiz, simbolo):
  pila = [raiz]
  while len(pila) > 0:
    if pila[0].node_st.symbol == simbolo and len(pila[0].children) == 0:
      return pila[0]
      break
    if pila[0].node_st.symbol != simbolo and len(pila[0].children) == 0:
      pila.pop(0)
    if len(pila[0].children) > 0:
      list = pila[0].children
      pila.pop(0)
      for x in list:
        pila.insert(0, x)
  return None

def agregar_hijo(padre, hijo):
  padre.children.append(hijo)

def update_stack(stack, token_type, nodo_raiz):  
  production = syntax_table.loc[stack[0].symbol][token_type]
  print("production: ",production)

  if(str(production) == "nan"):
    return False
  else:
    # procesar production E -> T E'  =>  T E' 

    elementos = production.split(" ")
    elementos.pop(0)
    elementos.pop(0)
    print("           elementos2",elementos)
    
    # eliminar el ultimo elemento de la pila
    padre = buscar_nodo(nodo_raiz, stack[0].symbol)
    num_padre = stack[0].id
    stack.pop(0)

  
    if elementos[0] == "ε": #nulo
      symbol = node_stack(elementos[0], not elementos[0].isupper())
      dot.node(lista[symbol.id], 'ε')
      symbol_parser = node_parser(symbol, children = [], father = padre)
      symbol_parser.lexeme = "ε"
      agregar_hijo(padre, symbol_parser)
      dot.edge(lista[num_padre], lista[symbol.id])
      return
    arreglo = []
    # insertar production a la stack: primero E' y luego T
    lexema = 'no tiene lexema'
    linea = 'línea indefinida'
    for i in range(len(elementos)-1, -1, -1):      
        symbol = node_stack(elementos[i], not elementos[i].isupper())
        #dot.node(lista[symbol.id], symbol.symbol)
        for z in tokens2:
          if z['type'] == elementos[i]:
            lexema = z['lexeme']
            linea = z['line']
            break
        arreglo.append(symbol)
        symbol_parser = node_parser(symbol, children = [], father = padre)
        #lexeme='not lexeme'
        symbol_parser.lexeme = lexema
        symbol_parser.line = linea
        stack.insert(0, symbol)
        agregar_hijo(padre, symbol_parser)
        #dot.edge(lista[num_padre], lista[symbol.id])
    print_stack()
    for x in range(len(arreglo)-1, -1, -1):
      dot.node(lista[arreglo[x].id], arreglo[x].symbol)
      dot.edge(lista[num_padre], lista[arreglo[x].id])
    return True
  

class node_stack:
  def __init__(self, symbol, terminal):
    global counter
    self.id = counter
    self.symbol = symbol        # simbolo de la gramatica
    self.is_terminal = terminal # para saber si es terminal
    counter += 1
#es un nodo simple que tiene dentro el simbolo y un booleano que confirma si es terminal

class node_parser:
  def __init__(self, node_st, children =[], father = None, lexeme = None, line = None, type = None):
    self.node_st = node_st
    self.children = children
    self.father = father
    self.lexeme = lexeme
    self.type = type
    self.line = line
#formacion del arbol y los nodos enearios  
  
    
    

stack = [] #creacion pila
symbol_1 = node_stack('$', True)
symbol_2 = node_stack('INICIO', False)
stack.insert(0, symbol_1)
stack.insert(0, symbol_2)
#creacion nodos, ingresa el terminal y la E (valor no false)
nodo_raiz = node_parser(symbol_2, children = [])
#creacion del nodo raiz con el no terminal para crear el nodo
dot.node(lista[symbol_2.id], symbol_2.symbol)

#Si el $ es igual q $
contador = 1
while True:
  print("ITERATION ", contador)
  contador = contador + 1
  print_stack()
  print_input()
  #imprime la pila y el input
  if stack[0].symbol == '$' and tokens2[0]['type'] == '$':
    print("Todo bien!")
    break
  # cuando son terminales
  if stack[0].is_terminal:
    print("terminales ...")
    if stack[0].symbol == tokens2[0]['type']:
      stack.pop(0)
      tokens2.pop(0)
    else:
      print("ERROR sintáctico")
      break
#compara las entradas y marca si es correcto o sintax error, evaluacion hasta que termina
  # cuando reemplazar en la pila, según tabla sintáctica
  else:    
    u = update_stack(stack, tokens2[0]['type'], nodo_raiz)
    if(u == False):
      print("ERROR sintáctico")
      break


tabla_simbolos = []
#{lexema, id/funcion, funcion padre}

cassembly = open("assembler.s", "w")
cassembly.write(".data")

def insertar_simbolo(lexema, id_func, funcion_padre, linea, tabla_simbolos):
  tabla_simbolos.append({"lexeme" : lexema, "id/funcion/parametro" : id_func, "func_padre" : funcion_padre, "line" : linea})

def buscar_simbolo(lexema, funcion_padre, tabla_simbolos):
  for x in tabla_simbolos:
    if x["lexeme"] == lexema and x["func_padre"] == funcion_padre:
      return True
  return False

def eliminar_simbolos(funcion_padre, tabla_simbolos):
  lista_eliminar = []
  contador = 0
  for x in range(len(tabla_simbolos)):
    if tabla_simbolos[x]["func_padre"] == funcion_padre:
      lista_eliminar.append(x)
  for y in range(len(tabla_simbolos)):
    for z in lista_eliminar:
      if y == z:
        y = y - contador
        tabla_simbolos.pop(y)
        contador = contador + 1
        lista_eliminar.remove(z)
      

def insertar_tipos(nodo_raiz):
  for child in reversed(nodo_raiz.children):
    if child.node_st.symbol == "E":
      print("Se llegó al nodo E")
      if child.children[0].node_st.symbol == "N'":
        tipo = []
        tipo.append(child.father.father.children[1].lexeme)
        agregar = identiids(child.children[0], tipo)
        print(agregar)
        verificador = agregar[0]
        contador = 0
        for var in agregar:
          print ("verificando:", verificador, "variable:", var)
          if verificador != var:
            print("Error semántico, variables no compatibles.")
            contador = contador + 1
        if contador == 0:
          child.type = agregar[0]
            
        
    insertar_tipos(child)


def identiids(nodo, tipo):
  for child in reversed(nodo.children):
    if child.node_st.symbol == "id" or child.node_st.symbol == "num" or child.node_st.symbol == "verdadero" or child.node_st.symbol == "falso" or child.node_st.symbol == "cadena":
      variable = child.lexeme
      try:
        entero = int(variable)
        tipo.append("entero")
      except ValueError:
        try:
          flotante = float(variable)
          tipo.append("flotante")
        except ValueError:
          try:
            if variable == "verdadero" or variable == "falso":
              tipo.append("booleano")
            elif child.node_st.symbol == "cadena":
              tipo.append("cadena")
          except ValueError:
            print("Tipo de dato incorrecto")
    identiids(child, tipo)
  return tipo

def bus_val(node, lista_numeros):
  for hijo in node.children:
    print(hijo.node_st.symbol)
    if hijo.node_st.symbol == "num":
      print("Hay un numero")
      print(hijo.lexeme)
      lista_numeros.append(hijo.lexeme)
    bus_val(hijo, lista_numeros)
  print(lista_numeros)

def assembly_pointer(var, nodo):
  para_escribir1 = "\n\tvar_" + var
  if nodo.children[1].lexeme == "entero":
    para_escribir_final =  para_escribir1 + ":    .word    0:1"
    cassembly.write(para_escribir_final)

def assembly_body(lista):
  cassembly.write("\n.text")
  cassembly.write("\nmain:")
  for x in range(len(lista)):
    lista_numeros = []
    bus_val(lista[x]["nodo_recorrer"], lista_numeros)
    cassembly.write("\n\tli $a0, " + lista_numeros[0])
    cassembly.write("\n\tsw $a0 0($sp)\n\tadd $sp $sp -4")
    cassembly.write("\n\tli $a0, " + lista_numeros[1])
    cassembly.write("\n\tlw $t1 4($sp) \n\tadd $a0 $t1 $a0 \n\tadd $sp $sp 4")
    cassembly.write("\n\tla  $t1, var_" + lista[x]["nombre_variable"] + "\n\tsw  $a0, 0($t1)")
    cassembly.write("\n\tli $v0 1"	+ "\n\tsyscall")
    cassembly.write("\n\tjr $ra  ")
    cassembly.close()
  
lista_probar = []

def checkvardef(root, contador_linea, funcion_padre, tabla_simbolos, lista_probar):
  for child in reversed(root.children):
    if child.node_st.symbol == "definir":
      contador_linea = child.line
      funcion_padre = child.father.children[-2].lexeme
    if child.node_st.symbol == "fin_funcion" or child.node_st.symbol == "fin_codigo":
      print("Acabó la función ", funcion_padre)
      eliminar_simbolos(funcion_padre, tabla_simbolos)
      contador_linea = 0
      funcion_padre = "main"
    if child.node_st.symbol == "var_entero" or child.node_st.symbol == "var_flotante" or child.node_st.symbol == "var_booleano" or child.node_st.symbol == "var_cadena":
      node_id = child.father.children[0].children[2].lexeme
      if buscar_simbolo(node_id, funcion_padre, tabla_simbolos) == False:
        print("La variable: ", node_id, " es de tipo ", child.lexeme)
        #agregar al ensamblador
        if child.lexeme == "entero":
          assembly_pointer(node_id, child.father)
          lista_probar.append({"nombre_variable" : node_id, "nodo_recorrer" : child.father})
        insertar_simbolo(node_id, "id", funcion_padre, child.line, tabla_simbolos)
      else:
        print("Error Semántico")
    if child.node_st.symbol == "id" and child.father.children[-1].node_st.symbol == "definir":
      if buscar_simbolo(child.lexeme, funcion_padre, tabla_simbolos) == False:
        print("Variable creada: ", child.lexeme, " es de tipo función.")
        insertar_simbolo(child.lexeme, "funcion", funcion_padre, child.line, tabla_simbolos)
      else:
        print("Error Semántico")
    if child.node_st.symbol == "id" and child.line == contador_linea and child.father.children[-1].node_st.symbol != "definir":
      if buscar_simbolo(child.lexeme, funcion_padre, tabla_simbolos) == False:
        print("Variable creada ", child.lexeme, " es de tipo parámetro.")
        insertar_simbolo(child.lexeme, "parametro", funcion_padre, child.line, tabla_simbolos)
      else:
        print("Error Semántico")
    if child.node_st.symbol == "id" and child.father.father.children[-1].node_st.symbol != "var_entero" and child.father.father.children[-1].node_st.symbol != "var_flotante" and child.father.father.children[-1].node_st.symbol != "var_booleano" and child.father.father.children[-1].node_st.symbol != "var_cadena" and child.father.children[-1].node_st.symbol != "definir":
        if buscar_simbolo(child.lexeme, funcion_padre, tabla_simbolos) == True:
          print("Se usó la variable ", child.lexeme)
        else:
          print("Error Semántico")
    checkvardef(child, contador_linea, funcion_padre, tabla_simbolos, lista_probar)
checkvardef(nodo_raiz, 0, "main", tabla_simbolos, lista_probar)

assembly_body(lista_probar)

def recarbol(nodo_raiz):
  for child in reversed(nodo_raiz.children):
    print("TOKEN", child.node_st.symbol)
    print("LEXEMA", child.lexeme)
    print("TIPO", child.type)
    print("LINEA", child.line)
    recarbol(child)

print(tabla_simbolos)
insertar_tipos(nodo_raiz)
dot.render('doctest-output/round-table.gv').replace('\\', '/')
'doctest-output/round-table.gv.pdf'

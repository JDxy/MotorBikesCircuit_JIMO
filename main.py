import sqlite3
from urllib.request import Request
from bottle import route, run, request, template, get, post, redirect, static_file
from config.config import DATABASE
from forms.register import RegistrationForm
from forms.inicio import InicioForm
from models.clientes import Clientes

clientes = Clientes(DATABASE)

@route('/todo')
def todo_list():
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute("select * from clientes")
    result = c.fetchall()
    return str(result)

@route('/espectadores')
def todo_list():
    conn = sqlite3.connect(DATABASE)
    c = conn.cursor()
    c.execute("select * from espectadores")
    result = c.fetchall()
    return str(result)

@get('/new')
def register():
    form = RegistrationForm(request.POST)
    return template('register', form=form)


@post('/new')
def new_item_save():

    if request.POST.save_espectador: 
        new1 = request.POST.nombre.strip()
        new2 = request.POST.apellidos.strip()
        new3 = request.POST.email.strip() 
        new4 = request.POST.contrasena.strip()
        new5 = request.POST.tipo_cliente.strip()
        new6 = request.POST.miembro.strip()

        clientes.insertar_cliente(new1,new2,new3,new4,new5)
        clientes.insertar_espectadores(new3,new6)
        #new_id = c.lastrowid
        return redirect('/todo')

    if request.POST.save_piloto:
        new1 = request.POST.nombre.strip()
        new2 = request.POST.apellidos.strip()
        new3 = request.POST.email.strip()
        new4 = request.POST.contrasena.strip()
        new5 = request.POST.cliente_tipo.strip()
        new6 = request.POST.carreras.strip()

        clientes.insertar_cliente(new1,new2,new3,new4,new5)

        return redirect('/todo')

@get('/inicio')
def inicio():
    form = InicioForm(request.POST)
    return (template('inicio', form=form))

@post('/inicio')
def inicio():
    if request.POST.Iniciar_sesion:
        email = request.POST.email.strip()
        contrasena = request.POST.contrasena.strip()
        valido = clientes.validar_email(email)
        if valido == "true":
            contrasena_confirmada = clientes.validar_contrasena(email,contrasena)
            if contrasena_confirmada == "true":
                espectador_piloto = clientes.espectador_o_piloto(email)
                if espectador_piloto == "piloto":
                    return redirect(/pagina_piloto)
                else:
                    return redirect(/pagina_espectadores)
            else:
                


@get("/static/<filepath:path>")
def html(filepath):
    return static_file(filepath, root = "static")

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)

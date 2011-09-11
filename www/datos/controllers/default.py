# -*- coding: utf-8 -*-
# this file is released under public domain and you can use without limitations

#########################################################################
## This is a samples controller
## - index is the default action of any application
## - user is required for authentication and authorization
## - download is for downloading files uploaded in the db (does streaming)
## - call exposes all registered services (none by default)
#########################################################################

def index():
    alumnos = db().select(db.alumno.ALL)
    profesores= db().select(db.profesor.ALL)
    curso= db().select(db.curso.ALL)
 
    return dict(alumnos=alumnos,profesores=profesores,curso=curso)

def detalle():

    alumno=db(db.alumno.codigo==request.args(0)).select()
    profesor=db(db.profesor.codigo==request.args(0)).select()
    curso=db(db.curso.codigo==request.args(0)).select()

    
    return dict(alumno=alumno,profesor=profesor,curso=curso)
    
def registroalumno():
    form=SQLFORM(db.alumno)
        
    return dict(form=form)
def registroprofesor():
    form=SQLFORM(db.profesor)
    return dict(form=form)

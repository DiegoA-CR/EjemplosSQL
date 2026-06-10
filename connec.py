#postgreSQL
#https://www.tutorialesprogramacionya.com/pythonya/detalleconcepto.php?punto=96&codigo=97&inicio=90
#pip install psycopg2-binary

import psycopg2

try:
    # Establecer conexión
    conn = psycopg2.connect(
        host="localhost",
        database="nombre_base_datos",
        user="usuario",
        password="contraseña"
    )
    
    # Crear cursor
    cur = conn.cursor()
    
    # Ejecutar consulta
    cur.execute("SELECT version();")
    db_version = cur.fetchone()
    print(f"Versión de PostgreSQL: {db_version}")
    
    # Confirmar cambios si hay modificaciones (INSERT, UPDATE, DELETE)
    # conn.commit()

except Exception as error:
    print(f"Error de conexión: {error}")
    
finally:
    if conn is not None:
        cur.close()
        conn.close()
        print("Conexión cerrada.")
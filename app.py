from flask import Flask , render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine, MetaData, Table, Column, Integer, String , Text

# for starting flask app
app = Flask(__name__)


# configure SQLAlchemy
db = SQLAlchemy(app)


# MySQL engine that connects Database via sqlalchemy
mysql_engine = create_engine("mysql+mysqlconnector://root:Ram_1234@localhost/TUTORIALS", echo = True)

# PGSQL engine that connects database via sqlalchemy
pgsql_engine = create_engine("postgresql://rbquixotic:rbquixotic@localhost:5432/alchemy", echo = True)

meta = MetaData()


# BOOKS Table
Books = Table(
   'BOOKS', meta, 
   Column('Book_ID', Integer, primary_key = True), 
   Column('Title', String(100)), 
   Column('Author', String(100)),
   Column('Description',Text),
   Column('Rating',Integer),
)

# CUSTOMERS Table
Customers = Table(
    'CUSTOMERS',meta,
    Column('Person_ID' , Integer , primary_key=True),
    Column('First_Name' , String(100)),
    Column('Last_Name' , String(100)),
    Column('Address' , Text),
    Column('City' , String(100)),
    Column('Country' , String(100)),

)

# Creating engine
meta.create_all(mysql_engine)
meta.create_all(pgsql_engine)


# connection to the required DB engine
mysql_connection = mysql_engine.connect()
pgsql_connection = pgsql_engine.connect()


# # root url
# @app.route('/')
# def hello_world():
#    return render_template('index.html')


# # /PostgreSQL url
# @app.route('/PostgreSQL')
# def postgres():

#     # Fetching Data From Books Table
#     query = db.select([Books])
#     ResultProxy = pgsql_connection.execute(query)
#     Result = ResultProxy.fetchall()

#     return render_template('/postgres.html', demo = Result)
    

# # /MySQL url
# @app.route('/MySQL')
# def mysql():

#     # Fetching Data From Customers Table
#     query = db.select([Customers])
#     ResultProxy = mysql_connection.execute(query)
#     Result = ResultProxy.fetchall()

#     return render_template("mysql.html",result=Result)


# Starting the app
if __name__ == '__main__':
   app.run(debug = True)
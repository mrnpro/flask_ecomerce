 
 
import json
from flask import Flask, jsonify,render_template,request
from flask_mysqldb import MySQL 

app = Flask(__name__,template_folder="html")

app.config['MYSQL_HOST'] = "localhost"
app.config['MYSQL_USER'] = "root"

app.config['MYSQL_PASSWORD'] = ""
app.config['MYSQL_DB'] = "ecomerce"

mysql = MySQL(app)
@app.route('/',methods=['GET','POST'])
def index():
    if request.method == 'GET':
        
        
        #username = request.form['username']
        #email = request.form['email']
         

        cur = mysql.connection.cursor()
        #cur.execute("Insert into name(username,email) VALUES (%s,%s)",(username,email))
        mysql.connection.commit()
        cur.execute("select *from products")
        data = cur.fetchall()
        
        payload = []
        content = {}
        for result in data:
            content = {'id': result[0], 'pname': result[1],'pdescip':result[2],'pprice':result[3],'imgurl':result[4]}
            payload.append(content)
            content = {}
        return jsonify(payload)
       # cur.close()
       # print(username)
       # return  jsonify({"test":data})
    else:
       return "future will be ther soon"

    return render_template("p.html")
@app.route('/banner',methods=['GET'])
def ban():
        cur = mysql.connection.cursor()
        #cur.execute("Insert into name(username,email) VALUES (%s,%s)",(username,email))
        mysql.connection.commit()
        cur.execute("select *from banner")
        data = cur.fetchall()
        
        payload = []
        content = {}
        for result in data:
            content = {'id': result[0],'name':result[1],'url':result[2]}
            payload.append(content)
            content = {}
        return jsonify(payload) 
     
if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
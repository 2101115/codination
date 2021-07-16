import requests
import os
import mysql.connector

  
try:
    os.system('cls')

    def GetCategoryDetails():
        # Making a get request
        response = requests.get('http://127.0.0.1:8000/categories')

        os.system('cls')
        # print response
        data = response.json()
        # print json content
        print("\t\tCategory\n")
        print(f"Id |\tCategory")
        print("------------------------------------")
        for p in range(0,len(data)):
            print(f"{data[p]['id']}  |\t{data[p]['title']}")
            
    

except Exception as ex:
    print(f"Error Occured = {ex}")

try:
    os.system('cls')

    def GetProductsDetails():
        # Making a get request
        response = requests.get('http://127.0.0.1:8000/products')

        os.system('cls')
        # print response
        data = response.json()
        # print json content
        print("\t\tProducts\n")
        print(f"Id   \tPrice \tStock \tProduct")
        print("------------------------------------")
        for p in range(0,len(data)):
            print(f"{data[p]['id']}  \t{data[p]['price']} \t{data[p]['stock']} \t{data[p]['name']} ")
            
    GetProductsDetails()

except Exception as ex:
    print(f"Error Occured = {ex}")



try:
    
    os.system('cls')
    def SingleProductsDetails(id):
        
        response = requests.get(f'http://127.0.0.1:8000/products/{id}/')

        os.system('cls')
            
        data = response.json()
        print('\t\tProduct Details\n')
        print (f"Id \tPrice \tStock \tProduct\n")
        print (f"{data['id']} \t{data['price']} \t{data['stock']} \t{data['name']}\n\n")

except Exception as ex:
    print(f"Error Occured = {ex}")


def UpdateProductsDetails(name, price, id):
    try:
        # creating connection object 

        con = mysql.connector.connect(
            host ="localhost",
            user="root",
            passwd="",
            database="codianationdb",
            port="3306"
        )
        # creating cursor object to perform SQL operation
        db_cursor = con.cursor()
        # query to update data into table -
        sql = f"Update app1_product SET name = '{name}', price = {price} where id = {id}"
        # excecute query using cursor object -
        db_cursor.execute(sql)
        # commiting changes in database
        con.commit()
        # Getting Updated Row From Table - 
        db_cursor.execute(f"SELECT * FROM app1_product where id = {id}")

        result = db_cursor.fetchone()

        print(result)
        
    except Exception as ex:
        print(f"Error = {ex}")
    finally:
        con.close()
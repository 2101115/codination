
import os
from time import sleep
from details import (
    GetCategoryDetails, 
    GetProductsDetails, 
    SingleProductsDetails,
    UpdateProductsDetails
    )


choice = 'y'
while choice == 'y':
    os.system('cls')
    print("\t\tGet Details")
    
    print("""
1) Category Details
2) Products Details
3) Single Product Details
4) Update Product Details
    """)
    choice = int(input('Enter Choice ='))
    if choice == 1:
        GetCategoryDetails()
    
    elif choice == 2:
        GetProductsDetails()
    
    elif choice == 3:
        os.system('cls')
        GetProductsDetails()
        id = int(input("Enter Product Id ="))
        SingleProductsDetails(id)
    
    elif choice == 4:
        os.system('cls')
        GetProductsDetails()

        id = int(input("Enter Product Id To Update="))
        SingleProductsDetails(id)
        print("\n")

        print("\t\tEnter Data TO Update")
        name = input('Enter Product To Update =')
        price = input('Enter price To Update =')
        UpdateProductsDetails(name, price, id)
        os.system('cls')
        print("Updated SuccessFully")
        sleep(1.5)
        SingleProductsDetails(id)
        

    
    choice = input('Do you want To Continue [y/n]=')
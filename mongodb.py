from pymongo import MongoClient
client = MongoClient("mongodb+srv://Anusree:anu123@cluster0.ouku5.mongodb.net/?retryWrites=true&w=majority")
db = client.test
db=client.gettingStarted
people=db.people
personD={
    "name":{"first":"Alan","Last":"Turning"}
    }
people.insert_one(personD)


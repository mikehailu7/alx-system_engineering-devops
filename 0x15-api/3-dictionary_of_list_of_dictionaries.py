#!/usr/bin/python3
#Author: MikiasHailu
""" This will export a to-do list information of all employees to JSON format."""
import json
import requests

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users").json()

    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump({
            n.get("id"): [{
                "task": m.get("title"),
                "completed": m.get("completed"),
                "username": n.get("username")
                } for m in requests.get(url + "todos",
                    params={"userId": n.get("id")}).json()]
                for n in users}, jsonfile)

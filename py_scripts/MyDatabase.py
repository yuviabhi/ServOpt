import mysql.connector

class MyDatabase(object):
	
	def __init__(self):
		self.host="localhost"
		self.user="root"
		self.passwd=""
		self.database="servopt_db"
		self.mydb = 0
		self.mycursor = 0


	def connect(self):
		self.mydb = mysql.connector.connect(
			host=self.host,
			user=self.user,
			passwd=self.passwd,
			database=self.database
			)
		self.mycursor = self.mydb.cursor()
		#return self.mycursor


	def insert(self, sql, val):
		self.mycursor.execute(sql, val)
		self.mydb.commit()
		print(self.mycursor.rowcount, "record(s) inserted.")


	def delete(self, sql, val):
		self.mycursor.execute(sql, val)
		self.mydb.commit()
		print(self.mycursor.rowcount, "record(s) deleted.")


	def update(self, sql, val):
		self.mycursor.execute(sql, val)
		self.mydb.commit()
		print(self.mycursor.rowcount, "record(s) updated.")

	def fetchall(self, sql):
		self.mycursor.execute(sql)
		#Returning all-rows , columns-name
		return self.mycursor.fetchall() , self.mycursor.description 

	def fetchone(self, sql):
		self.mycursor.execute(sql)
		return self.mycursor.fetchone(1)

	def fetchmany(self, sql, num_rows):
		self.mycursor.execute(sql)
		return self.mycursor.fetchmany(num_rows)
			

	
		

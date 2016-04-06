import datetime

tdate=datetime.datetime.today()
tdatebase=datetime.date.today()
ttime=datetime.time()

#print tdate

def formatter (datevar):
	return datevar.strftime('%a %b %d %X %Y +0100')

def print_format (datevar):
	print formatter(datevar)

year_delta=datetime.timedelta(days=365)
day_delta=datetime.timedelta(days=1)
hour_delta=datetime.timedelta(hours=2, minutes=30)

first_date=(tdatebase-year_delta)

new_day=first_date

for x in range(1,365):
	new_day=(new_day+day_delta)
	new_baseday=datetime.datetime.combine(new_day, ttime)
	new_baseday=(new_baseday+hour_delta+hour_delta)

	out_file = open("file/"+str(x)+".txt","w")
	for y in range(1,8):

		new_baseday=(new_baseday+hour_delta)
		print_format(new_baseday)

		out_file.write(formatter(new_baseday)+"\n")
	out_file.close()

print "Done."


import datetime
import pprint
import time


def lambda_handler(event, context):
    pprint.pprint(event)

    year = event['year']
    month = event['month']
    day = event['day']
    hour = event['hour']
    minute = event['minute']
    second = event['second']
    microsecond = event['microsecond']

    dt = datetime.datetime(year, month, day, hour, minute, second, microsecond)

    epoch_time = int(time.mktime(dt.timetuple()))
    print(epoch_time)

    return epoch_time

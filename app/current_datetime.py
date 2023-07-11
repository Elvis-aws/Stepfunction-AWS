import datetime


def lambda_handler(event, context):
    now = datetime.datetime.now()

    return {
        'year': now.year,
        'month': now.month,
        'day': now.day,
        'hour': now.hour,
        'minute': now.minute,
        'second': now.second,
        'microsecond': now.microsecond
    }


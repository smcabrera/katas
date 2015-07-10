#
# Skeleton file for the Python "Bob" exercise.
#
def hey(what):
    if what == '':
        response = 'Fine. Be that way!'
    elif '!' in what:
        response = 'Whoa, chill out!'
    elif '?' in what:
        response = 'Sure.'
    else:
        response = 'Whatever.'
    return response

# I'm going to need access to the internet and some python documentation to finish this one...

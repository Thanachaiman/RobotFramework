from robot.api.deco import keyword

@keyword('hello')
def hello(name):
    print('Hello, %s!' % name)
    return('hello')
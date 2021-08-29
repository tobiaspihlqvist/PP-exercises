import turtle
import sys

#Implement a mini-language to control a simple turtle graphics system. The language constists of single letter commands, 
#some followed by a single number.
#Implement the code that parses this language. It should be designed so that it is simple to add new commands.
def interpretCommand(input):
    dict = {
    "U": {"args": False, "cmd": "penup" },
    "D": {"args": False, "cmd": "pendown" },
    "W": {"args": True, "cmd": "left" },
    "N": {"args": True, "cmd": "up" },
    "S": {"args": True, "cmd": "down" },
    "E": {"args": True, "cmd": "right" },
    };
    item = dict.get(input[0]);
    if(item is None):
        print("here is none");
        return None;

    if(item["args"] == True and input.__len__() > 1):
        return f'{item["cmd"]}({input[1:]})';
    return f'{item["cmd"]}(), sug min kuk';

def main(*args):
    instance = turtle.Turtle();
    # instance.pendown();
    instance.left(500);
    instance.forward(100);
    turtle.done();

    for arg in sys.argv[1:]:
        if(isinstance(arg, str)):
            # if(arg.__len__() > 2):
                command = (interpretCommand(arg));
                continue;
    
    return;

    # instance.pensize(2);
    # instance.



if __name__ == "__main__":
    main()


#p 2 select pen 2
#d pen down
# w draw west 2cm
# n 
# e
# s
# u pen up 
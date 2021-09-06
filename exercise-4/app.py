import turtle
import sys

#Implement a mini-language to control a simple turtle graphics system. The language constists of single letter commands, 
#some followed by a single number.
#Implement the code that parses this language. It should be designed so that it is simple to add new commands.
def interpretCommand(input):
    dict = {
    "U": {"args": False, "cmd": "penup" },
    "D": {"args": False, "cmd": "pendown" },
    "L": {"args": True, "cmd": "left" },
    "F": {"args": True, "cmd": "forward" },
    "B": {"args": True, "cmd": "backward" },
    "R": {"args": True, "cmd": "right" },
    };
    item = dict.get(input[0]);
    if(item is None):
        print("There is no command with that shortcut");
        return None;

    if(item["args"] == True and input.__len__() >= 1):
        args = f'{input[1:]}';
        if(args.__len__() < 1): args = "0";
        return (f'{item["cmd"]}', args);
    return (item["cmd"]);

def main(*args):
    instance = turtle.Turtle();

    for arg in sys.argv[1:]:
        if(isinstance(arg, str)):
                command = (interpretCommand(arg));
                if(command.__len__() > 1):
                    getattr(instance,command[0])(int(command[1]));
                    instance.forward(int(command[1]));
                else:
                    getattr(instance,command)();

    turtle.done();
    return;



if __name__ == "__main__":
    main()

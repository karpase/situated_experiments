import sys


filename = sys.argv[1]
pddl = sys.argv[2]


maxnum = 0

free = []
init = ()
goal = ()

f = open(filename, "r")
lines = f.readlines()
for y,line in enumerate(lines):
    maxnum = max(maxnum, 0, len(line))
    for x,c in enumerate(line):
        if c in [' ','A','B']:
            free.append((x,y))
        if c == 'A':
            init = (x,y)
        if c == 'B':
            goal = (x,y)

outfile = open(pddl, "w")
outfile.write("(define (problem grid1) (:domain grid)\n")
outfile.write("(:objects \n")
for i in range(maxnum):
    outfile.write("n" + str(i) + " - num\n")

outfile.write(")\n")
outfile.write("(:init \n")
for i in range(1,maxnum):
    outfile.write("(next n" + str(i-1) + " n" + str(i) + ") ")
outfile.write("\n")
outfile.write("(atX n" + str(init[0]) + ") ")
outfile.write("(atY n" + str(init[1]) + ") ")
outfile.write("\n")
for x,y in free:
    outfile.write("(free n" + str(x) + " n" + str(y) + ")\n")
outfile.write(")\n")

outfile.write("(:goal (and \n")
outfile.write("(atX n" + str(goal[0]) + ") ")
outfile.write("(atY n" + str(goal[1]) + ") ")
outfile.write("))\n")

outfile.write("(:metric minimize (total-time))\n")
outfile.write(")")

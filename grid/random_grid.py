import sys
import argparse
import random

parser = argparse.ArgumentParser(description='Generate random grid with 2 initial choices')
parser.add_argument('n',  type=int,  help='size of grid',default=16)
parser.add_argument('p',  type=float, help='probability of obstacle',default=0.2)
parser.add_argument('pddl',  type=str, help='output file name')
parser.add_argument('-seed',  type=int, help='random seed', default=2020)


args = parser.parse_args()

maxnum = args.n
random.seed(args.seed)

free = [(0,0),(0,1),(1,0),(args.n-1,args.n-1)] # initial choice
for x  in range(args.n):
    for y in range(args.n):
        if x > 1 or y > 1:
            if random.random() > args.p:
                free.append((x,y))
init = (0,0)
goal = (args.n-1,args.n-1)


outfile = open(args.pddl, "w")
outfile.write("(define (problem grid1) (:domain grid)\n")
outfile.write("(:objects \n")
for i in range(maxnum):
    outfile.write("n" + str(i) + " - num\n")

outfile.write(")\n")
outfile.write("(:init \n")
outfile.write("(alive)\n")
outfile.write("(at " + str(args.n * 4) + " (not (alive)))\n")
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

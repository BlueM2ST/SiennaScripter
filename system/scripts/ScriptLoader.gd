extends Node


"""
Script example:

# label. Can be jumped to from other parts of the scripts
*start

# if a line starts with @ then it is a command
# create layers to attach nodes to (for z ordering)
@setlayer=back
@setlayer=front

# set a variable
@var this="that"
@var num=0
@var list=[]
@var dict={}

# conditionals
@if this=="that"
	@print="this is that"
@elif this=="this"
	@print="this is actually this"
@else
	@print="this is something else"

# create a node.
@img create layer=img1 slot=nodeID pos=0,0 size=100,100 scale=1

# modify a node
# method 1: with command
@img slot slot=nodeID moveto=0,100
# method 2: with shorthand
$nodeID moveto=0,100

# jump to a new label
@jump=*secondChapter:this,100


# values can also be passed to labels
*secondChapter:this,that
@print=this
@print=that

# return to the previous script and resume
@return

"""



func _ready():
	pass



# very simple tokenizer
func tokenizer():
	pass
	


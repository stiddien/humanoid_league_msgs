# An obstacle in the image, which can be a robot, a human or something else

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

# Main color of the obstacle, to differentiate between robots and other things like human legs
# something we cant classify
uint8 UNDEFINED = 0
# robot without known color
uint8 ROBOT_UNDEFINED = 1
uint8 ROBOT_MAGENTA = 2
uint8 ROBOT_CYAN = 3
# a human legs, e.g. from the referee
uint8 HUMAN = 4
# black poles which are normally used for technical challenges
uint8 POLE = 5
uint8 color

# the number of the robot, if it is a robot and if it can be read. Put in -1 if not known
uint8 playerNumber

# The corresponding section in the image
geometry_msgs/Point top_left
uint8 height
uint8 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
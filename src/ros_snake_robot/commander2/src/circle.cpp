#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <math.h>
// Main moveit libraries are included

bool xInit = false;
bool xPos = false;
bool yPos = false;

bool xNeg = false;
bool yNeg = false;
double pi = 2 * asin(1.0);
double angle = 0;
int main(int argc, char **argv)
{
    ros::init(argc, argv, "move_group_interface_tutorial");
    ros::NodeHandle node_handle;
    ros::AsyncSpinner spinner(0);
    spinner.start();                                               // For moveit implementation we need AsyncSpinner, we cant use ros::spinOnce()
    static const std::string PLANNING_GROUP = "group1_controller"; /* Now we specify with what group we want work, 
    here group1 is the name of my group controller*/
    moveit::planning_interface::MoveGroupInterface
        move_group(PLANNING_GROUP); // loading move_group
    const robot_state::JointModelGroup *joint_model_group =
        move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP); //For joint control
    geometry_msgs::PoseStamped current_pose;
    geometry_msgs::PoseStamped target_pose;     // Pose in ROS is implemented using
                                                //geometry_msgs::PoseStamped, google what is the type of this msg
    current_pose = move_group.getCurrentPose(); /* Retrieving theinformation about the current position and orientation of the end effector*/
    target_pose = current_pose;
    //go to convinient position 
    target_pose.pose.position.x = target_pose.pose.position.x - 1.4;
    target_pose.pose.position.y = target_pose.pose.position.y + 0.5;

    ros::Rate loop_rate(50); //Frequency

    while (ros::ok())
    {
        current_pose = move_group.getCurrentPose();
        if (!xInit)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.x - target_pose.pose.position.x) < 0.01)
            {
                xInit = true; // Basically, check if we reached the desired position
                ROS_INFO("Reached The Initial Pose");
            }
        }
        else
        {
            if (angle > 2 * pi)
            {
                angle = 0;
            }
            //0.05 is a radius
            target_pose.pose.position.x = current_pose.pose.position.x + 0.05 * cos(angle);
            target_pose.pose.position.y = current_pose.pose.position.y + 0.05 * sin(angle);
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();

            angle = angle + 0.1;
        }
        loop_rate.sleep();
    }
    ROS_INFO("Done");
    ros::shutdown();
    return 0;
}



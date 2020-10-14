#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
// Main moveit libraries are included

bool xInit = false;
bool xPos = false;
bool yPos = false;

bool xNeg = false;
bool yNeg = false;
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

    target_pose.pose.position.x = target_pose.pose.position.x - 1.4;

    ros::Rate loop_rate(50); //Frequency

    while (ros::ok())
    {
        current_pose = move_group.getCurrentPose();
        if (!xInit && !xPos && !yPos && !xNeg && !yNeg)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.x - target_pose.pose.position.x) < 0.01)
            {
                xInit = true; // Basically, check if we reached the desired position
                target_pose.pose.position.x = target_pose.pose.position.x + 0.5;
                ROS_INFO("Reached The Initial Pose");
            }
        }
        if (xInit && !xPos && !yPos && !xNeg && !yNeg)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.x - target_pose.pose.position.x) < 0.01)
            {
                xPos = true; // Basically, check if we reached the desired position
                target_pose.pose.position.y = target_pose.pose.position.y - 0.5;
                ROS_INFO("Reached The Pos 1");
            }
        }
        if (xInit && xPos && !yPos && !xNeg && !yNeg)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.y - target_pose.pose.position.y) < 0.01)
            {
                yPos = true; // Basically, check if we reached the desired position
                target_pose.pose.position.x = target_pose.pose.position.x - 0.5;
                ROS_INFO("Reached The Pos 2");
            }
        }

        if (xInit && xPos && yPos && !xNeg && !yNeg)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.x - target_pose.pose.position.x) < 0.01)
            {
                xNeg = true; // Basically, check if we reached the desired position
                target_pose.pose.position.y = target_pose.pose.position.y + 0.5;

                ROS_INFO("Reached The Pos 3");
            }
        }

        if (xInit && xPos && yPos && xNeg && !yNeg)
        {
            move_group.setApproximateJointValueTarget(target_pose);
            move_group.move();
            if (abs(current_pose.pose.position.y - target_pose.pose.position.y) < 0.01)
            {
                yNeg = true; // Basically, check if we reached the desired position
                ROS_INFO("Reached The Pos 4");
                break;
            }
        }

        loop_rate.sleep();
    }
    ROS_INFO("Done");
    ros::shutdown();
    return 0;
}

/*geometry_msgs::PoseStamped GetTargetPose(geometry_msgs::PoseStamped target_pose)
{
    geometry_msgs::PoseStamped target;
    if (xPos && !yPos && !xNeg && !yNeg && !called2)
    {
        target = target_pose.pose.position.y;
    }
    else if (xPos && yPos && !xNeg && !yNeg)
    {
        target_pose.pose.position.x = target_pose.pose.position.x + 1;
        target = target_pose.pose.position.x;
    }
    else if (xPos && yPos && xNeg && !yNeg)
    {
        target_pose.pose.position.y = target_pose.pose.position.y + 1;
        target = target_pose.pose.position.y;
    }
    return target;
}*/

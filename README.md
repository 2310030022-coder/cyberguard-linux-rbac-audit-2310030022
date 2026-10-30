# Linux RBAC Security Automation

## Project Overview
A Linux role-based access control lab built using Kali Linux and Bash scripting.

The project demonstrates how Linux groups, file ownership, and permissions can restrict access to executable scripts.

## Technologies Used
- Kali Linux
- Bash Scripting
- Linux User and Group Management
- chmod and chown
- Security Auditing
- VirtualBox

## Project Features
- Created four Linux test users.
- Configured two security groups.
- Restricted script execution using group permissions.
- Tested authorized and unauthorized access.
- Automated eight access-control tests.
- Generated a security audit report.

## Access Control Policy

| Group | Users | Authorized Script |
|---|---|---|
| group1 | user1, user2 | group1script.sh |
| group2 | user3, user4 | group2script.sh |

## Test Results
- Total tests: 8
- Passed: 8
- Failed: 0

The tests verified that authorized group members could execute their scripts and unauthorized users were denied execution.

## How to Run
The scripts were tested on a Kali Linux virtual machine.

Create the necessary users and groups, assign group ownership and execute permissions, and run the audit script with administrator privileges.

## Learning Outcomes
- Linux access control
- Bash automation
- User and group administration
- File permission management
- Security verification

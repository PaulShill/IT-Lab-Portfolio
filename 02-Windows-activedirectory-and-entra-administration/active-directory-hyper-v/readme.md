Active Directory and Windows Server Lab

This project covers setting up a small Windows Server and Active Directory environment using Hyper-V on my Windows 11 Pro laptop.



The aim was to get some practical experience with Windows Server administration, Active Directory, DNS, user accounts and security groups.



What I Used

Windows 11 Pro

Hyper-V

Windows Server 2025 Standard Evaluation (Desktop Experience)

Active Directory Domain Services (AD DS)

DNS Server

Active Directory Users and Computers

Windows PowerShell

What I Did

Enabled Hyper-V and created an internal virtual switch for the lab network.

Configured a static IP address for the host’s virtual network adapter.

Created a Generation 2 virtual machine for Windows Server 2025.

Installed Windows Server and configured the computer name, network settings and time zone.

Installed the Active Directory Domain Services and DNS roles.

Promoted the server to a domain controller and created a new forest using the ad.local domain.

Checked the domain configuration, domain controller services and DNS records, including the LDAP service record.

Created a Company organisational unit with separate Users, Groups, Endpoints and Servers OUs.

Created eight domain user accounts, using a combination of Active Directory Users and Computers and PowerShell.

Used PowerShell arrays, hashtables and a foreach loop to generate temporary passwords and create multiple user accounts in one go.

Created two global security groups, Operations and IT, and added users to them.

Practised disabling and re-enabling a user account and resetting a password through Active Directory Users and Computers.

Why This Matters

This gave me practical experience of setting up an Active Directory domain from scratch and managing users and groups.



I also got to use both the graphical tools and PowerShell to carry out administrative tasks. It was useful to see how repetitive tasks, such as creating multiple user accounts, can be automated rather than completed individually.



Files Included

host-static-ip.png – Host virtual network adapter configuration.

server-config.png – Windows Server configuration.

domain-config.png – Active Directory domain configuration.

dns-srv-records.png – DNS LDAP service record verification.

ad-users.png – User accounts in Active Directory.

ad-users-all.png – Full list of domain user accounts.

aduc-user-creation.png – User account creation in Active Directory.

ad-groups.png – Security groups in Active Directory.

powershell-account-creation.png – PowerShell account creation.

powershell-user-creation.png – PowerShell commands used to create users.

powershell-user-list.png – PowerShell output confirming the created accounts.

session-01-transcript.txt – PowerShell transcript from the host configuration session.


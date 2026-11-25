\# Active Directory Administration – Windows Server Lab



\## Overview



This project builds on my initial Windows Server and Active Directory lab. The focus is on practical administration tasks, including file sharing, permissions, domain authentication, Group Policy and PowerShell.



The environment uses Windows Server 2025 and a Windows 11 Enterprise Evaluation client running as virtual machines in Hyper-V.



\## Lab 5 – File Shares and Permissions



Created a central data directory on the domain controller with separate folders for Operations and Security.



\- Created SMB shares for Operations and Security.

\- Configured share permissions for the relevant Active Directory security groups.

\- Configured NTFS permissions to provide the appropriate folder access.

\- Used PowerShell to create and manage SMB shares and permissions.

\- Successfully tested access to the Operations share using the Adolin Kholin domain account.



\## Lab 6 – Domain Client and Authentication



Built a Windows 11 Enterprise Evaluation virtual machine to act as a domain client.



\- Created and configured the CLIENT01 virtual machine.

\- Connected the client to the internal Hyper-V virtual network.

\- Configured a static IP address and pointed DNS to the domain controller.

\- Verified DNS resolution and located the domain controller using its LDAP service record.

\- Joined the client to the `ad.local` domain.

\- Successfully signed in using the domain Administrator account.



\## Lab 7 – Group Policy



Created and configured Group Policy settings to manage workstation security and domain password requirements.



\### Workstation Security Baseline



Created a GPO linked to the Endpoints OU, containing settings for:



\- Requiring Ctrl+Alt+Delete at interactive logon.

\- Disabling the Guest account.

\- Renaming the local Administrator account.

\- Hiding the last signed-in user.

\- Configuring a 15-minute workstation inactivity limit.



\### Domain Password and Account Lockout Policy



Configured the Default Domain Policy with:



\- Minimum password length: 12 characters.

\- Password history: 24 passwords.

\- Maximum password age: 42 days.

\- Minimum password age: 1 day.

\- Password complexity enabled.

\- Reversible password encryption disabled.

\- Account lockout threshold: 5 failed attempts.

\- Account lockout duration: 15 minutes.

\- Account lockout counter reset: 15 minutes.



Verified the domain password and lockout settings using PowerShell.



\*\*Remaining verification:\*\* Confirm the workstation security GPO applies successfully to CLIENT01 after placing its computer account in the Endpoints OU.



\## Environment



| Component | Configuration |

|---|---|

| Hypervisor | Hyper-V |

| Domain controller | DC01 |

| Domain | ad.local |

| Domain client | CLIENT01 |

| Server OS | Windows Server 2025 |

| Client OS | Windows 11 Enterprise Evaluation |

| Network | 192.168.50.0/24 |

| DC01 address | 192.168.50.10 |

| CLIENT01 address | 192.168.50.20 |



\## Skills Practised



\- Active Directory administration

\- SMB file sharing

\- NTFS and share permissions

\- User and group access management

\- Windows domain joining

\- DNS troubleshooting

\- Group Policy configuration

\- Password and account lockout policies

\- PowerShell administration

\- Hyper-V virtual machine management


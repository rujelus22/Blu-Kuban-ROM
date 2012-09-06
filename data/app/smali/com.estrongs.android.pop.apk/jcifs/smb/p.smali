.class public interface abstract Ljcifs/smb/p;
.super Ljava/lang/Object;


# static fields
.field public static final e_:[I

.field public static final f_:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x3e

    new-array v0, v1, [I

    fill-array-data v0, :array_17a

    sput-object v0, Ljcifs/smb/p;->e_:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "The operation completed successfully."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A device attached to the system is not functioning."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Incorrect function."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "The parameter is incorrect."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Invalid access to memory location."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The handle is invalid."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "The parameter is incorrect."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "More data is available."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "The data area passed to a system call is too small."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "The filename, directory name, or volume label syntax is incorrect."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Cannot create a file when that file already exists."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "The handle is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "The system cannot find the path specified."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "The process cannot access the file because it is being used by another process."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "There are currently no logon servers available to service the logon request."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "The specified user already exists."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "The specified user does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "The specified network password is not correct."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Logon failure: unknown user name or bad password."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Logon failure: user account restriction."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Logon failure: account logon time restriction violation."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Logon failure: user not allowed to log on to this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Logon failure: the specified account password has expired."

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Logon failure: account currently disabled."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "No mapping between account names and security IDs was done."

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "The security ID structure is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "The pipe state is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "No process is on the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "The pipe is being closed."

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Waiting for a process to open the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "A duplicate name exists on the network."

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "The specified network name is no longer available."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Network access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "The network name cannot be found."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "The specified domain did not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "The directory name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "The format of the specified computer name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "The pipe has been ended."

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "The specified local group does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Logon failure: the user has not been granted the requested logon type at this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "The trust relationship between the primary domain and the trusted domain failed."

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "The user must change his password before he logs on the first time."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "NT_STATUS_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "The referenced account is currently locked out and may not be logged on to."

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "The remote system is not reachable by the transport."

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/smb/p;->f_:[Ljava/lang/String;

    return-void

    :array_17a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0xc0t
        0x2t 0x0t 0x0t 0xc0t
        0x3t 0x0t 0x0t 0xc0t
        0x5t 0x0t 0x0t 0xc0t
        0x8t 0x0t 0x0t 0xc0t
        0xdt 0x0t 0x0t 0xc0t
        0xet 0x0t 0x0t 0xc0t
        0xft 0x0t 0x0t 0xc0t
        0x16t 0x0t 0x0t 0xc0t
        0x22t 0x0t 0x0t 0xc0t
        0x23t 0x0t 0x0t 0xc0t
        0x33t 0x0t 0x0t 0xc0t
        0x34t 0x0t 0x0t 0xc0t
        0x35t 0x0t 0x0t 0xc0t
        0x37t 0x0t 0x0t 0xc0t
        0x39t 0x0t 0x0t 0xc0t
        0x3at 0x0t 0x0t 0xc0t
        0x3bt 0x0t 0x0t 0xc0t
        0x43t 0x0t 0x0t 0xc0t
        0x56t 0x0t 0x0t 0xc0t
        0x5et 0x0t 0x0t 0xc0t
        0x63t 0x0t 0x0t 0xc0t
        0x64t 0x0t 0x0t 0xc0t
        0x6at 0x0t 0x0t 0xc0t
        0x6dt 0x0t 0x0t 0xc0t
        0x6et 0x0t 0x0t 0xc0t
        0x6ft 0x0t 0x0t 0xc0t
        0x70t 0x0t 0x0t 0xc0t
        0x71t 0x0t 0x0t 0xc0t
        0x72t 0x0t 0x0t 0xc0t
        0x73t 0x0t 0x0t 0xc0t
        0x78t 0x0t 0x0t 0xc0t
        0xabt 0x0t 0x0t 0xc0t
        0xact 0x0t 0x0t 0xc0t
        0xadt 0x0t 0x0t 0xc0t
        0xaet 0x0t 0x0t 0xc0t
        0xb0t 0x0t 0x0t 0xc0t
        0xb1t 0x0t 0x0t 0xc0t
        0xb3t 0x0t 0x0t 0xc0t
        0xbat 0x0t 0x0t 0xc0t
        0xbdt 0x0t 0x0t 0xc0t
        0xc9t 0x0t 0x0t 0xc0t
        0xcat 0x0t 0x0t 0xc0t
        0xcct 0x0t 0x0t 0xc0t
        0xd0t 0x0t 0x0t 0xc0t
        0xdat 0x0t 0x0t 0xc0t
        0xdft 0x0t 0x0t 0xc0t
        0x3t 0x1t 0x0t 0xc0t
        0x21t 0x1t 0x0t 0xc0t
        0x22t 0x1t 0x0t 0xc0t
        0x4bt 0x1t 0x0t 0xc0t
        0x51t 0x1t 0x0t 0xc0t
        0x5bt 0x1t 0x0t 0xc0t
        0x8bt 0x1t 0x0t 0xc0t
        0x8ct 0x1t 0x0t 0xc0t
        0x99t 0x1t 0x0t 0xc0t
        0x24t 0x2t 0x0t 0xc0t
        0x25t 0x2t 0x0t 0xc0t
        0x34t 0x2t 0x0t 0xc0t
        0x57t 0x2t 0x0t 0xc0t
        0x79t 0x2t 0x0t 0xc0t
    .end array-data
.end method

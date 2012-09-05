.class public interface abstract Ljcifs/smb/NtStatus;
.super Ljava/lang/Object;
.source "NtStatus.java"


# static fields
.field public static final NT_STATUS_ACCESS_DENIED:I = -0x3fffffde

.field public static final NT_STATUS_ACCESS_VIOLATION:I = -0x3ffffffb

.field public static final NT_STATUS_ACCOUNT_DISABLED:I = -0x3fffff8e

.field public static final NT_STATUS_ACCOUNT_LOCKED_OUT:I = -0x3ffffdcc

.field public static final NT_STATUS_ACCOUNT_RESTRICTION:I = -0x3fffff92

.field public static final NT_STATUS_BAD_NETWORK_NAME:I = -0x3fffff34

.field public static final NT_STATUS_BUFFER_TOO_SMALL:I = -0x3fffffdd

.field public static final NT_STATUS_CANNOT_DELETE:I = -0x3ffffedf

.field public static final NT_STATUS_CANT_ACCESS_DOMAIN_INFO:I = -0x3fffff26

.field public static final NT_STATUS_CODES:[I = null

.field public static final NT_STATUS_DELETE_PENDING:I = -0x3fffffaa

.field public static final NT_STATUS_DUPLICATE_NAME:I = -0x3fffff43

.field public static final NT_STATUS_FILE_IS_A_DIRECTORY:I = -0x3fffff46

.field public static final NT_STATUS_INSTANCE_NOT_AVAILABLE:I = -0x3fffff55

.field public static final NT_STATUS_INVALID_COMPUTER_NAME:I = -0x3ffffede

.field public static final NT_STATUS_INVALID_HANDLE:I = -0x3ffffff8

.field public static final NT_STATUS_INVALID_INFO_CLASS:I = -0x3ffffffd

.field public static final NT_STATUS_INVALID_LOGON_HOURS:I = -0x3fffff91

.field public static final NT_STATUS_INVALID_PARAMETER:I = -0x3ffffff3

.field public static final NT_STATUS_INVALID_PIPE_STATE:I = -0x3fffff53

.field public static final NT_STATUS_INVALID_SID:I = -0x3fffff88

.field public static final NT_STATUS_INVALID_WORKSTATION:I = -0x3fffff90

.field public static final NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED:I = -0x3ffffd87

.field public static final NT_STATUS_LOGON_FAILURE:I = -0x3fffff93

.field public static final NT_STATUS_LOGON_TYPE_NOT_GRANTED:I = -0x3ffffea5

.field public static final NT_STATUS_MESSAGES:[Ljava/lang/String; = null

.field public static final NT_STATUS_MORE_PROCESSING_REQUIRED:I = -0x3fffffea

.field public static final NT_STATUS_NETWORK_ACCESS_DENIED:I = -0x3fffff36

.field public static final NT_STATUS_NETWORK_NAME_DELETED:I = -0x3fffff37

.field public static final NT_STATUS_NOLOGON_WORKSTATION_TRUST_ACCOUNT:I = -0x3ffffe67

.field public static final NT_STATUS_NONE_MAPPED:I = -0x3fffff8d

.field public static final NT_STATUS_NOT_A_DIRECTORY:I = -0x3ffffefd

.field public static final NT_STATUS_NOT_FOUND:I = -0x3ffffddb

.field public static final NT_STATUS_NOT_IMPLEMENTED:I = -0x3ffffffe

.field public static final NT_STATUS_NO_LOGON_SERVERS:I = -0x3fffffa2

.field public static final NT_STATUS_NO_SUCH_ALIAS:I = -0x3ffffeaf

.field public static final NT_STATUS_NO_SUCH_DEVICE:I = -0x3ffffff2

.field public static final NT_STATUS_NO_SUCH_DOMAIN:I = -0x3fffff21

.field public static final NT_STATUS_NO_SUCH_FILE:I = -0x3ffffff1

.field public static final NT_STATUS_NO_SUCH_USER:I = -0x3fffff9c

.field public static final NT_STATUS_NO_TRUST_SAM_ACCOUNT:I = -0x3ffffe75

.field public static final NT_STATUS_OBJECT_NAME_COLLISION:I = -0x3fffffcb

.field public static final NT_STATUS_OBJECT_NAME_INVALID:I = -0x3fffffcd

.field public static final NT_STATUS_OBJECT_NAME_NOT_FOUND:I = -0x3fffffcc

.field public static final NT_STATUS_OBJECT_PATH_INVALID:I = -0x3fffffc7

.field public static final NT_STATUS_OBJECT_PATH_NOT_FOUND:I = -0x3fffffc6

.field public static final NT_STATUS_OBJECT_PATH_SYNTAX_BAD:I = -0x3fffffc5

.field public static final NT_STATUS_OK:I = 0x0

.field public static final NT_STATUS_PASSWORD_EXPIRED:I = -0x3fffff8f

.field public static final NT_STATUS_PASSWORD_MUST_CHANGE:I = -0x3ffffddc

.field public static final NT_STATUS_PATH_NOT_COVERED:I = -0x3ffffda9

.field public static final NT_STATUS_PIPE_BROKEN:I = -0x3ffffeb5

.field public static final NT_STATUS_PIPE_BUSY:I = -0x3fffff52

.field public static final NT_STATUS_PIPE_CLOSING:I = -0x3fffff4f

.field public static final NT_STATUS_PIPE_DISCONNECTED:I = -0x3fffff50

.field public static final NT_STATUS_PIPE_LISTENING:I = -0x3fffff4d

.field public static final NT_STATUS_PIPE_NOT_AVAILABLE:I = -0x3fffff54

.field public static final NT_STATUS_PORT_DISCONNECTED:I = -0x3fffffc9

.field public static final NT_STATUS_REQUEST_NOT_ACCEPTED:I = -0x3fffff30

.field public static final NT_STATUS_SHARING_VIOLATION:I = -0x3fffffbd

.field public static final NT_STATUS_TRUSTED_DOMAIN_FAILURE:I = -0x3ffffe74

.field public static final NT_STATUS_UNSUCCESSFUL:I = -0x3fffffff

.field public static final NT_STATUS_USER_EXISTS:I = -0x3fffff9d

.field public static final NT_STATUS_WRONG_PASSWORD:I = -0x3fffff96


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 90
    const/16 v0, 0x3e

    new-array v0, v0, [I

    .line 92
    const v1, -0x3fffffff

    aput v1, v0, v3

    .line 93
    const v1, -0x3ffffffe

    aput v1, v0, v4

    .line 94
    const v1, -0x3ffffffd

    aput v1, v0, v5

    .line 95
    const v1, -0x3ffffffb

    aput v1, v0, v6

    .line 96
    const v1, -0x3ffffff8

    aput v1, v0, v7

    const/4 v1, 0x6

    .line 97
    const v2, -0x3ffffff3

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 98
    const v2, -0x3ffffff2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 99
    const v2, -0x3ffffff1

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 100
    const v2, -0x3fffffea

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 101
    const v2, -0x3fffffde

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 102
    const v2, -0x3fffffdd

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 103
    const v2, -0x3fffffcd

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 104
    const v2, -0x3fffffcc

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 105
    const v2, -0x3fffffcb

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 106
    const v2, -0x3fffffc9

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 107
    const v2, -0x3fffffc7

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 108
    const v2, -0x3fffffc6

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 109
    const v2, -0x3fffffc5

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 110
    const v2, -0x3fffffbd

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 111
    const v2, -0x3fffffaa

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 112
    const v2, -0x3fffffa2

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 113
    const v2, -0x3fffff9d

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 114
    const v2, -0x3fffff9c

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 115
    const v2, -0x3fffff96

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 116
    const v2, -0x3fffff93

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 117
    const v2, -0x3fffff92

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 118
    const v2, -0x3fffff91

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 119
    const v2, -0x3fffff90

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 120
    const v2, -0x3fffff8f

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 121
    const v2, -0x3fffff8e

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 122
    const v2, -0x3fffff8d

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 123
    const v2, -0x3fffff88

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 124
    const v2, -0x3fffff55

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 125
    const v2, -0x3fffff54

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 126
    const v2, -0x3fffff53

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 127
    const v2, -0x3fffff52

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 128
    const v2, -0x3fffff50

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 129
    const v2, -0x3fffff4f

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 130
    const v2, -0x3fffff4d

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 131
    const v2, -0x3fffff46

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 132
    const v2, -0x3fffff43

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 133
    const v2, -0x3fffff37

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 134
    const v2, -0x3fffff36

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 135
    const v2, -0x3fffff34

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 136
    const v2, -0x3fffff30

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 137
    const v2, -0x3fffff26

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 138
    const v2, -0x3fffff21

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 139
    const v2, -0x3ffffefd

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 140
    const v2, -0x3ffffedf

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 141
    const v2, -0x3ffffede

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 142
    const v2, -0x3ffffeb5

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 143
    const v2, -0x3ffffeaf

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 144
    const v2, -0x3ffffea5

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 145
    const v2, -0x3ffffe75

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 146
    const v2, -0x3ffffe74

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 147
    const v2, -0x3ffffe67

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 148
    const v2, -0x3ffffddc

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 149
    const v2, -0x3ffffddb

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 150
    const v2, -0x3ffffdcc

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 151
    const v2, -0x3ffffda9

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 152
    const v2, -0x3ffffd87

    aput v2, v0, v1

    .line 90
    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    .line 155
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 156
    const-string v2, "The operation completed successfully."

    aput-object v2, v0, v1

    .line 157
    const-string v1, "A device attached to the system is not functioning."

    aput-object v1, v0, v3

    .line 158
    const-string v1, "Incorrect function."

    aput-object v1, v0, v4

    .line 159
    const-string v1, "The parameter is incorrect."

    aput-object v1, v0, v5

    .line 160
    const-string v1, "Invalid access to memory location."

    aput-object v1, v0, v6

    .line 161
    const-string v1, "The handle is invalid."

    aput-object v1, v0, v7

    const/4 v1, 0x6

    .line 162
    const-string v2, "The parameter is incorrect."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 163
    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 164
    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 165
    const-string v2, "More data is available."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 166
    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 167
    const-string v2, "The data area passed to a system call is too small."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 168
    const-string v2, "The filename, directory name, or volume label syntax is incorrect."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 169
    const-string v2, "The system cannot find the file specified."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 170
    const-string v2, "Cannot create a file when that file already exists."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 171
    const-string v2, "The handle is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 172
    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 173
    const-string v2, "The system cannot find the path specified."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 174
    const-string v2, "The specified path is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 175
    const-string v2, "The process cannot access the file because it is being used by another process."

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 176
    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 177
    const-string v2, "There are currently no logon servers available to service the logon request."

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 178
    const-string v2, "The specified user already exists."

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 179
    const-string v2, "The specified user does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 180
    const-string v2, "The specified network password is not correct."

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 181
    const-string v2, "Logon failure: unknown user name or bad password."

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 182
    const-string v2, "Logon failure: user account restriction."

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 183
    const-string v2, "Logon failure: account logon time restriction violation."

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 184
    const-string v2, "Logon failure: user not allowed to log on to this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 185
    const-string v2, "Logon failure: the specified account password has expired."

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 186
    const-string v2, "Logon failure: account currently disabled."

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 187
    const-string v2, "No mapping between account names and security IDs was done."

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 188
    const-string v2, "The security ID structure is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 189
    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 190
    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 191
    const-string v2, "The pipe state is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 192
    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 193
    const-string v2, "No process is on the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 194
    const-string v2, "The pipe is being closed."

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 195
    const-string v2, "Waiting for a process to open the other end of the pipe."

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 196
    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 197
    const-string v2, "A duplicate name exists on the network."

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 198
    const-string v2, "The specified network name is no longer available."

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 199
    const-string v2, "Network access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 200
    const-string v2, "The network name cannot be found."

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 201
    const-string v2, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 202
    const-string v2, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 203
    const-string v2, "The specified domain did not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 204
    const-string v2, "The directory name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 205
    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 206
    const-string v2, "The format of the specified computer name is invalid."

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 207
    const-string v2, "The pipe has been ended."

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 208
    const-string v2, "The specified local group does not exist."

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 209
    const-string v2, "Logon failure: the user has not been granted the requested logon type at this computer."

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 210
    const-string v2, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 211
    const-string v2, "The trust relationship between the primary domain and the trusted domain failed."

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 212
    const-string v2, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 213
    const-string v2, "The user must change his password before he logs on the first time."

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 214
    const-string v2, "NT_STATUS_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 215
    const-string v2, "The referenced account is currently locked out and may not be logged on to."

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 216
    const-string v2, "The remote system is not reachable by the transport."

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 217
    const-string v2, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    aput-object v2, v0, v1

    .line 155
    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    .line 21
    return-void
.end method

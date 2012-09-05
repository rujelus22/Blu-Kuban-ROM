.class public interface abstract Ljcifs/smb/WinError;
.super Ljava/lang/Object;
.source "WinError.java"


# static fields
.field public static final ERROR_ACCESS_DENIED:I = 0x5

.field public static final ERROR_BAD_PIPE:I = 0xe6

.field public static final ERROR_MORE_DATA:I = 0xea

.field public static final ERROR_NO_BROWSER_SERVERS_FOUND:I = 0x17e6

.field public static final ERROR_NO_DATA:I = 0xe8

.field public static final ERROR_PIPE_BUSY:I = 0xe7

.field public static final ERROR_PIPE_NOT_CONNECTED:I = 0xe9

.field public static final ERROR_REQ_NOT_ACCEP:I = 0x47

.field public static final ERROR_SUCCESS:I

.field public static final WINERR_CODES:[I

.field public static final WINERR_MESSAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 39
    aput v3, v0, v4

    .line 40
    const/16 v1, 0x47

    aput v1, v0, v5

    .line 41
    const/16 v1, 0xe6

    aput v1, v0, v6

    .line 42
    const/16 v1, 0xe7

    aput v1, v0, v7

    .line 43
    const/16 v1, 0xe8

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 44
    const/16 v2, 0xe9

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 45
    const/16 v2, 0xea

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 46
    const/16 v2, 0x17e6

    aput v2, v0, v1

    .line 37
    sput-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    const-string v2, "The operation completed successfully."

    aput-object v2, v0, v1

    .line 51
    const-string v1, "Access is denied."

    aput-object v1, v0, v4

    .line 52
    const-string v1, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    aput-object v1, v0, v5

    .line 53
    const-string v1, "The pipe state is invalid."

    aput-object v1, v0, v6

    .line 54
    const-string v1, "All pipe instances are busy."

    aput-object v1, v0, v7

    .line 55
    const-string v1, "The pipe is being closed."

    aput-object v1, v0, v3

    const/4 v1, 0x6

    .line 56
    const-string v2, "No process is on the other end of the pipe."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 57
    const-string v2, "More data is available."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 58
    const-string v2, "The list of servers for this workgroup is not currently available."

    aput-object v2, v0, v1

    .line 49
    sput-object v0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    .line 21
    return-void
.end method

.class public final enum Lcom/widevine/drmapi/android/WVStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/widevine/drmapi/android/WVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum AlreadyRegistered:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum AssetDBWasCorrupted:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum AssetExpired:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum BadMedia:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum BadURL:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum CantConnectToDrmServer:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum ClockTamperDetected:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum FileSystemError:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum HardwareIDAbsent:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum LicenseDenied:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum LicenseExpired:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum LicenseRequestLimitReached:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum LostConnection:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum NotLicensedByRegion:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum NotPlaying:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum NotRegistered:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum OK:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum PendingServerNotification:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

.field public static final enum TamperDetected:Lcom/widevine/drmapi/android/WVStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "NotInitialized"

    invoke-direct {v0, v1, v4}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "AlreadyInitialized"

    invoke-direct {v0, v1, v5}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "CantConnectToMediaServer"

    invoke-direct {v0, v1, v6}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "BadMedia"

    invoke-direct {v0, v1, v7}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "CantConnectToDrmServer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToDrmServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "NotLicensed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "LicenseDenied"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseDenied:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "LostConnection"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "LicenseExpired"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseExpired:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "AssetExpired"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->AssetExpired:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "NotLicensedByRegion"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensedByRegion:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "LicenseRequestLimitReached"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->LicenseRequestLimitReached:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "BadURL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadURL:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "FileNotPresent"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "NotRegistered"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotRegistered:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "AlreadyRegistered"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyRegistered:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "NotPlaying"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotPlaying:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "AlreadyPlaying"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "FileSystemError"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileSystemError:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "AssetDBWasCorrupted"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->AssetDBWasCorrupted:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "ClockTamperDetected"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->ClockTamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "MandatorySettingAbsent"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "SystemCallError"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "OutOfMemoryError"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "TamperDetected"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "PendingServerNotification"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->PendingServerNotification:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "HardwareIDAbsent"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->HardwareIDAbsent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "OutOfRange"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v0, Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "HeartbeatError"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/widevine/drmapi/android/WVStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/widevine/drmapi/android/WVStatus;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->NotInitialized:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToDrmServer:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->LicenseDenied:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->LicenseExpired:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AssetExpired:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->NotLicensedByRegion:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->LicenseRequestLimitReached:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->BadURL:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->NotRegistered:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AlreadyRegistered:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->NotPlaying:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->FileSystemError:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AssetDBWasCorrupted:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->ClockTamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->MandatorySettingAbsent:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->PendingServerNotification:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->HardwareIDAbsent:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/widevine/drmapi/android/WVStatus;->$VALUES:[Lcom/widevine/drmapi/android/WVStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 2

    const-class v0, Lcom/widevine/drmapi/android/WVStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/widevine/drmapi/android/WVStatus;

    return-object v0
.end method

.method public static values()[Lcom/widevine/drmapi/android/WVStatus;
    .registers 1

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->$VALUES:[Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0}, [Lcom/widevine/drmapi/android/WVStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/widevine/drmapi/android/WVStatus;

    return-object v0
.end method

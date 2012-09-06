.class public final enum Lorg/acra/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ANDROID_VERSION:Lorg/acra/q;

.field public static final enum APP_VERSION_CODE:Lorg/acra/q;

.field public static final enum APP_VERSION_NAME:Lorg/acra/q;

.field public static final enum AVAILABLE_MEM_SIZE:Lorg/acra/q;

.field public static final enum BRAND:Lorg/acra/q;

.field public static final enum BUILD:Lorg/acra/q;

.field public static final enum CRASH_CONFIGURATION:Lorg/acra/q;

.field public static final enum CUSTOM_DATA:Lorg/acra/q;

.field public static final enum DEVICE_FEATURES:Lorg/acra/q;

.field public static final enum DEVICE_ID:Lorg/acra/q;

.field public static final enum DISPLAY:Lorg/acra/q;

.field public static final enum DROPBOX:Lorg/acra/q;

.field public static final enum DUMPSYS_MEMINFO:Lorg/acra/q;

.field public static final enum ENVIRONMENT:Lorg/acra/q;

.field public static final enum EVENTSLOG:Lorg/acra/q;

.field public static final enum FILE_PATH:Lorg/acra/q;

.field public static final enum INITIAL_CONFIGURATION:Lorg/acra/q;

.field public static final enum INSTALLATION_ID:Lorg/acra/q;

.field public static final enum IS_SILENT:Lorg/acra/q;

.field public static final enum LOGCAT:Lorg/acra/q;

.field public static final enum PACKAGE_NAME:Lorg/acra/q;

.field public static final enum PHONE_MODEL:Lorg/acra/q;

.field public static final enum PRODUCT:Lorg/acra/q;

.field public static final enum RADIOLOG:Lorg/acra/q;

.field public static final enum REPORT_ID:Lorg/acra/q;

.field public static final enum SETTINGS_SECURE:Lorg/acra/q;

.field public static final enum SETTINGS_SYSTEM:Lorg/acra/q;

.field public static final enum SHARED_PREFERENCES:Lorg/acra/q;

.field public static final enum STACK_TRACE:Lorg/acra/q;

.field public static final enum TOTAL_MEM_SIZE:Lorg/acra/q;

.field public static final enum USER_APP_START_DATE:Lorg/acra/q;

.field public static final enum USER_COMMENT:Lorg/acra/q;

.field public static final enum USER_CRASH_DATE:Lorg/acra/q;

.field public static final enum USER_EMAIL:Lorg/acra/q;

.field private static final synthetic a:[Lorg/acra/q;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lorg/acra/q;

    const-string v1, "REPORT_ID"

    invoke-direct {v0, v1, v3}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->REPORT_ID:Lorg/acra/q;

    .line 36
    new-instance v0, Lorg/acra/q;

    const-string v1, "APP_VERSION_CODE"

    invoke-direct {v0, v1, v4}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;

    .line 40
    new-instance v0, Lorg/acra/q;

    const-string v1, "APP_VERSION_NAME"

    invoke-direct {v0, v1, v5}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    .line 44
    new-instance v0, Lorg/acra/q;

    const-string v1, "PACKAGE_NAME"

    invoke-direct {v0, v1, v6}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;

    .line 49
    new-instance v0, Lorg/acra/q;

    const-string v1, "FILE_PATH"

    invoke-direct {v0, v1, v7}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->FILE_PATH:Lorg/acra/q;

    .line 53
    new-instance v0, Lorg/acra/q;

    const-string v1, "PHONE_MODEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    .line 57
    new-instance v0, Lorg/acra/q;

    const-string v1, "ANDROID_VERSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    .line 61
    new-instance v0, Lorg/acra/q;

    const-string v1, "BUILD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->BUILD:Lorg/acra/q;

    .line 65
    new-instance v0, Lorg/acra/q;

    const-string v1, "BRAND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->BRAND:Lorg/acra/q;

    .line 69
    new-instance v0, Lorg/acra/q;

    const-string v1, "PRODUCT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->PRODUCT:Lorg/acra/q;

    .line 73
    new-instance v0, Lorg/acra/q;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->TOTAL_MEM_SIZE:Lorg/acra/q;

    .line 77
    new-instance v0, Lorg/acra/q;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->AVAILABLE_MEM_SIZE:Lorg/acra/q;

    .line 82
    new-instance v0, Lorg/acra/q;

    const-string v1, "CUSTOM_DATA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    .line 86
    new-instance v0, Lorg/acra/q;

    const-string v1, "STACK_TRACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;

    .line 91
    new-instance v0, Lorg/acra/q;

    const-string v1, "INITIAL_CONFIGURATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->INITIAL_CONFIGURATION:Lorg/acra/q;

    .line 96
    new-instance v0, Lorg/acra/q;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->CRASH_CONFIGURATION:Lorg/acra/q;

    .line 100
    new-instance v0, Lorg/acra/q;

    const-string v1, "DISPLAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->DISPLAY:Lorg/acra/q;

    .line 105
    new-instance v0, Lorg/acra/q;

    const-string v1, "USER_COMMENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    .line 109
    new-instance v0, Lorg/acra/q;

    const-string v1, "USER_APP_START_DATE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->USER_APP_START_DATE:Lorg/acra/q;

    .line 113
    new-instance v0, Lorg/acra/q;

    const-string v1, "USER_CRASH_DATE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->USER_CRASH_DATE:Lorg/acra/q;

    .line 117
    new-instance v0, Lorg/acra/q;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->DUMPSYS_MEMINFO:Lorg/acra/q;

    .line 122
    new-instance v0, Lorg/acra/q;

    const-string v1, "DROPBOX"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->DROPBOX:Lorg/acra/q;

    .line 126
    new-instance v0, Lorg/acra/q;

    const-string v1, "LOGCAT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->LOGCAT:Lorg/acra/q;

    .line 130
    new-instance v0, Lorg/acra/q;

    const-string v1, "EVENTSLOG"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->EVENTSLOG:Lorg/acra/q;

    .line 134
    new-instance v0, Lorg/acra/q;

    const-string v1, "RADIOLOG"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->RADIOLOG:Lorg/acra/q;

    .line 138
    new-instance v0, Lorg/acra/q;

    const-string v1, "IS_SILENT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    .line 142
    new-instance v0, Lorg/acra/q;

    const-string v1, "DEVICE_ID"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->DEVICE_ID:Lorg/acra/q;

    .line 147
    new-instance v0, Lorg/acra/q;

    const-string v1, "INSTALLATION_ID"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;

    .line 152
    new-instance v0, Lorg/acra/q;

    const-string v1, "USER_EMAIL"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    .line 156
    new-instance v0, Lorg/acra/q;

    const-string v1, "DEVICE_FEATURES"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->DEVICE_FEATURES:Lorg/acra/q;

    .line 160
    new-instance v0, Lorg/acra/q;

    const-string v1, "ENVIRONMENT"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->ENVIRONMENT:Lorg/acra/q;

    .line 164
    new-instance v0, Lorg/acra/q;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->SETTINGS_SYSTEM:Lorg/acra/q;

    .line 168
    new-instance v0, Lorg/acra/q;

    const-string v1, "SETTINGS_SECURE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->SETTINGS_SECURE:Lorg/acra/q;

    .line 172
    new-instance v0, Lorg/acra/q;

    const-string v1, "SHARED_PREFERENCES"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/acra/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/q;->SHARED_PREFERENCES:Lorg/acra/q;

    .line 26
    const/16 v0, 0x22

    new-array v0, v0, [Lorg/acra/q;

    sget-object v1, Lorg/acra/q;->REPORT_ID:Lorg/acra/q;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/q;->FILE_PATH:Lorg/acra/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/acra/q;->BUILD:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/acra/q;->BRAND:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/acra/q;->PRODUCT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/acra/q;->TOTAL_MEM_SIZE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/acra/q;->AVAILABLE_MEM_SIZE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/acra/q;->INITIAL_CONFIGURATION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/acra/q;->CRASH_CONFIGURATION:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/acra/q;->DISPLAY:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/acra/q;->USER_APP_START_DATE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/acra/q;->USER_CRASH_DATE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/acra/q;->DUMPSYS_MEMINFO:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/acra/q;->DROPBOX:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/acra/q;->LOGCAT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/acra/q;->EVENTSLOG:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/acra/q;->RADIOLOG:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/acra/q;->DEVICE_ID:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/acra/q;->DEVICE_FEATURES:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/acra/q;->ENVIRONMENT:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/acra/q;->SETTINGS_SYSTEM:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/acra/q;->SETTINGS_SECURE:Lorg/acra/q;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/acra/q;->SHARED_PREFERENCES:Lorg/acra/q;

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/q;->a:[Lorg/acra/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/q;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lorg/acra/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/q;

    return-object v0
.end method

.method public static values()[Lorg/acra/q;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lorg/acra/q;->a:[Lorg/acra/q;

    invoke-virtual {v0}, [Lorg/acra/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/q;

    return-object v0
.end method

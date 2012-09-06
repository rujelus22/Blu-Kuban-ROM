.class public final enum Lcom/google/android/youtube/core/utils/Util$StartupType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/utils/Util$StartupType;

.field public static final enum FIRST_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

.field public static final enum NORMAL_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

.field public static final enum UPGRADE_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/android/youtube/core/utils/Util$StartupType;

    const-string v1, "NORMAL_STARTUP"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/utils/Util$StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->NORMAL_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    .line 73
    new-instance v0, Lcom/google/android/youtube/core/utils/Util$StartupType;

    const-string v1, "FIRST_STARTUP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/utils/Util$StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->FIRST_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    .line 74
    new-instance v0, Lcom/google/android/youtube/core/utils/Util$StartupType;

    const-string v1, "UPGRADE_STARTUP"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/utils/Util$StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->UPGRADE_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/utils/Util$StartupType;

    sget-object v1, Lcom/google/android/youtube/core/utils/Util$StartupType;->NORMAL_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/utils/Util$StartupType;->FIRST_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/utils/Util$StartupType;->UPGRADE_STARTUP:Lcom/google/android/youtube/core/utils/Util$StartupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->$VALUES:[Lcom/google/android/youtube/core/utils/Util$StartupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/utils/Util$StartupType;
    .registers 2
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/google/android/youtube/core/utils/Util$StartupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Util$StartupType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/utils/Util$StartupType;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/youtube/core/utils/Util$StartupType;->$VALUES:[Lcom/google/android/youtube/core/utils/Util$StartupType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/utils/Util$StartupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/utils/Util$StartupType;

    return-object v0
.end method

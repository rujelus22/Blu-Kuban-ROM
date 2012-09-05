.class public final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum HANGUP:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum VIDEO_CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 108
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 109
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 110
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "HANGUP"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->HANGUP:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 111
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "VIDEO_CONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 112
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "VIDEO_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->HANGUP:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    .registers 2
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-object v0
.end method

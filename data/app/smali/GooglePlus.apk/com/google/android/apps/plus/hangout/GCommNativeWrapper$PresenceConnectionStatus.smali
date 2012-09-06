.class final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
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

.field public static final enum JOINING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 137
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 138
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "JOINING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->JOINING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 139
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->JOINING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    aput-object v1, v0, v5

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 135
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    return-object v0
.end method

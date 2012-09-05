.class public final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum FATAL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum INCONSISTENT_STATE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "FATAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->FATAL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "INCONSISTENT_STATE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->INCONSISTENT_STATE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 77
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 78
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "AUTHENTICATION"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 79
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "AUDIO_VIDEO_SESSION"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 85
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->FATAL:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->INCONSISTENT_STATE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUDIO_VIDEO_SESSION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->UNKNOWN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    .registers 2
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    return-object v0
.end method

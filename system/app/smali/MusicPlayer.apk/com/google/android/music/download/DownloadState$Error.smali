.class public final enum Lcom/google/android/music/download/DownloadState$Error;
.super Ljava/lang/Enum;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/DownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/download/DownloadState$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum ACCOUNT_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum MAX_NUMBER_OF_RETRIES_REACHED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum NOT_RETRIABLE:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum NO_SPACE:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum SERVER_SPECIFIED_WAIT_TOO_LONG:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum STREAMING_NOT_ENABLED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum UNKNOWN:Lcom/google/android/music/download/DownloadState$Error;

.field public static final enum UNSUPPORTED_AUDIO_TYPE:Lcom/google/android/music/download/DownloadState$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->UNKNOWN:Lcom/google/android/music/download/DownloadState$Error;

    .line 27
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "NO_SPACE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->NO_SPACE:Lcom/google/android/music/download/DownloadState$Error;

    .line 28
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "STREAMING_NOT_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->STREAMING_NOT_ENABLED:Lcom/google/android/music/download/DownloadState$Error;

    .line 29
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "ACCOUNT_NOT_AUTHORIZED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->ACCOUNT_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

    .line 30
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "DEVICE_NOT_AUTHORIZED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

    .line 31
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "ANOTHER_STREAM_BEING_PLAYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/download/DownloadState$Error;

    .line 32
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "STREAM_RATE_LIMIT_REACHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/download/DownloadState$Error;

    .line 33
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "UNSUPPORTED_AUDIO_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->UNSUPPORTED_AUDIO_TYPE:Lcom/google/android/music/download/DownloadState$Error;

    .line 34
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "MAX_NUMBER_OF_RETRIES_REACHED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->MAX_NUMBER_OF_RETRIES_REACHED:Lcom/google/android/music/download/DownloadState$Error;

    .line 35
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "SERVER_SPECIFIED_WAIT_TOO_LONG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->SERVER_SPECIFIED_WAIT_TOO_LONG:Lcom/google/android/music/download/DownloadState$Error;

    .line 36
    new-instance v0, Lcom/google/android/music/download/DownloadState$Error;

    const-string v1, "NOT_RETRIABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->NOT_RETRIABLE:Lcom/google/android/music/download/DownloadState$Error;

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/music/download/DownloadState$Error;

    sget-object v1, Lcom/google/android/music/download/DownloadState$Error;->UNKNOWN:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/download/DownloadState$Error;->NO_SPACE:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/download/DownloadState$Error;->STREAMING_NOT_ENABLED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/download/DownloadState$Error;->ACCOUNT_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/music/download/DownloadState$Error;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->UNSUPPORTED_AUDIO_TYPE:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->MAX_NUMBER_OF_RETRIES_REACHED:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->SERVER_SPECIFIED_WAIT_TOO_LONG:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/music/download/DownloadState$Error;->NOT_RETRIABLE:Lcom/google/android/music/download/DownloadState$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/download/DownloadState$Error;->$VALUES:[Lcom/google/android/music/download/DownloadState$Error;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/download/DownloadState$Error;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/google/android/music/download/DownloadState$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadState$Error;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/download/DownloadState$Error;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/music/download/DownloadState$Error;->$VALUES:[Lcom/google/android/music/download/DownloadState$Error;

    invoke-virtual {v0}, [Lcom/google/android/music/download/DownloadState$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/download/DownloadState$Error;

    return-object v0
.end method

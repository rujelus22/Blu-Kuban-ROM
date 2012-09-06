.class public final enum Lcom/google/android/music/download/DownloadState$State;
.super Ljava/lang/Enum;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/DownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/download/DownloadState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/download/DownloadState$State;

.field public static final enum CANCELED:Lcom/google/android/music/download/DownloadState$State;

.field public static final enum COMPLETED:Lcom/google/android/music/download/DownloadState$State;

.field public static final enum DOWNLOADING:Lcom/google/android/music/download/DownloadState$State;

.field public static final enum FAILED:Lcom/google/android/music/download/DownloadState$State;

.field public static final enum NOT_STARTED:Lcom/google/android/music/download/DownloadState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/android/music/download/DownloadState$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/download/DownloadState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->NOT_STARTED:Lcom/google/android/music/download/DownloadState$State;

    .line 16
    new-instance v0, Lcom/google/android/music/download/DownloadState$State;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/download/DownloadState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->DOWNLOADING:Lcom/google/android/music/download/DownloadState$State;

    .line 17
    new-instance v0, Lcom/google/android/music/download/DownloadState$State;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/download/DownloadState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->COMPLETED:Lcom/google/android/music/download/DownloadState$State;

    .line 18
    new-instance v0, Lcom/google/android/music/download/DownloadState$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/download/DownloadState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->FAILED:Lcom/google/android/music/download/DownloadState$State;

    .line 19
    new-instance v0, Lcom/google/android/music/download/DownloadState$State;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/download/DownloadState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->CANCELED:Lcom/google/android/music/download/DownloadState$State;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/download/DownloadState$State;

    sget-object v1, Lcom/google/android/music/download/DownloadState$State;->NOT_STARTED:Lcom/google/android/music/download/DownloadState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/download/DownloadState$State;->DOWNLOADING:Lcom/google/android/music/download/DownloadState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/download/DownloadState$State;->COMPLETED:Lcom/google/android/music/download/DownloadState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/download/DownloadState$State;->FAILED:Lcom/google/android/music/download/DownloadState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/download/DownloadState$State;->CANCELED:Lcom/google/android/music/download/DownloadState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/download/DownloadState$State;->$VALUES:[Lcom/google/android/music/download/DownloadState$State;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/download/DownloadState$State;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/music/download/DownloadState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/download/DownloadState$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/download/DownloadState$State;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/music/download/DownloadState$State;->$VALUES:[Lcom/google/android/music/download/DownloadState$State;

    invoke-virtual {v0}, [Lcom/google/android/music/download/DownloadState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/download/DownloadState$State;

    return-object v0
.end method

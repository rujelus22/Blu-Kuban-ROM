.class public final enum Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field public static final enum COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field public static final enum DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field public static final enum FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field public static final enum NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 73
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 74
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 75
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->$VALUES:[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->$VALUES:[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0}, [Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object v0
.end method


# virtual methods
.method public isFinishedStatus()Z
    .registers 2

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

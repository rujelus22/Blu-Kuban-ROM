.class public Lcom/google/android/music/sync/common/SyncHttpException;
.super Ljava/lang/Exception;
.source "SyncHttpException.java"


# instance fields
.field private mRetryAfter:J

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "message"
    .parameter "statusCode"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 24
    iput p2, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 6
    .parameter "message"
    .parameter "cause"
    .parameter "statusCode"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 19
    iput p3, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mStatusCode:I

    return v0
.end method

.method public setRetryAfter(J)V
    .registers 3
    .parameter "retryAfter"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/google/android/music/sync/common/SyncHttpException;->mRetryAfter:J

    .line 37
    return-void
.end method

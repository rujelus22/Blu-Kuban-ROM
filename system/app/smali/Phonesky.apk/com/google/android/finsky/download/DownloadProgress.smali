.class public Lcom/google/android/finsky/download/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"


# instance fields
.field public final bytesCompleted:J

.field public final bytesTotal:J

.field final mStatusId:I


# direct methods
.method public constructor <init>(JJI)V
    .registers 6
    .parameter "bytesCompleted"
    .parameter "bytesTotal"
    .parameter "statusId"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    .line 27
    iput-wide p3, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    .line 28
    iput p5, p0, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_21

    instance-of v2, p1, Lcom/google/android/finsky/download/DownloadProgress;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/google/android/finsky/download/DownloadProgress;

    .line 40
    .local v0, other:Lcom/google/android/finsky/download/DownloadProgress;
    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iget-wide v4, v0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    iget-wide v4, v0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iget v2, p0, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    iget v3, v0, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    .line 43
    .end local v0           #other:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->bytesTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
.class public Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
.super Ljava/lang/Object;
.source "AttachmentStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/AttachmentStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final conversationId:J

.field public downloadStatus:I

.field public downloadedSize:I

.field public final fileName:Ljava/lang/String;

.field public final messageId:J

.field public final partId:Ljava/lang/String;

.field public final saveToSd:Z

.field public size:I

.field public final state:I

.field public final status:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;ZLjava/lang/String;I)V
    .registers 10
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "saveToSd"
    .parameter "fileName"
    .parameter "status"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->conversationId:J

    .line 67
    iput-wide p3, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    .line 68
    iput-object p5, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    .line 69
    iput-boolean p6, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->saveToSd:Z

    .line 70
    iput-object p7, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->fileName:Ljava/lang/String;

    .line 71
    iput p8, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    .line 73
    invoke-static {p8}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p7}, Lcom/google/android/gm/provider/AttachmentManager;->isDownloadStillPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 75
    if-eqz p6, :cond_21

    const/4 v0, 0x3

    :goto_1e
    iput v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    .line 81
    :goto_20
    return-void

    .line 75
    :cond_21
    const/4 v0, 0x2

    goto :goto_1e

    .line 76
    :cond_23
    invoke-static {p8}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusRunning(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    goto :goto_20

    .line 79
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    goto :goto_20
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p1, p0, :cond_5

    .line 94
    :cond_4
    :goto_4
    return v1

    .line 89
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 90
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    .line 94
    .local v0, other:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    iget-wide v3, v0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    iget-wide v5, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isDownloadedToCache()Z
    .registers 3

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDownloadedToSd()Z
    .registers 3

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDownloading()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    if-ne v1, v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isStatusPending()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->isStatusRunning()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isStatusError()Z
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusError(I)Z

    move-result v0

    return v0
.end method

.method public isStatusPending()Z
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusPending(I)Z

    move-result v0

    return v0
.end method

.method public isStatusRunning()Z
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusRunning(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isStatusSuccess()Z
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    invoke-static {v0}, Lcom/google/android/gm/provider/AttachmentManager;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result: conv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " part="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->partId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressFilterOutputStream"
.end annotation


# instance fields
.field private progress:J

.field private final target:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/UploadTask;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/OutputStream;J)V
    .registers 6
    .parameter
    .parameter "target"
    .parameter "initialProgress"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    .line 541
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 542
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    .line 543
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 544
    return-void
.end method

.method private maybeNotifyProgress(JJ)V
    .registers 9
    .parameter "oldProgress"
    .parameter "newProgress"

    .prologue
    const-wide/32 v2, 0x19000

    .line 562
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    #getter for: Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$100(Lcom/google/android/youtube/core/transfer/UploadTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 563
    :try_start_a
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    #setter for: Lcom/google/android/youtube/core/transfer/UploadTask;->numBytesUploaded:J
    invoke-static {v0, p3, p4}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$202(Lcom/google/android/youtube/core/transfer/UploadTask;J)J

    .line 564
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2a

    .line 565
    div-long v0, p3, v2

    div-long v2, p1, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    #getter for: Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$400(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    #getter for: Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$300(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1, p3, p4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 568
    :cond_29
    return-void

    .line 564
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 557
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 558
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->maybeNotifyProgress(JJ)V

    .line 559
    return-void
.end method

.method public write([BII)V
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->target:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 549
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 550
    .local v0, oldProgress:J
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    .line 551
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->progress:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;->maybeNotifyProgress(JJ)V

    .line 552
    return-void
.end method

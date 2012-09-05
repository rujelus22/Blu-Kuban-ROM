.class Lcom/google/android/youtube/core/player/AwfulPlayer$4;
.super Ljava/lang/Thread;
.source "AwfulPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;->loadSeekOffsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 442
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$500(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$600(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/player/mp4/Mp4Util;->getOffsetMap(Ljava/io/InputStream;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 445
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$800(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    const/16 v4, 0x2710

    #calls: Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J
    invoke-static {v3, v4}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$700(Lcom/google/android/youtube/core/player/AwfulPlayer;I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 446
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$900(Lcom/google/android/youtube/core/player/AwfulPlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v4}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$800(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6b

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded offsets, will prepare at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v3}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$800(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_61} :catch_7b

    .line 457
    :goto_61
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1100(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 459
    .end local v1           #is:Ljava/io/InputStream;
    :goto_6a
    return-void

    .line 449
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_6b
    :try_start_6b
    const-string v2, "loaded offsets"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1000(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7a} :catch_7b

    goto :goto_61

    .line 452
    .end local v1           #is:Ljava/io/InputStream;
    :catch_7b
    move-exception v0

    .line 453
    .local v0, e:Ljava/io/IOException;
    :try_start_7c
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$600(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 454
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$800(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    const-wide/32 v3, 0x40000

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 455
    const-string v2, "failed to read offsets, will retry"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7c .. :try_end_97} :catchall_a1

    .line 457
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1100(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6a

    .end local v0           #e:Ljava/io/IOException;
    :catchall_a1
    move-exception v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    #getter for: Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/android/youtube/core/player/AwfulPlayer;->access$1100(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method

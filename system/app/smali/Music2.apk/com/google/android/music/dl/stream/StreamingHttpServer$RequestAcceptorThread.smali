.class Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;
.super Ljava/lang/Thread;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/stream/StreamingHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAcceptorThread"
.end annotation


# instance fields
.field private mAllowedToStream:Lcom/google/android/music/dl/ContentIdentifier;

.field final synthetic this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 126
    const-string v0, "RequestAcceptorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:Lcom/google/android/music/dl/ContentIdentifier;

    .line 127
    return-void
.end method


# virtual methods
.method public notifyNewAllowedStream(Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 6
    .parameter "songId"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 163
    :try_start_7
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:Lcom/google/android/music/dl/ContentIdentifier;

    .line 164
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    .local v1, workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 167
    .local v0, worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 169
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->shutdown()V

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 173
    .end local v0           #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    .end local v1           #workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v2

    .restart local v1       #workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :cond_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 174
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 133
    .local v3, socket:Ljava/net/Socket;
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$000(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 134
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v6, v6, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 139
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_69

    .line 140
    :try_start_18
    new-instance v4, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {v4, v6, v3, v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;-><init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Ljava/net/Socket;Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 141
    .local v4, worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v4}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->start()V

    .line 144
    sget-boolean v6, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v6, :cond_98

    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_98

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v2, log:Ljava/lang/StringBuilder;
    const-string v6, "More than 1 worker running: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 148
    .local v5, wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v5}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 152
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #log:Ljava/lang/StringBuilder;
    .end local v4           #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    .end local v5           #wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :catchall_66
    move-exception v6

    monitor-exit v7
    :try_end_68
    .catchall {:try_start_18 .. :try_end_68} :catchall_66

    :try_start_68
    throw v6
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_69

    .line 154
    :catch_69
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z
    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$000(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 156
    const-string v6, "Streamer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestAcceptorThread exited abnormally: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0           #e:Ljava/io/IOException;
    :cond_8e
    return-void

    .line 150
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #log:Ljava/lang/StringBuilder;
    .restart local v4       #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :cond_8f
    :try_start_8f
    const-string v6, "Streamer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #log:Ljava/lang/StringBuilder;
    :cond_98
    monitor-exit v7
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_66

    goto/16 :goto_1
.end method

.class Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/PanoramaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCacheRequest"
.end annotation


# instance fields
.field private final mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

.field private final mPersistentKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/street/PanoramaManager;


# direct methods
.method public constructor <init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "listener"
    .parameter "persistentKey"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    .line 88
    iput-object p3, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    .line 89
    const-string v0, "persistentKey"

    #calls: Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {p3, v0}, Lcom/google/android/street/PanoramaManager;->access$000(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, name:Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    const/4 v9, 0x0

    .line 106
    .local v9, interrupted:Z
    :try_start_a
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    #getter for: Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;
    invoke-static {v0}, Lcom/google/android/street/PanoramaManager;->access$100(Lcom/google/android/street/PanoramaManager;)Lcom/google/android/street/HttpCache;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    const-wide/32 v5, 0x6ddd00

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/HttpCache;->read(Ljava/lang/String;ZLcom/google/android/street/HttpCache$Aborter;Ljava/lang/String;J)[B

    move-result-object v7

    .line 108
    .local v7, data:[B
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_21} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_21} :catch_4e

    .line 110
    .local v10, is:Ljava/io/InputStream;
    :try_start_21
    invoke-static {v10}, Lcom/google/android/street/PanoramaConfig;->parseMetadataProto(Ljava/io/InputStream;)Lcom/google/android/street/PanoramaConfig;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_35

    move-result-object v12

    .line 112
    :try_start_25
    invoke-static {v10}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_4e

    .line 128
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    invoke-interface {v0, v9, v12}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    #calls: Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/street/PanoramaManager;->access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V

    .line 135
    .end local v7           #data:[B
    .end local v10           #is:Ljava/io/InputStream;
    :goto_34
    return-void

    .line 112
    .restart local v7       #data:[B
    .restart local v10       #is:Ljava/io/InputStream;
    :catchall_35
    move-exception v0

    :try_start_36
    invoke-static {v10}, Lcom/google/android/street/HttpCache;->closeStream(Ljava/io/Closeable;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_3a
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3a} :catch_4e

    .line 117
    .end local v7           #data:[B
    .end local v10           #is:Ljava/io/InputStream;
    :catch_3a
    move-exception v0

    move-object v8, v0

    .line 118
    .local v8, e:Ljava/io/IOException;
    :try_start_3c
    const-string v0, "PM failed to load config"

    invoke-static {v0, v8}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6b

    .line 128
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    invoke-interface {v0, v9, v12}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    #calls: Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/street/PanoramaManager;->access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V

    goto :goto_34

    .line 119
    .end local v8           #e:Ljava/io/IOException;
    :catch_4e
    move-exception v0

    move-object v8, v0

    .line 120
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_50
    const-string v0, "PM was interrupted loading config"

    invoke-static {v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_6b

    .line 125
    const/4 v9, 0x1

    .line 126
    const/4 v12, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    invoke-interface {v0, v9, v12}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    #calls: Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/street/PanoramaManager;->access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V

    goto :goto_34

    .line 128
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_6b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mListener:Lcom/google/android/street/PanoramaManager$ConfigFetchListener;

    invoke-interface {v1, v9, v12}, Lcom/google/android/street/PanoramaManager$ConfigFetchListener;->postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->this$0:Lcom/google/android/street/PanoramaManager;

    iget-object v2, p0, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;->mPersistentKey:Ljava/lang/String;

    #calls: Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/google/android/street/PanoramaManager;->access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V

    throw v0
.end method

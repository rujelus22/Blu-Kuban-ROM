.class final Lcom/google/android/ytremote/backend/browserchannel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/f;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/e;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/e;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;

    invoke-direct {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public final a(I)V
    .registers 7
    .parameter

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/e;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Lcom/google/net/async/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/net/async/l;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 551
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    .line 553
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/e;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;

    invoke-direct {v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    .line 557
    :goto_28
    return-void

    .line 554
    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public final a(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 544
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/e;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;

    invoke-direct {v1, p1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

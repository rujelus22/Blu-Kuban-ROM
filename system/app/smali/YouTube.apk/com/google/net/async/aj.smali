.class public final Lcom/google/net/async/aj;
.super Ljava/nio/channels/SelectableChannel;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field protected a:Ljava/nio/channels/SocketChannel;


# direct methods
.method private constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    .line 39
    return-void
.end method

.method public static a()Lcom/google/net/async/aj;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/net/async/aj;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/net/async/aj;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/net/SocketAddress;)Z
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final blockingLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    return v0
.end method

.method protected final implCloseChannel()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 48
    return-void
.end method

.method public final isBlocking()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public final isRegistered()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public final keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public final validOps()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/net/async/aj;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->validOps()I

    move-result v0

    return v0
.end method

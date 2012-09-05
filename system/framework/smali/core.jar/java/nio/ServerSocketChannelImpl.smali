.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/nio/ServerSocketChannelImpl;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .line 51
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->getImpl$()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 52
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ServerSocketChannelImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return p1
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_c

    .line 60
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 62
    :cond_c
    iget-boolean v2, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    if-nez v2, :cond_16

    .line 63
    new-instance v2, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v2

    .line 67
    :cond_16
    new-instance v1, Ljava/nio/SocketChannelImpl;

    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 68
    .local v1, result:Ljava/nio/SocketChannelImpl;
    const/4 v0, 0x0

    .line 70
    .local v0, connected:Z
    :try_start_21
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->begin()V

    .line 71
    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_57

    .line 72
    :try_start_27
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_54

    .line 75
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v2, v1}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_31} :catch_49

    .line 83
    :goto_31
    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_51

    .line 84
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_54

    .line 86
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    .line 88
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_64

    .end local v1           #result:Ljava/nio/SocketChannelImpl;
    :goto_48
    return-object v1

    .line 78
    .restart local v1       #result:Ljava/nio/SocketChannelImpl;
    :catch_49
    move-exception v2

    .line 82
    :try_start_4a
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_31

    .line 83
    :catchall_51
    move-exception v2

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_51

    :try_start_53
    throw v2

    .line 84
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_54

    :try_start_56
    throw v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 86
    :catchall_57
    move-exception v2

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/ServerSocketChannelImpl;->end(Z)V

    throw v2

    .line 88
    :cond_64
    const/4 v1, 0x0

    goto :goto_48
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 99
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 101
    :cond_e
    monitor-exit p0

    return-void

    .line 98
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 4
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_5
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public socket()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    return-object v0
.end method

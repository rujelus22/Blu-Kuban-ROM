.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static f:Ljava/util/Vector;

.field private static g:Ljava/net/InetAddress;


# instance fields
.field a:Lcom/jcraft/jsch/Session;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field e:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/InetAddress;

    :try_start_a
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method static a(Lcom/jcraft/jsch/Session;)V
    .registers 8

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    monitor-enter v5

    :try_start_4
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/PortWatcher;

    move v4, v3

    move v2, v3

    :goto_e
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_31

    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/PortWatcher;

    check-cast v0, Lcom/jcraft/jsch/PortWatcher;

    iget-object v1, v0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    if-ne v1, p0, :cond_43

    invoke-virtual {v0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v6, v2

    move v0, v1

    :goto_2c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_e

    :cond_31
    move v0, v3

    :goto_32
    if-ge v0, v2, :cond_3e

    aget-object v1, v6, v0

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3e
    monitor-exit v5

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    move v0, v2

    goto :goto_2c
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;

    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public run()V
    .registers 5

    iput-object p0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b()V

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k(I)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c()V

    iget v0, v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;->p:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_50

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    goto :goto_2

    :catch_50
    move-exception v0

    :cond_51
    invoke-virtual {p0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    return-void
.end method

.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field static t:Ljava/util/Vector;


# instance fields
.field u:Lcom/jcraft/jsch/SocketFactory;

.field v:Ljava/lang/String;

.field w:I

.field x:I

.field private y:Ljava/net/Socket;

.field private z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/high16 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->e(I)V

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o:Z

    return-void
.end method

.method static a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .registers 8

    const/4 v0, 0x0

    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v4

    const/4 v2, 0x0

    move v3, v0

    :goto_6
    :try_start_6
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_77

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eq v1, p0, :cond_21

    :cond_1d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_21
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_1d

    :goto_2c
    if-nez v0, :cond_30

    monitor-exit v4

    :goto_2f
    return-void

    :cond_30
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-nez p1, :cond_75

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    :goto_3c
    if-nez v0, :cond_40

    const-string v0, "0.0.0.0"

    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_72

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_4d
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    const-string v3, "cancel-tcpip-forward"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6f} :catch_70

    goto :goto_2f

    :catch_70
    move-exception v0

    goto :goto_2f

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0

    :cond_75
    move-object v0, p1

    goto :goto_3c

    :cond_77
    move-object v0, v2

    goto :goto_2c
.end method

.method static a(Lcom/jcraft/jsch/Session;I)[Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    sget-object v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v3

    move v2, v0

    :goto_5
    :try_start_5
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2d

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eq v1, p0, :cond_20

    :cond_1c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_20
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1c

    monitor-exit v3

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_2c

    :catchall_30
    move-exception v0

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v0
.end method

.method static b(Lcom/jcraft/jsch/Session;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method static c(Lcom/jcraft/jsch/Session;)V
    .registers 9

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v5

    :try_start_4
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [I

    move v4, v3

    move v2, v3

    :goto_e
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_38

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-ne v1, p0, :cond_48

    add-int/lit8 v1, v2, 0x1

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v2

    move v0, v1

    :goto_33
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_e

    :cond_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_44

    move v0, v3

    :goto_3a
    if-ge v0, v2, :cond_47

    aget v1, v6, v0

    invoke-static {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->b(Lcom/jcraft/jsch/Session;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    return-void

    :cond_48
    move v0, v2

    goto :goto_33
.end method


# virtual methods
.method a(Lcom/jcraft/jsch/Buffer;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->g(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    const/4 v0, 0x0

    :try_start_24
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;
    :try_end_27
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_24 .. :try_end_27} :catch_48

    move-result-object v0

    move-object v2, v0

    :goto_29
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v5

    move v3, v1

    :goto_2d
    :try_start_2d
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_79

    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eq v1, v2, :cond_4b

    :cond_44
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2d

    :catch_48
    move-exception v2

    move-object v2, v0

    goto :goto_29

    :cond_4b
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_44

    iput v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_6b

    const/4 v1, 0x3

    aget-object v1, v0, v1

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7f

    :cond_6b
    const/4 v1, -0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    :goto_6e
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_79

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/jcraft/jsch/SocketFactory;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    :cond_79
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    if-nez v0, :cond_7d

    :cond_7d
    monitor-exit v5

    return-void

    :cond_7f
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    goto :goto_6e

    :catchall_8b
    move-exception v0

    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_2d .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method public run()V
    .registers 7

    const/4 v4, 0x1

    :try_start_1
    iget v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_91

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v3, 0x8000

    invoke-direct {v2, p0, v0, v3}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;Z)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->a(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:I

    invoke-static {v0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(Lcom/jcraft/jsch/Session;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->a([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_50
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->m()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_be

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->k:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_65
    :try_start_65
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->k:Ljava/lang/Thread;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/16 v4, 0xe

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xe

    add-int/lit8 v5, v5, -0x20

    add-int/lit8 v5, v5, -0x14

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_d3

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->g()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8d} :catch_f3

    :cond_8d
    :goto_8d
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j()V

    :goto_90
    return-void

    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    :goto_9f
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_bd} :catch_be

    goto :goto_50

    :catch_be
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->i(I)V

    iput-boolean v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j()V

    goto :goto_90

    :cond_c8
    :try_start_c8
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_be

    move-result-object v0

    goto :goto_9f

    :cond_d3
    :try_start_d3
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n:Z

    if-nez v3, :cond_8d

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f1} :catch_f3

    goto/16 :goto_65

    :catch_f3
    move-exception v0

    goto :goto_8d
.end method

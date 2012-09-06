.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:I

.field private static t:Ljava/util/Vector;


# instance fields
.field b:I

.field c:I

.field d:[B

.field e:I

.field f:I

.field g:I

.field h:J

.field i:I

.field j:Lcom/jcraft/jsch/IO;

.field k:Ljava/lang/Thread;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field private u:Lcom/jcraft/jsch/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/jcraft/jsch/Channel;->a:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/jcraft/jsch/Channel;->c:I

    const-string v0, "foo"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->d:[B

    const/high16 v0, 0x10

    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    iput v2, p0, Lcom/jcraft/jsch/Channel;->i:I

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->k:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->l:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->m:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->n:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->o:Z

    iput v3, p0, Lcom/jcraft/jsch/Channel;->p:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->q:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->r:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->s:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v1

    :try_start_39
    sget v0, Lcom/jcraft/jsch/Channel;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->a:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method static a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .registers 6

    sget-object v2, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget v3, v0, Lcom/jcraft/jsch/Channel;->b:I

    if-ne v3, p0, :cond_21

    iget-object v3, v0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_21

    monitor-exit v2

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_25
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_20

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method static a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .registers 2

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    goto :goto_d

    :cond_1c
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    goto :goto_d

    :cond_2a
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    goto :goto_d

    :cond_38
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    goto :goto_d

    :cond_46
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    goto :goto_d

    :cond_54
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    goto :goto_d

    :cond_62
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    goto :goto_d

    :cond_70
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    goto :goto_d

    :cond_7e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static a(Lcom/jcraft/jsch/Channel;)V
    .registers 3

    sget-object v1, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method static a(Lcom/jcraft/jsch/Session;)V
    .registers 8

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v5

    :try_start_4
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/Channel;

    move v4, v3

    move v2, v3

    :goto_e
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3a

    move-result v0

    if-ge v4, v0, :cond_2e

    :try_start_16
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget-object v1, v0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_3e

    if-ne v1, p0, :cond_44

    add-int/lit8 v1, v2, 0x1

    :try_start_26
    aput-object v0, v6, v2
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_28} :catch_41

    move v0, v1

    :goto_29
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_e

    :cond_2e
    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    move v0, v3

    :goto_30
    if-ge v0, v2, :cond_3d

    aget-object v1, v6, v0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    return-void

    :catch_3e
    move-exception v0

    move v0, v2

    goto :goto_29

    :catch_41
    move-exception v0

    move v0, v1

    goto :goto_29

    :cond_44
    move v0, v2

    goto :goto_29
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Channel;->c:I

    return v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->c:I

    return-void
.end method

.method declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->h:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/jcraft/jsch/Buffer;)V
    .registers 4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->a(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->a(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->g(I)V

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method a([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->a([BII)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method b()V
    .registers 1

    return-void
.end method

.method public b(I)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput p1, p0, Lcom/jcraft/jsch/Channel;->r:I

    :try_start_15
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->d:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->f:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->g:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    const/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    :goto_47
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6f

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v7

    if-eqz v7, :cond_6f

    if-lez v0, :cond_6f

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_67

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5f} :catch_7d

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v7, v7, v5

    if-lez v7, :cond_67

    move v0, v1

    goto :goto_47

    :cond_67
    const-wide/16 v7, 0x32

    :try_start_69
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_b3

    :goto_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-nez v2, :cond_8a

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is down"

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception v0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->o:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j()V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_a9

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_8a
    if-nez v0, :cond_94

    :try_start_8c
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "channel is not opened."

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->i()Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "channel is not opened."

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->d()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a8} :catch_7d

    return-void

    :cond_a9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_b3
    move-exception v7

    goto :goto_6c
.end method

.method b(Lcom/jcraft/jsch/Session;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    return-void
.end method

.method b([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->b([BII)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->b(I)V

    return-void
.end method

.method c(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->e:I

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method d(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->f:I

    return-void
.end method

.method public e()Ljava/io/InputStream;
    .registers 5

    new-instance v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v2, p0, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method e(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->g:I

    return-void
.end method

.method f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->b()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method declared-synchronized f(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    iget v0, p0, Lcom/jcraft/jsch/Channel;->s:I

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    :try_start_8
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_34

    :try_start_24
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_2f
    monitor-exit p0

    goto :goto_4

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    goto :goto_4
.end method

.method g(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->i:I

    return-void
.end method

.method h()V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->n:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->m:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->l:Z

    :try_start_c
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_34

    :try_start_28
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_5

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    :try_start_33
    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    goto :goto_5
.end method

.method h(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->p:I

    return-void
.end method

.method protected i(I)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const-string v2, "open failed"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    return v0
.end method

.method public j()V
    .registers 2

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_29

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    if-nez v0, :cond_a

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26

    :try_start_e
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->k:Ljava/lang/Thread;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_29

    :try_start_19
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->c()V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_2e

    :cond_22
    :goto_22
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    goto :goto_9

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_22
.end method

.method public k()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/jcraft/jsch/Channel;->o:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public l()Lcom/jcraft/jsch/Session;
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-nez v0, :cond_c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-object v0
.end method

.method protected m()V
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->b:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->g:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public run()V
    .registers 1

    return-void
.end method

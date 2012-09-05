.class public final Lcom/coremobility/b/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/coremobility/b/a;

.field private e:I

.field private f:Ljava/io/DataInputStream;

.field private volatile g:Z

.field private h:Ljava/util/Timer;

.field private i:Lcom/coremobility/b/d;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lcom/coremobility/integration/e/o;


# direct methods
.method public constructor <init>(Lcom/coremobility/b/b;Ljava/lang/String;Lcom/coremobility/b/a;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "CoreSMSConnection"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iput v3, p0, Lcom/coremobility/b/c;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/b/c;->e:I

    iput-object v2, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    iput-boolean v3, p0, Lcom/coremobility/b/c;->g:Z

    iput-object v2, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    iput-object v2, p0, Lcom/coremobility/b/c;->i:Lcom/coremobility/b/d;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/coremobility/b/c;->j:J

    iput-object v2, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    iput-boolean v3, p0, Lcom/coremobility/b/c;->g:Z

    iget-object v0, p1, Lcom/coremobility/b/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v0, p1, Lcom/coremobility/b/b;->b:I

    iput v0, p0, Lcom/coremobility/b/c;->b:I

    iget v0, p1, Lcom/coremobility/b/b;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/coremobility/b/c;->j:J

    iput-object p2, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    iget v0, p1, Lcom/coremobility/b/b;->d:I

    iput v0, p0, Lcom/coremobility/b/c;->e:I

    return-void
.end method

.method static synthetic a(Lcom/coremobility/b/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/b/c;->g()V

    return-void
.end method

.method private declared-synchronized e()V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/coremobility/b/d;

    invoke-direct {v0, p0}, Lcom/coremobility/b/d;-><init>(Lcom/coremobility/b/c;)V

    iput-object v0, p0, Lcom/coremobility/b/c;->i:Lcom/coremobility/b/d;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "CoreSMS PingTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/coremobility/b/c;->i:Lcom/coremobility/b/d;

    iget-wide v2, p0, Lcom/coremobility/b/c;->j:J

    iget-wide v4, p0, Lcom/coremobility/b/c;->j:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/16 v0, 0x1d

    const-string v1, "CoreSMS Start PingTimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_a
    const/16 v0, 0x1d

    const-string v1, "CoreSMS StopPingTimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1c

    :goto_14
    const/4 v0, 0x0

    :try_start_15
    iput-object v0, p0, Lcom/coremobility/b/c;->h:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/b/c;->i:Lcom/coremobility/b/d;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_39

    monitor-exit p0

    return-void

    :catch_1c
    move-exception v0

    const/16 v1, 0x1d

    :try_start_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreSMS StopPingTimer Exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_14

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/coremobility/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x1d

    const-string v1, "CoreSMS Connection: Not connected.. Ping not sent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_9d

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    const/16 v0, 0x1d

    :try_start_15
    const-string v1, "CoreSMS Handle PingTimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/e/e;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/b/c;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/coremobility/b/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreSMS Connection: oldIPAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/b/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "presentLocalIPAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/coremobility/i/b;->f()V

    :cond_67
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v1}, Lcom/coremobility/integration/e/o;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v1, "kPNG"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    const/16 v0, 0x1d

    const-string v1, "CoreSMS Connection: PING sent..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_15 .. :try_end_8c} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_8c} :catch_8d

    goto :goto_11

    :catch_8d
    move-exception v0

    :try_start_8e
    iget-object v0, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    iget-object v1, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/b/c;->b:I

    iget-object v3, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    const-string v4, "Not connected"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/coremobility/b/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_9d

    goto/16 :goto_11

    :catchall_9d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const/16 v0, 0x1d

    :try_start_5
    const-string v3, "CoreSMSConnection: Connecting Socket..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x1d

    const-string v1, "**** CoreSMSConnection: Socket Already Connected..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_15e

    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    const/16 v0, 0x1d

    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to Server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Port["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/b/c;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_15e

    :try_start_4e
    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_64

    const/16 v0, 0x1d

    const-string v3, "close previously opened data input stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_15e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_64} :catch_25a

    :cond_64
    :goto_64
    :try_start_64
    new-instance v0, Lcom/coremobility/integration/e/o;

    iget-object v3, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v4, p0, Lcom/coremobility/b/c;->b:I

    invoke-direct {v0, v3, v4}, Lcom/coremobility/integration/e/o;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    new-instance v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    const-string v4, "CoreSMS Socket"

    invoke-direct {v0, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 v3, 0x1d

    const-string v4, "Start socket conn thread..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/o;->c()Z

    move-result v0

    const/16 v3, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial socket conn thread connected["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_af
    if-nez v0, :cond_e0

    iget-object v3, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/o;->d()Z

    move-result v3

    if-eqz v3, :cond_161

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in socket connection:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e0
    if-nez v0, :cond_188

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket connection error["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v2}, Lcom/coremobility/integration/e/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_107
    .catchall {:try_start_64 .. :try_end_107} :catchall_15e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_107} :catch_107

    :catch_107
    move-exception v0

    const/16 v1, 0x1d

    :try_start_10a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to sms notification server["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/b/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    iget-object v2, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/b/c;->b:I

    iget-object v4, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectFailed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/coremobility/b/a;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_15e
    .catchall {:try_start_10a .. :try_end_15e} :catchall_15e

    :catchall_15e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_161
    const/16 v0, 0x2710

    if-nez v1, :cond_168

    const v0, 0xea60

    :cond_168
    const/16 v1, 0x1d

    :try_start_16a
    const-string v3, "Waiting for %d seconds for socket connection..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-int/lit16 v6, v0, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/o;->c()Z

    move-result v0

    move v1, v2

    goto/16 :goto_af

    :cond_188
    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socket conn thread connected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] successfully"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v1}, Lcom/coremobility/integration/e/o;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lcom/coremobility/integration/e/e;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/b/c;->k:Ljava/lang/String;

    const-string v1, "kMDN"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    if-nez v0, :cond_24f

    const/16 v0, 0x1d

    const-string v1, "Opening DataInputStream ..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v1}, Lcom/coremobility/integration/e/o;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    :goto_1f3
    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending kMDN to Server socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/b/c;->e()V

    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to sms notification server["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/b/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    iget-object v1, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/coremobility/b/c;->b:I

    iget-object v3, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/b/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1d

    :cond_24f
    const/16 v0, 0x1d

    const-string v1, "DataInputStream already open, using it"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_259
    .catchall {:try_start_16a .. :try_end_259} :catchall_15e
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_259} :catch_107

    goto :goto_1f3

    :catch_25a
    move-exception v0

    goto/16 :goto_64
.end method

.method private declared-synchronized i()V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x1d

    :try_start_3
    const-string v1, "CoreSMSConnection:Closing Socket..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/b/c;->f()V

    iget-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()[B
    .registers 8

    const/4 v3, -0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    if-nez v0, :cond_b9

    const/16 v0, 0x1d

    const-string v2, "Opening DataInputStream ..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v2}, Lcom/coremobility/integration/e/o;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    :goto_1d
    const/4 v0, 0x4

    new-array v4, v0, [B

    :goto_20
    invoke-virtual {p0}, Lcom/coremobility/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/16 v2, 0x1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from DataInputStream byte["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    :goto_52
    if-eq v2, v3, :cond_c5

    add-int/lit8 v0, v1, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v4, v1

    const/4 v1, 0x3

    if-le v0, v1, :cond_136

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_139

    const/16 v1, 0x1d

    const-string v2, "Huge Payload via CoreSMS %d throwing IOException"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    :cond_8b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_91} :catch_91

    :catch_91
    move-exception v0

    iget-boolean v1, p0, Lcom/coremobility/b/c;->g:Z

    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/coremobility/b/c;->d:Lcom/coremobility/b/a;

    iget-object v2, p0, Lcom/coremobility/b/c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/b/c;->b:I

    iget-object v4, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadFailed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/coremobility/b/a;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_b8
    throw v0

    :cond_b9
    const/16 v0, 0x1d

    :try_start_bb
    const-string v2, "DataInputStream already open, using it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_c5
    iget-boolean v0, p0, Lcom/coremobility/b/c;->g:Z

    if-eqz v0, :cond_d1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Power down, Stop waitForSMS"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d1
    const/16 v0, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VnotesPhone["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/coremobility/b/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] waiting for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/coremobility/b/c;->e:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " seconds for CoreSMSC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_100} :catch_91

    :try_start_100
    monitor-enter p0
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_101} :catch_115
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_101} :catch_91

    :try_start_101
    iget v0, p0, Lcom/coremobility/b/c;->e:I

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-direct {p0}, Lcom/coremobility/b/c;->i()V

    invoke-direct {p0}, Lcom/coremobility/b/c;->h()V

    monitor-exit p0
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_112

    goto/16 :goto_20

    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit p0

    throw v0
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_115} :catch_115
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_115} :catch_91

    :catch_115
    move-exception v0

    const/16 v2, 0x1d

    :try_start_118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring InterruptedException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_136
    move v1, v0

    goto/16 :goto_20

    :cond_139
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/coremobility/b/c;->f:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_140} :catch_91

    return-object v0

    :cond_141
    move v2, v3

    goto/16 :goto_52
.end method


# virtual methods
.method public final a()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v1}, Lcom/coremobility/integration/e/o;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/coremobility/b/c;->l:Lcom/coremobility/integration/e/o;

    invoke-virtual {v1}, Lcom/coremobility/integration/e/o;->d()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public final b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/coremobility/b/c;->g:Z

    invoke-direct {p0}, Lcom/coremobility/b/c;->i()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_f

    :goto_a
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/b/c;->g:Z

    return v0
.end method

.method public final d()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/b/c;->i()V

    const-wide/16 v0, 0x2328

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-direct {p0}, Lcom/coremobility/b/c;->h()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Exception while running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public final run()V
    .registers 7

    const/16 v5, 0x1d

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_a4

    :cond_9
    :goto_9
    iget-boolean v0, p0, Lcom/coremobility/b/c;->g:Z

    if-nez v0, :cond_a0

    :try_start_d
    invoke-direct {p0}, Lcom/coremobility/b/c;->h()V

    :cond_10
    :goto_10
    iget-boolean v0, p0, Lcom/coremobility/b/c;->g:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/coremobility/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/coremobility/b/c;->j()[B

    move-result-object v0

    if-nez v0, :cond_31

    const/16 v0, 0x1d

    const-string v2, "invalid sms"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2a} :catch_4c

    goto :goto_10

    :catch_2b
    move-exception v0

    iget-boolean v2, p0, Lcom/coremobility/b/c;->g:Z

    if-eqz v2, :cond_66

    :goto_30
    return-void

    :cond_31
    const/4 v2, 0x0

    :try_start_32
    aget-byte v2, v0, v2

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    if-ne v2, v3, :cond_41

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    if-eq v2, v3, :cond_10

    :cond_41
    const-string v2, "com.coremobility.app.vnotes.SERVICE_SMS_RECEIVE"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_4b} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4b} :catch_4c

    goto :goto_10

    :catch_4c
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Exception while running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] will retry again... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_8c
    monitor-enter p0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_9d

    :try_start_8d
    iget v0, p0, Lcom/coremobility/b/c;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_9a

    goto/16 :goto_9

    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit p0

    throw v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception v0

    goto/16 :goto_9

    :cond_a0
    invoke-direct {p0}, Lcom/coremobility/b/c;->i()V

    goto :goto_30

    :array_a4
    .array-data 0x1
        0x8ct
        0x82t
    .end array-data
.end method

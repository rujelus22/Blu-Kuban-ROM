.class abstract Lcom/jcraft/jsch/Request;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/jcraft/jsch/Session;

.field private c:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    return-void
.end method


# virtual methods
.method a(Lcom/jcraft/jsch/Packet;)V
    .registers 9

    const/4 v6, -0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    iput v6, v0, Lcom/jcraft/jsch/Channel;->q:I

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    if-eqz v0, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    iget v2, v2, Lcom/jcraft/jsch/Channel;->r:I

    int-to-long v2, v2

    :cond_1b
    iget-object v4, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Channel;->k()Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    iget v4, v4, Lcom/jcraft/jsch/Channel;->q:I

    if-ne v4, v6, :cond_4a

    const-wide/16 v4, 0xa

    :try_start_2b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_58

    :goto_2e
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_1b

    iget-object v0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/Channel;->q:I

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel request: timeout"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    iget-object v0, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    iget v0, v0, Lcom/jcraft/jsch/Channel;->q:I

    if-nez v0, :cond_5a

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "failed to send channel request"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_58
    move-exception v4

    goto :goto_2e

    :cond_5a
    return-void
.end method

.method a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Request;->b:Lcom/jcraft/jsch/Session;

    iput-object p2, p0, Lcom/jcraft/jsch/Request;->c:Lcom/jcraft/jsch/Channel;

    iget v0, p2, Lcom/jcraft/jsch/Channel;->r:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->a(Z)V

    :cond_c
    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/jcraft/jsch/Request;->a:Z

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->a:Z

    return v0
.end method

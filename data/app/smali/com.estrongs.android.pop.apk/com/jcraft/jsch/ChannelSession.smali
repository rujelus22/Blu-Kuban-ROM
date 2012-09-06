.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static t:[B


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:[B

.field protected u:Z

.field protected v:Z

.field protected w:Ljava/util/Hashtable;

.field protected x:Z

.field protected y:Ljava/lang/String;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "session"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->t:[B

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->u:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->w:Ljava/util/Hashtable;

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Z

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->y:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->z:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->D:[B

    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->t:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->d:[B

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    return-void
.end method

.method private a(Ljava/lang/Object;)[B
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object p1

    :goto_a
    return-object p1

    :cond_b
    check-cast p1, [B

    check-cast p1, [B

    goto :goto_a
.end method


# virtual methods
.method protected n()V
    .registers 8

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->l()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->u:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/jcraft/jsch/RequestAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestAgentForwarding;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_10
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->v:Z

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    invoke-virtual {v0, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_1c
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->x:Z

    if-eqz v0, :cond_4a

    new-instance v1, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/RequestPtyReq;->a(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->z:I

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->A:I

    iget v5, p0, Lcom/jcraft/jsch/ChannelSession;->B:I

    iget v6, p0, Lcom/jcraft/jsch/ChannelSession;->C:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/jcraft/jsch/RequestPtyReq;->a(IIII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->D:[B

    if-eqz v0, :cond_47

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSession;->D:[B

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/RequestPtyReq;->a([B)V

    :cond_47
    invoke-virtual {v1, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    :cond_4a
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Ljava/util/Hashtable;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->w:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v1, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {v1}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/ChannelSession;->a(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSession;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/jcraft/jsch/RequestEnv;->a([B[B)V

    invoke-virtual {v1, v2, p0}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_54

    :cond_7b
    return-void
.end method

.method public run()V
    .registers 7

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSession;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->k()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSession;->j:Lcom/jcraft/jsch/IO;

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

    if-eqz v2, :cond_c

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4a

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->g()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_69

    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_46

    monitor-enter v1

    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_6b

    :cond_46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->k:Ljava/lang/Thread;

    return-void

    :cond_4a
    :try_start_4a
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSession;->n:Z

    if-nez v3, :cond_3d

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelSession;->c:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->l()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_69

    goto :goto_c

    :catch_69
    move-exception v0

    goto :goto_3d

    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0
.end method

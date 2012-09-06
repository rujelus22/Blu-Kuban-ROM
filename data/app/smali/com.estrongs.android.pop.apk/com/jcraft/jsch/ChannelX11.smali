.class Lcom/jcraft/jsch/ChannelX11;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static A:[B

.field static t:[B

.field private static u:Ljava/lang/String;

.field private static v:I

.field private static x:[B

.field private static y:Ljava/util/Hashtable;

.field private static z:Ljava/util/Hashtable;


# instance fields
.field private B:Ljava/net/Socket;

.field private C:[B

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->u:Ljava/lang/String;

    const/16 v0, 0x1770

    sput v0, Lcom/jcraft/jsch/ChannelX11;->v:I

    sput-object v1, Lcom/jcraft/jsch/ChannelX11;->t:[B

    sput-object v1, Lcom/jcraft/jsch/ChannelX11;->x:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->z:Ljava/util/Hashtable;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->A:[B

    return-void

    nop

    :array_26
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method constructor <init>()V
    .registers 4

    const/high16 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelX11;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->B:Ljava/net/Socket;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/ChannelX11;->c(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/ChannelX11;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelX11;->e(I)V

    const-string v0, "x11"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->d:[B

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelX11;->o:Z

    return-void
.end method

.method private static a([B[B)Z
    .registers 6

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_13

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v1, 0x1

    goto :goto_5
.end method

.method static c(Lcom/jcraft/jsch/Session;)[B
    .registers 9

    const/4 v1, 0x0

    const/16 v7, 0x10

    sget-object v2, Lcom/jcraft/jsch/ChannelX11;->z:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_6
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_55

    sget-object v3, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    const/16 v0, 0x10

    new-array v4, v0, [B

    monitor-enter v3
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_4d

    const/4 v0, 0x0

    const/16 v5, 0x10

    :try_start_1c
    invoke-interface {v3, v4, v0, v5}, Lcom/jcraft/jsch/Random;->a([BII)V

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_4a

    :try_start_20
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [B

    :goto_29
    if-ge v1, v7, :cond_50

    mul-int/lit8 v3, v1, 0x2

    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->A:[B

    aget-byte v6, v4, v1

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v5, Lcom/jcraft/jsch/ChannelX11;->A:[B

    aget-byte v6, v4, v1

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v3
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0

    :catchall_4d
    move-exception v0

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    sget-object v1, Lcom/jcraft/jsch/ChannelX11;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_4d

    return-object v0
.end method

.method private c([BII)[B
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    array-length v0, v0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    array-length v1, v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    return-object v0
.end method


# virtual methods
.method a([BII)V
    .registers 14

    const/4 v9, 0x0

    const v7, 0xff00

    const/16 v2, 0x9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelX11;->w:Z

    if-eqz v0, :cond_b3

    :try_start_b
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->l()Lcom/jcraft/jsch/Session;
    :try_end_e
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_b .. :try_end_e} :catch_17

    move-result-object v3

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelX11;->c([BII)[B

    move-result-object v4

    array-length v5, v4

    if-ge v5, v2, :cond_22

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/4 v0, 0x6

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    const/4 v1, 0x7

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v0

    const/16 v0, 0x8

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    aget-byte v2, v4, v8

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x42

    if-ne v2, v6, :cond_87

    move v2, v1

    move v1, v0

    :goto_46
    add-int/lit8 v0, v2, 0xc

    neg-int v6, v2

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    if-lt v5, v0, :cond_16

    new-array v6, v1, [B

    add-int/lit8 v0, v2, 0xc

    neg-int v7, v2

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v0, v7

    invoke-static {v4, v0, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/util/Hashtable;

    monitor-enter v7

    :try_start_5d
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->y:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    monitor-exit v7
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_a2

    invoke-static {v6, v0}, Lcom/jcraft/jsch/ChannelX11;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->t:[B

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->t:[B

    add-int/lit8 v3, v2, 0xc

    neg-int v2, v2

    and-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-static {v0, v8, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7d
    :goto_7d
    iput-boolean v8, p0, Lcom/jcraft/jsch/ChannelX11;->w:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, v4, v8, v5}, Lcom/jcraft/jsch/IO;->a([BII)V

    iput-object v9, p0, Lcom/jcraft/jsch/ChannelX11;->C:[B

    goto :goto_16

    :cond_87
    aget-byte v2, v4, v8

    and-int/lit16 v2, v2, 0xff

    const/16 v6, 0x6c

    if-ne v2, v6, :cond_ba

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v7

    or-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto :goto_46

    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0

    :cond_a5
    iput-object v9, p0, Lcom/jcraft/jsch/ChannelX11;->k:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->g()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->c()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->j()V

    goto :goto_7d

    :cond_b3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->a([BII)V

    goto/16 :goto_16

    :cond_ba
    move v2, v1

    move v1, v0

    goto :goto_46
.end method

.method public run()V
    .registers 7

    const/4 v3, 0x1

    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/ChannelX11;->u:Ljava/lang/String;

    sget v1, Lcom/jcraft/jsch/ChannelX11;->v:I

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->B:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->B:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->B:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelX11;->B:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->m()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_71

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelX11;->k:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelX11;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_45
    :try_start_45
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->k:Ljava/lang/Thread;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelX11;->j:Lcom/jcraft/jsch/IO;

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

    if-gtz v2, :cond_7b

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->g()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6d} :catch_9a

    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->j()V

    :goto_70
    return-void

    :catch_71
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelX11;->i(I)V

    iput-boolean v3, p0, Lcom/jcraft/jsch/ChannelX11;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->j()V

    goto :goto_70

    :cond_7b
    :try_start_7b
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelX11;->n:Z

    if-nez v3, :cond_6d

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelX11;->c:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelX11;->l()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_99} :catch_9a

    goto :goto_45

    :catch_9a
    move-exception v0

    goto :goto_6d
.end method

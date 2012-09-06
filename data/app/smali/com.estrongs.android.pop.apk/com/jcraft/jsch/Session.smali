.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ae:[B

.field static f:Lcom/jcraft/jsch/Random;


# instance fields
.field private A:[B

.field private B:[B

.field private C:I

.field private D:I

.field private E:Lcom/jcraft/jsch/Cipher;

.field private F:Lcom/jcraft/jsch/Cipher;

.field private G:Lcom/jcraft/jsch/MAC;

.field private H:Lcom/jcraft/jsch/MAC;

.field private I:[B

.field private J:[B

.field private K:Lcom/jcraft/jsch/Compression;

.field private L:Lcom/jcraft/jsch/Compression;

.field private M:Lcom/jcraft/jsch/IO;

.field private N:Ljava/net/Socket;

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Ljava/lang/Thread;

.field private S:Ljava/lang/Object;

.field private T:Ljava/util/Hashtable;

.field private U:Lcom/jcraft/jsch/Proxy;

.field private V:Lcom/jcraft/jsch/UserInfo;

.field private W:Ljava/lang/String;

.field private X:I

.field private Y:I

.field private Z:J

.field a:[Ljava/lang/String;

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field private af:Lcom/jcraft/jsch/HostKey;

.field b:Z

.field c:Z

.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field g:Lcom/jcraft/jsch/Buffer;

.field h:Lcom/jcraft/jsch/Packet;

.field i:Lcom/jcraft/jsch/SocketFactory;

.field protected j:Z

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/String;

.field n:[B

.field o:Lcom/jcraft/jsch/JSch;

.field p:[I

.field q:Ljava/lang/Runnable;

.field private r:[B

.field private s:[B

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[B

.field private x:[B

.field private y:[B

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->ae:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .registers 8

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.44"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s:[B

    iput v3, p0, Lcom/jcraft/jsch/Session;->C:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->D:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->O:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->P:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->b:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->c:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->d:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->e:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->X:I

    iput v4, p0, Lcom/jcraft/jsch/Session;->Y:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Session;->Z:J

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Lcom/jcraft/jsch/Session;->l:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->n:[B

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->p:[I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ab:I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ac:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    return-void
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .registers 11

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->c()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/high16 v1, 0x4

    if-eq p4, v1, :cond_48

    if-eqz p3, :cond_48

    :goto_16
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int v1, p5, v0

    :goto_1a
    if-lez v1, :cond_39

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    if-le v1, v0, :cond_37

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    :goto_27
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/IO;->c([BII)V

    if-eqz p3, :cond_35

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v2, v4, v0}, Lcom/jcraft/jsch/MAC;->a([BII)V

    :cond_35
    sub-int/2addr v1, v0

    goto :goto_1a

    :cond_37
    move v0, v1

    goto :goto_27

    :cond_39
    if-eqz p3, :cond_40

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v0, v4}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_40
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object p3, v0

    goto :goto_16
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    return-void
.end method

.method private a(Lcom/jcraft/jsch/KeyExchange;)V
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->e()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->f()Lcom/jcraft/jsch/HASH;

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    if-nez v0, :cond_1c

    array-length v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    array-length v4, v2

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x41

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->v:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->w:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->v:[B

    array-length v4, v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->x:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->A:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->B:[B

    :try_start_e0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    :goto_f7
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v4, v4

    if-le v0, v4, :cond_14a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v4, v4

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->z:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_143} :catch_144

    goto :goto_f7

    :catch_144
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_233

    throw v0

    :cond_14a
    :try_start_14a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->z:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->x:[B

    invoke-interface {v0, v4, v5, v6}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->B:[B

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    :goto_1a5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v4, v4

    if-le v0, v4, :cond_1f2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v4, v4

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->y:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    goto :goto_1a5

    :cond_1f2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->w:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ac:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->A:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_232} :catch_144

    return-void

    :cond_233
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .registers 16

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x1

    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    :cond_f
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->g()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    if-nez v0, :cond_40

    const/16 v0, 0x16

    if-eq p2, v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_40
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->a()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v1

    monitor-enter v1

    :try_start_47
    invoke-interface {v1, p1, v5}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;[B)I

    move-result v8

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_f1

    const-string v0, "ask"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    :cond_5c
    if-ne v8, v11, :cond_2a4

    monitor-enter v1

    :try_start_5f
    invoke-interface {v1}, Lcom/jcraft/jsch/HostKeyRepository;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_f4

    if-nez v0, :cond_68

    const-string v0, "known_hosts"

    :cond_68
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    if-eqz v9, :cond_d6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " host key has just been changed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "The fingerprint for the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " key sent by the remote host is\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Please contact your system administrator.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Add correct host key in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " to get rid of this message."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v2

    :cond_d6
    :goto_d6
    if-nez v2, :cond_fd

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostKey has been changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v0

    :catchall_f4
    move-exception v0

    :try_start_f5
    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v0

    :cond_f7
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_d6

    :cond_fd
    monitor-enter v1

    :try_start_fe
    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    const-string v0, "ssh-dss"

    :goto_108
    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_fe .. :try_end_10d} :catchall_148

    move v0, v3

    :goto_10e
    const-string v2, "ask"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11e

    const-string v2, "yes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    :cond_11e
    if-eqz v8, :cond_1a8

    if-nez v0, :cond_1a8

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject HostKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_145
    :try_start_145
    const-string v0, "ssh-rsa"

    goto :goto_108

    :catchall_148
    move-exception v0

    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_145 .. :try_end_14a} :catchall_148

    throw v0

    :cond_14b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The authenticity of host \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' can\'t be established.\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " key fingerprint is "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Are you sure you want to continue connecting?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a7

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject HostKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a7
    move v0, v3

    :cond_1a8
    const-string v2, "no"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a1

    if-ne v3, v8, :cond_2a1

    move v2, v3

    :goto_1b3
    if-nez v8, :cond_1eb

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1eb

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Host \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' is known and mathces the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " host key"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1eb
    if-eqz v2, :cond_223

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_223

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permanently added \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to the list of known hosts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_223
    const-string v0, "HashKnownHosts"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_296

    instance-of v0, v1, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_296

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v0, p1, v5}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    :goto_23e
    if-eqz v2, :cond_249

    monitor-enter v1

    :try_start_241
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->a(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit v1
    :try_end_249
    .catchall {:try_start_241 .. :try_end_249} :catchall_29e

    :cond_249
    return-void

    :cond_24a
    if-ne v8, v3, :cond_27b

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownHostKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key fingerprint is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27b
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HostKey has been changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_296
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v0, p1, v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    goto :goto_23e

    :catchall_29e
    move-exception v0

    :try_start_29f
    monitor-exit v1
    :try_end_2a0
    .catchall {:try_start_29f .. :try_end_2a0} :catchall_29e

    throw v0

    :cond_2a1
    move v2, v0

    goto/16 :goto_1b3

    :cond_2a4
    move v0, v2

    goto/16 :goto_10e
.end method

.method private b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v1

    if-eq v0, v1, :cond_3f

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    :goto_16
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p1, Lcom/jcraft/jsch/Buffer;->d:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->u:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->i()V

    :cond_29
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->t:[B

    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a([B[B)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    if-nez v0, :cond_4b

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Algorithm negotiation fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    goto :goto_16

    :cond_4b
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_69
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_86} :catch_93

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->r:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->s:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->t:[B

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object v0

    :catch_93
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/jcraft/jsch/Packet;)V
    .registers 4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Lcom/jcraft/jsch/Packet;)V

    iget v0, p0, Lcom/jcraft/jsch/Session;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->D:I

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static e(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface {v0, v2, v3, v4}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :catch_1f
    move-exception v0

    move v0, v1

    goto :goto_1e
.end method

.method private f(Ljava/lang/String;)V
    .registers 5

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-eqz v1, :cond_b

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_46

    const/4 v0, 0x6

    :try_start_35
    const-string v1, "compression_level"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_51

    move-result v0

    :goto_3f
    :try_start_3f
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_b

    :catch_46
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_51
    move-exception v1

    goto :goto_3f
.end method

.method private g(Ljava/lang/String;)V
    .registers 5

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-eqz v1, :cond_b

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_26
    :try_start_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3c

    goto :goto_b

    :catch_3c
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private h(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v2

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckCiphers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_31
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_3d
    array-length v5, v4

    if-ge v0, v5, :cond_54

    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Session;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_54
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5c

    move-object v0, v2

    goto :goto_c

    :cond_5c
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_77
    array-length v2, v0

    if-ge v1, v2, :cond_c

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_77
.end method

.method private i()V
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    array-length v3, v2

    if-lez v3, :cond_36

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2e

    if-nez v0, :cond_36

    :cond_2e
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iput-boolean v9, p0, Lcom/jcraft/jsch/Session;->aa:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jsch/Session;->Z:J

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v4, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v4

    :try_start_53
    sget-object v5, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v6, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v7, v2, Lcom/jcraft/jsch/Buffer;->c:I

    const/16 v8, 0x10

    invoke-interface {v5, v6, v7, v8}, Lcom/jcraft/jsch/Random;->a([BII)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Buffer;->b(I)V

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_109

    const-string v4, "kex"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v4, "server_host_key"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->c(I)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->t:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->t:[B

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v9, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_6

    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v4
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .registers 13

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v3, p0, Lcom/jcraft/jsch/Session;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v4, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_26
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int v4, v0, v1

    const/4 v0, 0x5

    if-lt v4, v0, :cond_57

    const/high16 v0, 0x4

    if-le v4, v0, :cond_62

    :cond_57
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_62
    add-int/lit8 v0, v4, 0x4

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    sub-int v8, v0, v1

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_80

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    new-array v0, v0, [B

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_80
    iget v0, p0, Lcom/jcraft/jsch/Session;->ab:I

    rem-int v0, v8, v0

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad packet length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_ac
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x4

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_bb
    if-lez v8, :cond_dc

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_dc

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v6, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v7, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v9, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v10, p0, Lcom/jcraft/jsch/Session;->ab:I

    invoke-interface/range {v5 .. v10}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_dc
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->C:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/MAC;->a([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->J:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_129

    const/high16 v0, 0x4

    if-le v8, v0, :cond_11a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11a
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x4

    sub-int v5, v0, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto/16 :goto_0

    :cond_129
    iget v0, p0, Lcom/jcraft/jsch/Session;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->C:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_15b

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->p:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v3, v3, -0x5

    sub-int v0, v3, v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->p:[I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Compression;->a([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_1ae

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_15b
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b9

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH_MSG_DISCONNECT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1ae
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "fail in inflater"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b5
    :goto_1b5
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    return-object p1

    :cond_1b9
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1f4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_202

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    goto/16 :goto_0

    :cond_202
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_222

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel;->f(I)V

    goto/16 :goto_0

    :cond_222
    const/16 v1, 0x34

    if-ne v0, v1, :cond_1b5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_1b5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_1b5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)V

    goto/16 :goto_1b5
.end method

.method public a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->b()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public a(I)V
    .registers 15

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is already connected"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_2b

    :try_start_17
    const-string v0, "random"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Random;

    check-cast v0, Lcom/jcraft/jsch/Random;

    sput-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_144

    :cond_2b
    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    invoke-static {v0}, Lcom/jcraft/jsch/Packet;->a(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_64
    :try_start_64
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_16d

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_14f

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_82
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    :goto_92
    if-lez p1, :cond_9d

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_9d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Connection established"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_b5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->a(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->s:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->s:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jcraft/jsch/IO;->a([BII)V

    :cond_d9
    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_db
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_5dd

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->a()I

    move-result v0

    if-gez v0, :cond_19f

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_ed
    if-gez v1, :cond_1b1

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "connection is closed by foreign host"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f7
    .catchall {:try_start_64 .. :try_end_f7} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_f7} :catch_f7

    :catch_f7
    move-exception v0

    const/4 v1, 0x0

    :try_start_f9
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->aa:Z

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P:Z
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_13a

    if-eqz v1, :cond_130

    :try_start_ff
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const-string v2, "en"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_130
    .catchall {:try_start_ff .. :try_end_130} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_130} :catch_5c4

    :cond_130
    :goto_130
    const/4 v1, 0x0

    :try_start_131
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->P:Z

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5a4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_13a
    .catchall {:try_start_131 .. :try_end_13a} :catchall_13a

    :catchall_13a
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->n:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->n:[B

    throw v0

    :catch_144
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14f
    :try_start_14f
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    goto/16 :goto_82

    :cond_16d
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_170
    .catchall {:try_start_14f .. :try_end_170} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_170} :catch_f7

    :try_start_170
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v4, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/jcraft/jsch/Proxy;->a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->b()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->c()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    monitor-exit v1

    goto/16 :goto_92

    :catchall_19c
    move-exception v0

    monitor-exit v1
    :try_end_19e
    .catchall {:try_start_170 .. :try_end_19e} :catchall_19c

    :try_start_19e
    throw v0

    :cond_19f
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_db

    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_ed

    :cond_1b1
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1cf

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1cf

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1cf

    add-int/lit8 v0, v0, -0x1

    :cond_1cf
    const/4 v1, 0x3

    if-le v0, v1, :cond_d9

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_205

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_d9

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_d9

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, 0x48

    if-ne v1, v2, :cond_d9

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_d9

    :cond_205
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_225

    const/4 v1, 0x7

    if-lt v0, v1, :cond_225

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x31

    if-ne v1, v2, :cond_22d

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    const/16 v2, 0x39

    if-eq v1, v2, :cond_22d

    :cond_225
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid server\'s version string"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22d
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->r:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->r:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_289

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote version string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->r:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local version string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->s:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_289
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->i()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2c0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2d5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_KEXINIT received"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_2d5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    :cond_2db
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    if-ne v1, v2, :cond_319

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jcraft/jsch/Session;->Z:J

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v1

    if-nez v1, :cond_33b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid protocol(kex): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33b
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I
    :try_end_33e
    .catchall {:try_start_19e .. :try_end_33e} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_33e} :catch_f7

    move-result v1

    if-nez v1, :cond_2db

    :try_start_341
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-direct {p0, v1, v2, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_348
    .catchall {:try_start_341 .. :try_end_348} :catchall_13a
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_341 .. :try_end_348} :catch_3d0
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_348} :catch_f7

    :try_start_348
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->j()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3d5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_372

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SSH_MSG_NEWKEYS received"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_372
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_377
    .catchall {:try_start_348 .. :try_end_377} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_377} :catch_f7

    const/4 v3, 0x0

    :try_start_378
    const-string v0, "userauth.none"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_38a
    .catchall {:try_start_378 .. :try_end_38a} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_378 .. :try_end_38a} :catch_3f7

    :try_start_38a
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    move-result v4

    const-string v1, "PreferredAuthentications"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    if-nez v4, :cond_5da

    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v0}, Lcom/jcraft/jsch/UserAuthNone;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_3a9
    :goto_3a9
    const-string v0, ","

    invoke-static {v1, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v5, v0

    move-object v6, v1

    move v0, v2

    :goto_3b3
    if-nez v4, :cond_535

    if-eqz v7, :cond_535

    array-length v1, v7

    if-ge v0, v1, :cond_535

    add-int/lit8 v2, v0, 0x1

    aget-object v8, v7, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3c0
    array-length v9, v5

    if-ge v1, v9, :cond_3cc

    aget-object v9, v5, v1

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_402

    const/4 v0, 0x1

    :cond_3cc
    if-nez v0, :cond_405

    move v0, v2

    goto :goto_3b3

    :catch_3d0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->aa:Z

    throw v0

    :cond_3d5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid protocol(newkyes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3f7
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_402
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c0

    :cond_405
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_46b

    const-string v1, "Authentications that can continue: "

    add-int/lit8 v0, v2, -0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_417
    array-length v9, v7

    if-ge v1, v9, :cond_448

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v7, v1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v1, 0x1

    array-length v10, v7

    if-ge v9, v10, :cond_445

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_445
    add-int/lit8 v1, v1, 0x1

    goto :goto_417

    :cond_448
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v9, 0x1

    invoke-interface {v1, v9, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Next authentication method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_46b
    .catchall {:try_start_38a .. :try_end_46b} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_38a .. :try_end_46b} :catch_f7

    :cond_46b
    const/4 v1, 0x0

    :try_start_46c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userauth."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userauth."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_4a8
    .catchall {:try_start_46c .. :try_end_4a8} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_46c .. :try_end_4a8} :catch_4e3

    :goto_4a8
    move-object v1, v0

    :cond_4a9
    :goto_4a9
    if-eqz v1, :cond_5d3

    const/4 v0, 0x0

    :try_start_4ac
    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z
    :try_end_4af
    .catchall {:try_start_4ac .. :try_end_4af} :catchall_13a
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_4ac .. :try_end_4af} :catch_511
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_4ac .. :try_end_4af} :catch_515
    .catch Ljava/lang/RuntimeException; {:try_start_4ac .. :try_end_4af} :catch_52f
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_4af} :catch_531

    move-result v1

    if-eqz v1, :cond_4de

    :try_start_4b2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4de

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Authentication succeeded ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_4de
    .catchall {:try_start_4b2 .. :try_end_4de} :catchall_13a
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_4b2 .. :try_end_4de} :catch_5cd
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_4b2 .. :try_end_4de} :catch_5ca
    .catch Ljava/lang/RuntimeException; {:try_start_4b2 .. :try_end_4de} :catch_52f
    .catch Ljava/lang/Exception; {:try_start_4b2 .. :try_end_4de} :catch_5c7

    :cond_4de
    :goto_4de
    move v3, v0

    move v4, v1

    move v0, v2

    goto/16 :goto_3b3

    :catch_4e3
    move-exception v0

    :try_start_4e4
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4a9

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto :goto_4a9

    :catch_511
    move-exception v0

    move v1, v4

    :goto_513
    const/4 v0, 0x1

    goto :goto_4de

    :catch_515
    move-exception v0

    move v1, v4

    :goto_517
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    invoke-static {v4, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d0

    const/4 v0, 0x0

    :goto_528
    const/4 v2, 0x0

    move-object v5, v3

    move-object v6, v4

    move v3, v2

    move v4, v1

    goto/16 :goto_3b3

    :catch_52f
    move-exception v0

    throw v0

    :catch_531
    move-exception v1

    move v1, v4

    :goto_533
    move v3, v0

    move v4, v1

    :cond_535
    if-nez v4, :cond_549

    if-eqz v3, :cond_541

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth cancel"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_541
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_549
    if-gtz p1, :cond_54f

    iget v0, p0, Lcom/jcraft/jsch/Session;->O:I

    if-lez v0, :cond_556

    :cond_54f
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget v1, p0, Lcom/jcraft/jsch/Session;->O:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1
    :try_end_55c
    .catchall {:try_start_4e4 .. :try_end_55c} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_4e4 .. :try_end_55c} :catch_f7

    :try_start_55c
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v0, :cond_597

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_592

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_592
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_597
    monitor-exit v1
    :try_end_598
    .catchall {:try_start_55c .. :try_end_598} :catchall_5a1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->n:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->n:[B

    return-void

    :catchall_5a1
    move-exception v0

    :try_start_5a2
    monitor-exit v1
    :try_end_5a3
    .catchall {:try_start_5a2 .. :try_end_5a3} :catchall_5a1

    :try_start_5a3
    throw v0
    :try_end_5a4
    .catchall {:try_start_5a3 .. :try_end_5a4} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_5a3 .. :try_end_5a4} :catch_f7

    :cond_5a4
    :try_start_5a4
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_5ab

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_5ab
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session.connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5c4
    .catchall {:try_start_5a4 .. :try_end_5c4} :catchall_13a

    :catch_5c4
    move-exception v1

    goto/16 :goto_130

    :catch_5c7
    move-exception v2

    goto/16 :goto_533

    :catch_5ca
    move-exception v0

    goto/16 :goto_517

    :catch_5cd
    move-exception v0

    goto/16 :goto_513

    :cond_5d0
    move v0, v2

    goto/16 :goto_528

    :cond_5d3
    move v0, v3

    move v1, v4

    goto/16 :goto_4de

    :cond_5d7
    move-object v0, v1

    goto/16 :goto_4a8

    :cond_5da
    move-object v1, v2

    goto/16 :goto_3a9

    :cond_5dd
    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_ed
.end method

.method a(Lcom/jcraft/jsch/Channel;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->b(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public a(Lcom/jcraft/jsch/Packet;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v1, v3, v4, v5}, Lcom/jcraft/jsch/Compression;->a([BII)I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_18
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_85

    iget v0, p0, Lcom/jcraft/jsch/Session;->ac:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    sget-object v1, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v1

    :try_start_2b
    sget-object v3, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v4, v5, v0}, Lcom/jcraft/jsch/Random;->a([BII)V

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_82

    :goto_3a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->D:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_5f
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_72
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_81

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    :cond_81
    return-void

    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    :cond_85
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    goto :goto_3a
.end method

.method a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v6, v0

    :goto_8
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_2b

    cmp-long v0, v6, v10

    if-lez v0, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/jcraft/jsch/Session;->Z:J

    sub-long/2addr v0, v3

    cmp-long v0, v0, v6

    if-lez v0, :cond_23

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const-wide/16 v0, 0xa

    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v0

    goto :goto_8

    :cond_2b
    monitor-enter p2

    :try_start_2c
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3e

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_51

    :goto_3a
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    :cond_3d
    return-void

    :cond_3e
    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_51

    iget-boolean v0, p2, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_49

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->k()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "channel is broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    const/4 v0, -0x1

    monitor-enter p2

    :try_start_56
    iget-wide v3, p2, Lcom/jcraft/jsch/Channel;->h:J

    cmp-long v1, v3, v10

    if-lez v1, :cond_df

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v3, v0, v3

    if-lez v3, :cond_dd

    int-to-long v0, p3

    move-wide v4, v0

    :goto_65
    int-to-long v0, p3

    cmp-long v0, v4, v0

    if-eqz v0, :cond_db

    long-to-int v1, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    :goto_75
    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Packet;->a(II)I

    move-result v3

    :goto_79
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    int-to-long v8, p3

    sub-long/2addr v8, v4

    long-to-int p3, v8

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->h:J

    sub-long v4, v8, v4

    iput-wide v4, p2, Lcom/jcraft/jsch/Channel;->h:J

    const/4 v4, 0x1

    :goto_8d
    monitor-exit p2
    :try_end_8e
    .catchall {:try_start_56 .. :try_end_8e} :catchall_a5

    if-eqz v4, :cond_98

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    if-eqz p3, :cond_3d

    invoke-virtual {p1, v1, v0, v3, p3}, Lcom/jcraft/jsch/Packet;->a(BIII)V

    :cond_98
    monitor-enter p2

    :try_start_99
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_a8

    monitor-exit p2

    goto/16 :goto_8

    :catchall_a0
    move-exception v0

    monitor-exit p2
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a0

    throw v0

    :cond_a3
    move v0, v2

    goto :goto_75

    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit p2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    :cond_a8
    :try_start_a8
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_b7

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_a0

    goto :goto_3a

    :cond_b7
    :try_start_b7
    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_d3
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_c2} :catch_cb

    :try_start_c2
    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    :goto_c8
    monitor-exit p2

    goto/16 :goto_8

    :catch_cb
    move-exception v0

    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    goto :goto_c8

    :catchall_d3
    move-exception v0

    iget v1, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Lcom/jcraft/jsch/Channel;->s:I

    throw v0
    :try_end_db
    .catchall {:try_start_c2 .. :try_end_db} :catchall_a0

    :cond_db
    move v3, v2

    goto :goto_79

    :cond_dd
    move-wide v4, v0

    goto :goto_65

    :cond_df
    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_8d
.end method

.method public a(Lcom/jcraft/jsch/UserInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method a()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    return-object v0
.end method

.method public b()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_39
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->a(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c(Lcom/jcraft/jsch/Session;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_48
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    if-eqz v0, :cond_57

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_9d

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;

    :try_start_5a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_6b
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_78
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_85
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_92} :catch_ad

    :cond_92
    :goto_92
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->b(Lcom/jcraft/jsch/Session;)Z

    goto/16 :goto_6

    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0

    :cond_a0
    :try_start_a0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_ad

    :try_start_a3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->d()V

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_af

    const/4 v0, 0x0

    :try_start_aa
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ac} :catch_ad

    goto :goto_92

    :catch_ad
    move-exception v0

    goto :goto_92

    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b2} :catch_ad
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Session;->l:I

    return-void
.end method

.method public b(Lcom/jcraft/jsch/Packet;)V
    .registers 9

    const/16 v6, 0x1f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v0, v0

    :goto_7
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v2, :cond_49

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->Z:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_24

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_49

    const/16 v3, 0x15

    if-eq v2, v3, :cond_49

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_49

    if-eq v2, v6, :cond_49

    if-eq v2, v6, :cond_49

    const/16 v3, 0x20

    if-eq v2, v3, :cond_49

    const/16 v3, 0x21

    if-eq v2, v3, :cond_49

    const/16 v3, 0x22

    if-eq v2, v3, :cond_49

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    :cond_49
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_4d
    const-wide/16 v2, 0xa

    :try_start_4f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_7

    :catch_53
    move-exception v2

    goto :goto_7
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/jcraft/jsch/UserInfo;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_11

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Session;->O:I

    return v0
.end method

.method public f()V
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v2, Lcom/jcraft/jsch/Session;->ae:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 14

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v7, Lcom/jcraft/jsch/Packet;

    invoke-direct {v7, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    new-array v8, v3, [I

    new-array v9, v3, [I

    move v2, v4

    move-object v5, v0

    move-object v0, v1

    :goto_16
    :try_start_16
    iget-boolean v6, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v6, :cond_80

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_55

    if-eqz v6, :cond_80

    :try_start_1e
    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    :try_end_21
    .catch Ljava/io/InterruptedIOException; {:try_start_1e .. :try_end_21} :catch_86
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_55

    move-result-object v6

    :try_start_22
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v5

    if-ne v5, v2, :cond_a2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/jcraft/jsch/Session;->Z:J

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v2

    if-nez v2, :cond_352

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->aa:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception, leaving main loop due to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_80
    :try_start_80
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_83
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_83} :catch_34c
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_34f

    :goto_83
    iput-boolean v4, p0, Lcom/jcraft/jsch/Session;->P:Z

    return-void

    :catch_86
    move-exception v6

    :try_start_87
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-nez v10, :cond_95

    iget v10, p0, Lcom/jcraft/jsch/Session;->Y:I

    if-ge v2, v10, :cond_95

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_95
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v10, :cond_a1

    iget v10, p0, Lcom/jcraft/jsch/Session;->Y:I

    if-ge v2, v10, :cond_a1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_a1
    throw v6

    :cond_a2
    sparse-switch v2, :sswitch_data_356

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown SSH message type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_be
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    :cond_c2
    :goto_c2
    move v2, v4

    move-object v5, v6

    goto/16 :goto_16

    :sswitch_c6
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->j()V

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    move-object v0, v1

    goto :goto_c2

    :sswitch_ce
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v5

    if-eqz v2, :cond_c2

    const/4 v10, 0x0

    aget v10, v9, v10
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_e8} :catch_55

    if-eqz v10, :cond_c2

    const/4 v10, 0x0

    :try_start_eb
    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v2, v5, v10, v11}, Lcom/jcraft/jsch/Channel;->a([BII)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f3} :catch_125

    const/4 v5, 0x0

    :try_start_f4
    aget v5, v9, v5

    iget v10, v2, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v5, v10, v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v2, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v5, v10, :cond_c2

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v5, 0x5d

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v2, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v5, v10

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->d(I)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_124} :catch_55

    goto :goto_c2

    :catch_125
    move-exception v5

    :try_start_126
    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->j()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_12a

    goto :goto_c2

    :catch_12a
    move-exception v2

    goto :goto_c2

    :sswitch_12c
    :try_start_12c
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v5

    if-eqz v2, :cond_c2

    const/4 v10, 0x0

    aget v10, v9, v10

    if-eqz v10, :cond_c2

    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v2, v5, v10, v11}, Lcom/jcraft/jsch/Channel;->b([BII)V

    const/4 v5, 0x0

    aget v5, v9, v5

    iget v10, v2, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v5, v10, v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v2, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v5, v10, :cond_c2

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v5, 0x5d

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v2, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v5, v10

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    iget v5, v2, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->d(I)V

    goto/16 :goto_c2

    :sswitch_184
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->f(I)V

    goto/16 :goto_c2

    :sswitch_19d
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->f()V

    goto/16 :goto_c2

    :sswitch_1b2
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->j()V

    goto/16 :goto_c2

    :sswitch_1c7
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-nez v2, :cond_1d7

    :cond_1d7
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v5

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v12

    invoke-virtual {v2, v10, v11}, Lcom/jcraft/jsch/Channel;->a(J)V

    invoke-virtual {v2, v12}, Lcom/jcraft/jsch/Channel;->g(I)V

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->a(I)V

    goto/16 :goto_c2

    :sswitch_1ee
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-nez v2, :cond_1fe

    :cond_1fe
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v5

    iput v5, v2, Lcom/jcraft/jsch/Channel;->p:I

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/jcraft/jsch/Channel;->n:Z

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/jcraft/jsch/Channel;->m:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Channel;->a(I)V

    goto/16 :goto_c2

    :sswitch_210
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v5

    if-eqz v5, :cond_256

    move v5, v3

    :goto_225
    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v11

    if-eqz v11, :cond_c2

    const/16 v2, 0x64

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v10

    const-string v12, "exit-status"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_242

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/jcraft/jsch/Channel;->h(I)V

    const/16 v2, 0x63

    :cond_242
    if-eqz v5, :cond_c2

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v11}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_c2

    :cond_256
    move v5, v4

    goto :goto_225

    :sswitch_258
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    const-string v5, "forwarded-tcpip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2bb

    const-string v5, "x11"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27a

    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->b:Z

    if-nez v5, :cond_2bb

    :cond_27a
    const-string v5, "auth-agent@openssh.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_286

    iget-boolean v5, p0, Lcom/jcraft/jsch/Session;->c:Z

    if-nez v5, :cond_2bb

    :cond_286
    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5c

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :sswitch_2a6
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_c2

    const/4 v5, 0x1

    iput v5, v2, Lcom/jcraft/jsch/Channel;->q:I

    goto/16 :goto_c2

    :cond_2bb
    invoke-static {v2}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->b()V

    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Channel "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v2, :cond_2f8

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v10, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2f8
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto/16 :goto_c2

    :sswitch_2fd
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v2

    invoke-static {v2, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v2

    if-eqz v2, :cond_c2

    const/4 v5, 0x0

    iput v5, v2, Lcom/jcraft/jsch/Channel;->q:I

    goto/16 :goto_c2

    :sswitch_312
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v2

    if-eqz v2, :cond_331

    move v2, v3

    :goto_322
    if-eqz v2, :cond_c2

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x52

    invoke-virtual {v6, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_c2

    :cond_331
    move v2, v4

    goto :goto_322

    :sswitch_333
    iget-object v5, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a()Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_c2

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v11, 0x51

    if-ne v2, v11, :cond_34a

    move v2, v3

    :goto_342
    invoke-virtual {v10, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(I)V

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_348} :catch_55

    goto/16 :goto_c2

    :cond_34a
    move v2, v4

    goto :goto_342

    :catch_34c
    move-exception v0

    goto/16 :goto_83

    :catch_34f
    move-exception v0

    goto/16 :goto_83

    :cond_352
    move v2, v4

    move-object v5, v6

    goto/16 :goto_16

    :sswitch_data_356
    .sparse-switch
        0x14 -> :sswitch_be
        0x15 -> :sswitch_c6
        0x50 -> :sswitch_312
        0x51 -> :sswitch_333
        0x52 -> :sswitch_333
        0x5a -> :sswitch_258
        0x5b -> :sswitch_1c7
        0x5c -> :sswitch_1ee
        0x5d -> :sswitch_184
        0x5e -> :sswitch_ce
        0x5f -> :sswitch_12c
        0x60 -> :sswitch_19d
        0x61 -> :sswitch_1b2
        0x62 -> :sswitch_210
        0x63 -> :sswitch_2a6
        0x64 -> :sswitch_2fd
    .end sparse-switch
.end method

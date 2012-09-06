.class public Ljcifs/smb/bj;
.super Ljcifs/util/transport/c;

# interfaces
.implements Ljcifs/smb/az;


# static fields
.field static final a:[B

.field static final b:Ljcifs/smb/ae;

.field static c:Ljcifs/util/e;

.field static d:Ljava/util/HashMap;


# instance fields
.field A:Ljava/lang/String;

.field e:Ljava/net/InetAddress;

.field f:I

.field g:Ljcifs/b;

.field h:Ljava/net/Socket;

.field i:I

.field j:I

.field k:Ljava/io/OutputStream;

.field l:Ljava/io/InputStream;

.field m:[B

.field n:Ljcifs/smb/v;

.field o:J

.field p:Ljava/util/LinkedList;

.field q:Ljcifs/smb/u;

.field r:Ljava/util/LinkedList;

.field s:Ljcifs/smb/bk;

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/bj;->a:[B

    new-instance v0, Ljcifs/smb/ae;

    invoke-direct {v0}, Ljcifs/smb/ae;-><init>()V

    sput-object v0, Ljcifs/smb/bj;->b:Ljcifs/smb/ae;

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/bj;->d:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljcifs/b;ILjava/net/InetAddress;I)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0}, Ljcifs/util/transport/c;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/bj;->m:[B

    new-instance v0, Ljcifs/smb/v;

    invoke-direct {v0}, Ljcifs/smb/v;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bj;->n:Ljcifs/smb/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/bj;->av:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bj;->o:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bj;->p:Ljava/util/LinkedList;

    iput-object v4, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    new-instance v0, Ljcifs/smb/bk;

    invoke-direct {v0, p0}, Ljcifs/smb/bk;-><init>(Ljcifs/smb/bj;)V

    iput-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    sget v0, Ljcifs/smb/bj;->ap:I

    iput v0, p0, Ljcifs/smb/bj;->t:I

    sget v0, Ljcifs/smb/bj;->Y:I

    iput v0, p0, Ljcifs/smb/bj;->u:I

    sget v0, Ljcifs/smb/bj;->Z:I

    iput v0, p0, Ljcifs/smb/bj;->v:I

    sget v0, Ljcifs/smb/bj;->aa:I

    iput v0, p0, Ljcifs/smb/bj;->w:I

    sget v0, Ljcifs/smb/bj;->aq:I

    iput v0, p0, Ljcifs/smb/bj;->x:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/bj;->y:I

    sget-boolean v0, Ljcifs/smb/bj;->ab:Z

    iput-boolean v0, p0, Ljcifs/smb/bj;->z:Z

    iput-object v4, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    iput p2, p0, Ljcifs/smb/bj;->i:I

    iput-object p3, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    iput p4, p0, Ljcifs/smb/bj;->f:I

    return-void
.end method

.method static declared-synchronized a(Ljcifs/b;I)Ljcifs/smb/bj;
    .registers 6

    const-class v1, Ljcifs/smb/bj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljcifs/smb/bj;->W:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/bj;->X:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Ljcifs/smb/bj;->a(Ljcifs/b;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/bj;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljcifs/b;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/bj;
    .registers 14

    const-class v6, Ljcifs/smb/bj;

    monitor-enter v6

    :try_start_3
    sget-object v7, Ljcifs/smb/bj;->at:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_49

    :try_start_6
    sget v0, Ljcifs/smb/bj;->au:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    sget-object v0, Ljcifs/smb/bj;->at:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/bj;->b(Ljcifs/b;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Ljcifs/smb/bj;->au:I

    if-eqz v1, :cond_36

    iget-object v1, v0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Ljcifs/smb/bj;->au:I

    if-ge v1, v2, :cond_11

    :cond_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_46

    :goto_37
    monitor-exit v6

    return-object v0

    :cond_39
    :try_start_39
    new-instance v0, Ljcifs/smb/bj;

    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/smb/bj;-><init>(Ljcifs/b;ILjava/net/InetAddress;I)V

    sget-object v1, Ljcifs/smb/bj;->at:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v7

    goto :goto_37

    :catchall_46
    move-exception v0

    monitor-exit v7
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private a(ILjcifs/smb/t;)V
    .registers 12

    const v8, 0xffff

    const/4 v7, 0x6

    const/4 v6, 0x4

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    monitor-enter v1

    const/16 v0, 0x8b

    if-ne p1, v0, :cond_6e

    :try_start_c
    invoke-virtual {p0}, Ljcifs/smb/bj;->a()V

    :goto_f
    iget v0, p0, Ljcifs/smb/bj;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/bj;->j:I

    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_1c

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/bj;->j:I

    :cond_1c
    sget-object v0, Ljcifs/smb/bj;->b:Ljcifs/smb/ae;

    iget v2, p0, Ljcifs/smb/bj;->j:I

    iput v2, v0, Ljcifs/smb/ae;->q:I

    sget-object v0, Ljcifs/smb/bj;->b:Ljcifs/smb/ae;

    iget-object v2, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljcifs/smb/ae;->a([BI)I

    move-result v0

    and-int v2, v0, v8

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljcifs/util/b;->a(I[BI)I

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v6, :cond_4e

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget-object v3, Ljcifs/smb/bj;->b:Ljcifs/smb/ae;

    invoke-virtual {v2, v3}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v7, :cond_4e

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_4e
    iget-object v2, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljcifs/smb/bj;->d()Ljcifs/util/transport/a;

    move-result-object v2

    if-nez v2, :cond_af

    new-instance v0, Ljava/io/IOException;

    const-string v2, "transport closed in negotiate"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    if-nez p1, :cond_72

    const/16 p1, 0x1bd

    :cond_72
    :try_start_72
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    iget-object v0, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/bj;->f:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_8b
    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v3}, Ljcifs/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/bj;->av:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    goto/16 :goto_f

    :cond_af
    iget-object v2, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/b;->a([BI)S

    move-result v2

    and-int/2addr v2, v8

    const/16 v3, 0x21

    if-lt v2, v3, :cond_c2

    add-int/lit8 v3, v2, 0x4

    iget-object v4, p0, Ljcifs/smb/bj;->m:[B

    array-length v4, v4

    if-le v3, v4, :cond_db

    :cond_c2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid payload size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    iget-object v3, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/bj;->m:[B

    const/16 v5, 0x24

    add-int/lit8 v2, v2, -0x20

    invoke-static {v3, v4, v5, v2}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    iget-object v2, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Ljcifs/smb/t;->b([BI)I

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v6, :cond_105

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v2, p2}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v7, :cond_105

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_72 .. :try_end_106} :catchall_6b

    return-void
.end method


# virtual methods
.method a(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .registers 15

    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;

    move-result-object v1

    const-string v2, "IPC$"

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/bl;

    move-result-object v1

    new-instance v2, Ljcifs/smb/br;

    invoke-direct {v2}, Ljcifs/smb/br;-><init>()V

    new-instance v3, Ljcifs/smb/bq;

    invoke-direct {v3, p2}, Ljcifs/smb/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Ljcifs/smb/bl;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget v1, v2, Ljcifs/smb/br;->S:I

    if-nez v1, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    if-eqz p3, :cond_24

    iget v0, v2, Ljcifs/smb/br;->S:I

    if-ge v0, p3, :cond_26

    :cond_24
    iget p3, v2, Ljcifs/smb/br;->S:I

    :cond_26
    new-instance v1, Ljcifs/smb/DfsReferral;

    invoke-direct {v1}, Ljcifs/smb/DfsReferral;-><init>()V

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ljcifs/smb/d;->c:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    const/4 v0, 0x0

    :goto_39
    iget-boolean v6, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v6, v1, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    iget-object v6, v2, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    aget-object v6, v6, v0

    iget v6, v6, Ljcifs/smb/bs;->a:I

    int-to-long v6, v6

    iput-wide v6, v1, Ljcifs/smb/DfsReferral;->ttl:J

    iput-wide v4, v1, Ljcifs/smb/DfsReferral;->expiration:J

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget-object v6, v2, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    aget-object v6, v6, v0

    iget-object v6, v6, Ljcifs/smb/bs;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    :goto_60
    iget v6, v2, Ljcifs/smb/br;->a:I

    iput v6, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_83

    iget-object v0, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_1d

    :cond_6b
    iget-object v6, v2, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    aget-object v6, v6, v0

    iget-object v6, v6, Ljcifs/smb/bs;->c:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Ljcifs/smb/bj;->a(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v6, v3, v10

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v3, v6

    iput-object v6, v1, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_60

    :cond_83
    new-instance v6, Ljcifs/smb/DfsReferral;

    invoke-direct {v6}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v1, v6}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_39
.end method

.method declared-synchronized a(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/bh;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bh;

    invoke-virtual {v0, p1}, Ljcifs/smb/bh;->a(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object p1, v0, Ljcifs/smb/bh;->f:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4e

    :goto_1b
    monitor-exit p0

    return-object v0

    :cond_1d
    :try_start_1d
    sget v0, Ljcifs/smb/bj;->av:I

    if-lez v0, :cond_51

    iget-wide v0, p0, Ljcifs/smb/bj;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_51

    sget v0, Ljcifs/smb/bj;->av:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/bj;->o:J

    iget-object v0, p0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bh;

    iget-wide v4, v0, Ljcifs/smb/bh;->g:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_37

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljcifs/smb/bh;->a(Z)V
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_4e

    goto :goto_37

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    :try_start_51
    new-instance v0, Ljcifs/smb/bh;

    iget-object v1, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    iget v2, p0, Ljcifs/smb/bj;->i:I

    iget-object v3, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/bj;->f:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/bh;-><init>(Ljcifs/b;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object p0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v1, p0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_4e

    goto :goto_1b
.end method

.method a()V
    .registers 10

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljcifs/netbios/b;

    iget-object v1, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v1}, Ljcifs/b;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_12
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    iget-object v1, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/bj;->f:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_2b
    iget-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v3}, Ljcifs/b;->e()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8b

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, Ljcifs/smb/bj;->av:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    iget-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    new-instance v1, Ljcifs/netbios/k;

    invoke-static {}, Ljcifs/netbios/g;->b()Ljcifs/netbios/b;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljcifs/netbios/k;-><init>(Ljcifs/netbios/b;Ljcifs/netbios/b;)V

    iget-object v2, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    iget-object v4, p0, Ljcifs/smb/bj;->m:[B

    invoke-virtual {v1, v4, v5}, Ljcifs/netbios/l;->b([BI)I

    move-result v1

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/bj;->m:[B

    invoke-static {v1, v2, v5, v8}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v8, :cond_7c

    :try_start_6f
    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_f7

    :goto_74
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF during NetBIOS session request"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_fa

    invoke-virtual {p0, v6}, Ljcifs/smb/bj;->b(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v7, v5}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :sswitch_8e
    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v8, :cond_ae

    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session established ok with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_ae
    return-void

    :sswitch_af
    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_108

    :pswitch_ba
    invoke-virtual {p0, v6}, Ljcifs/smb/bj;->b(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v7, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :pswitch_c3
    iget-object v1, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    iget-object v1, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v1}, Ljcifs/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    if-nez v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to establish session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_ed
    invoke-virtual {p0, v6}, Ljcifs/smb/bj;->b(Z)V

    new-instance v0, Ljcifs/netbios/NbtException;

    const/4 v1, -0x1

    invoke-direct {v0, v7, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :catch_f7
    move-exception v0

    goto/16 :goto_74

    :sswitch_data_fa
    .sparse-switch
        -0x1 -> :sswitch_ed
        0x82 -> :sswitch_8e
        0x83 -> :sswitch_af
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x80
        :pswitch_c3
        :pswitch_ba
        :pswitch_c3
    .end packed-switch
.end method

.method a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    array-length v1, p2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v0

    move v1, v0

    :goto_a
    if-ne v1, v4, :cond_13

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    :cond_12
    return-void

    :cond_13
    if-eq v3, v5, :cond_1d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5c

    if-ne v2, v6, :cond_3d

    :cond_1d
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v0, v3, 0x1

    move v1, v0

    move v0, v2

    :goto_29
    add-int/lit8 v2, v3, 0x1

    if-lt v3, v5, :cond_38

    :goto_2d
    array-length v1, p2

    if-ge v0, v1, :cond_12

    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    aput-object v2, p2, v0

    move v0, v1

    goto :goto_2d

    :cond_38
    move v3, v2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_a

    :cond_3d
    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_29
.end method

.method a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 7

    const/4 v3, 0x0

    iget v0, p2, Ljcifs/smb/t;->l:I

    invoke-static {v0}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p2, Ljcifs/smb/t;->l:I

    iget v0, p2, Ljcifs/smb/t;->l:I

    sparse-switch v0, :sswitch_data_52

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/t;->l:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :sswitch_16
    new-instance v0, Ljcifs/smb/SmbAuthException;

    iget v1, p2, Ljcifs/smb/t;->l:I

    invoke-direct {v0, v1}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :sswitch_1e
    iget-object v0, p1, Ljcifs/smb/t;->z:Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v0, :cond_2a

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/t;->l:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_2a
    iget-object v0, p1, Ljcifs/smb/t;->z:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/bj;->a(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    if-nez v0, :cond_3d

    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, p2, Ljcifs/smb/t;->l:I

    invoke-direct {v0, v1, v3}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :cond_3d
    sget-object v1, Ljcifs/smb/ba;->f:Ljcifs/smb/d;

    iget-object v2, p1, Ljcifs/smb/t;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/d;->a(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    throw v0

    :sswitch_45
    iget-boolean v0, p2, Ljcifs/smb/t;->y:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Signature verification failed."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    return-void

    :sswitch_data_52
    .sparse-switch
        -0x7ffffffb -> :sswitch_45
        -0x3fffffea -> :sswitch_45
        -0x3fffffde -> :sswitch_16
        -0x3fffff96 -> :sswitch_16
        -0x3fffff93 -> :sswitch_16
        -0x3fffff92 -> :sswitch_16
        -0x3fffff91 -> :sswitch_16
        -0x3fffff90 -> :sswitch_16
        -0x3fffff8f -> :sswitch_16
        -0x3fffff8e -> :sswitch_16
        -0x3ffffe74 -> :sswitch_16
        -0x3ffffdcc -> :sswitch_16
        -0x3ffffda9 -> :sswitch_1e
        0x0 -> :sswitch_45
    .end sparse-switch
.end method

.method protected a(Ljcifs/util/transport/a;)V
    .registers 4

    iget v0, p0, Ljcifs/smb/bj;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/bj;->j:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/bj;->j:I

    :cond_d
    check-cast p1, Ljcifs/smb/t;

    iget v0, p0, Ljcifs/smb/bj;->j:I

    iput v0, p1, Ljcifs/smb/t;->q:I

    return-void
.end method

.method protected a(Ljcifs/util/transport/b;)V
    .registers 12

    const/high16 v4, -0x8000

    const/4 v2, 0x0

    const/4 v9, 0x4

    move-object v1, p1

    check-cast v1, Ljcifs/smb/t;

    iget-boolean v3, p0, Ljcifs/smb/bj;->z:Z

    iput-boolean v3, v1, Ljcifs/smb/t;->t:Z

    iget v3, p0, Ljcifs/smb/bj;->x:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    const/4 v2, 0x1

    :cond_11
    iput-boolean v2, v1, Ljcifs/smb/t;->v:Z

    sget-object v3, Ljcifs/smb/bj;->a:[B

    monitor-enter v3

    :try_start_16
    iget-object v2, p0, Ljcifs/smb/bj;->m:[B

    const/4 v4, 0x0

    sget-object v5, Ljcifs/smb/bj;->a:[B

    const/4 v6, 0x0

    const/16 v7, 0x24

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Ljcifs/smb/bj;->a:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/util/b;->a([BI)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v4, v2

    const/16 v2, 0x21

    if-lt v4, v2, :cond_36

    add-int/lit8 v2, v4, 0x4

    iget v5, p0, Ljcifs/smb/bj;->w:I

    if-le v2, v5, :cond_52

    :cond_36
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid payload size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4f
    move-exception v1

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw v1

    :cond_52
    :try_start_52
    sget-object v2, Ljcifs/smb/bj;->a:[B

    const/16 v5, 0x9

    invoke-static {v2, v5}, Ljcifs/util/b;->d([BI)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    iget-byte v5, v1, Ljcifs/smb/t;->g:B

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_ce

    if-eqz v2, :cond_69

    const v5, -0x7ffffffb

    if-ne v2, v5, :cond_ce

    :cond_69
    move-object v0, v1

    check-cast v0, Ljcifs/smb/am;

    move-object v2, v0

    iget-object v5, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    sget-object v6, Ljcifs/smb/bj;->a:[B

    const/16 v7, 0x24

    const/16 v8, 0x1b

    invoke-static {v5, v6, v7, v8}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    sget-object v5, Ljcifs/smb/bj;->a:[B

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Ljcifs/smb/t;->b([BI)I

    iget v5, v2, Ljcifs/smb/am;->E:I

    add-int/lit8 v5, v5, -0x3b

    iget v6, v2, Ljcifs/smb/am;->s:I

    if-lez v6, :cond_93

    if-lez v5, :cond_93

    if-ge v5, v9, :cond_93

    iget-object v6, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    sget-object v7, Ljcifs/smb/bj;->a:[B

    const/16 v8, 0x3f

    invoke-static {v6, v7, v8, v5}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    :cond_93
    iget v5, v2, Ljcifs/smb/am;->D:I

    if-lez v5, :cond_a2

    iget-object v5, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v6, v2, Ljcifs/smb/am;->b:[B

    iget v7, v2, Ljcifs/smb/am;->c:I

    iget v2, v2, Ljcifs/smb/am;->D:I

    invoke-static {v5, v6, v7, v2}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    :cond_a2
    :goto_a2
    iget-object v2, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    if-eqz v2, :cond_b2

    iget v2, v1, Ljcifs/smb/t;->l:I

    if-nez v2, :cond_b2

    iget-object v2, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    sget-object v5, Ljcifs/smb/bj;->a:[B

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6, v1}, Ljcifs/smb/u;->a([BILjcifs/smb/t;)Z

    :cond_b2
    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lt v1, v9, :cond_cc

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v1, p1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_cc

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget-object v2, Ljcifs/smb/bj;->a:[B

    const/4 v5, 0x4

    invoke-static {v1, v2, v5, v4}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_cc
    monitor-exit v3

    return-void

    :cond_ce
    iget-object v2, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    sget-object v5, Ljcifs/smb/bj;->a:[B

    const/16 v6, 0x24

    add-int/lit8 v7, v4, -0x20

    invoke-static {v2, v5, v6, v7}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    sget-object v2, Ljcifs/smb/bj;->a:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v5}, Ljcifs/smb/t;->b([BI)I

    instance-of v2, v1, Ljcifs/smb/ar;

    if-eqz v2, :cond_a2

    move-object v0, v1

    check-cast v0, Ljcifs/smb/ar;

    move-object v2, v0

    invoke-virtual {v2}, Ljcifs/smb/ar;->nextElement()Ljava/lang/Object;
    :try_end_ea
    .catchall {:try_start_52 .. :try_end_ea} :catchall_4f

    goto :goto_a2
.end method

.method protected a(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/bj;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_7
    :try_start_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bh;

    invoke-virtual {v0, p1}, Ljcifs/smb/bh;->a(Z)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    iput-object v2, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    iput-object v2, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    iput-object v2, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    throw v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_17
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_3a

    :goto_24
    :try_start_24
    iget-object v0, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_17

    iput-object v2, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    iput-object v2, p0, Ljcifs/smb/bj;->h:Ljava/net/Socket;

    iput-object v2, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    return-void

    :catch_3a
    move-exception v0

    goto :goto_24
.end method

.method a(I)Z
    .registers 5

    :try_start_0
    sget v0, Ljcifs/smb/bj;->as:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/bj;->a(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_d

    iget v0, p0, Ljcifs/smb/bj;->x:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_18

    const/4 v0, 0x1

    :goto_c
    return v0

    :catch_d
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()V
    .registers 5

    :try_start_0
    sget v0, Ljcifs/smb/bj;->as:I

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, Ljcifs/util/transport/c;->a(J)V
    :try_end_6
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method b(Ljcifs/smb/t;Ljcifs/smb/t;)V
    .registers 10

    invoke-virtual {p0}, Ljcifs/smb/bj;->b()V

    iget v1, p1, Ljcifs/smb/t;->m:I

    iget v2, p0, Ljcifs/smb/bj;->t:I

    or-int/2addr v1, v2

    iput v1, p1, Ljcifs/smb/t;->m:I

    iget-boolean v1, p0, Ljcifs/smb/bj;->z:Z

    iput-boolean v1, p1, Ljcifs/smb/t;->t:Z

    iput-object p2, p1, Ljcifs/smb/t;->C:Ljcifs/smb/t;

    iget-object v1, p1, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    if-nez v1, :cond_18

    iget-object v1, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    iput-object v1, p1, Ljcifs/smb/t;->B:Ljcifs/smb/u;

    :cond_18
    if-nez p2, :cond_1e

    :try_start_1a
    invoke-virtual {p0, p1}, Ljcifs/smb/bj;->c(Ljcifs/util/transport/a;)V

    :goto_1d
    return-void

    :cond_1e
    instance-of v1, p1, Ljcifs/smb/aq;

    if-eqz v1, :cond_ed

    iget-byte v1, p1, Ljcifs/smb/t;->g:B

    iput-byte v1, p2, Ljcifs/smb/t;->g:B

    move-object v0, p1

    check-cast v0, Ljcifs/smb/aq;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Ljcifs/smb/ar;

    move-object v2, v0

    iget v3, p0, Ljcifs/smb/bj;->v:I

    iput v3, v1, Ljcifs/smb/aq;->U:I

    invoke-virtual {v2}, Ljcifs/smb/ar;->e()V
    :try_end_35
    .catch Ljcifs/smb/SmbException; {:try_start_1a .. :try_end_35} :catch_cb
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_35} :catch_f8

    :try_start_35
    invoke-static {v1, v2}, Ljcifs/smb/c;->a(Ljcifs/smb/aq;Ljcifs/smb/ar;)V

    invoke-virtual {v1}, Ljcifs/smb/aq;->nextElement()Ljava/lang/Object;

    invoke-virtual {v1}, Ljcifs/smb/aq;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_cd

    new-instance v3, Ljcifs/smb/v;

    invoke-direct {v3}, Ljcifs/smb/v;-><init>()V

    sget v4, Ljcifs/smb/bj;->as:I

    int-to-long v4, v4

    invoke-super {p0, v1, v3, v4, v5}, Ljcifs/util/transport/c;->a(Ljcifs/util/transport/a;Ljcifs/util/transport/b;J)V

    iget v4, v3, Ljcifs/smb/v;->l:I

    if-eqz v4, :cond_53

    invoke-virtual {p0, v1, v3}, Ljcifs/smb/bj;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :cond_53
    invoke-virtual {v1}, Ljcifs/smb/aq;->nextElement()Ljava/lang/Object;

    :goto_56
    monitor-enter p0
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_bf

    const/4 v3, 0x0

    :try_start_58
    iput-boolean v3, p2, Ljcifs/smb/t;->u:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljcifs/smb/ar;->d_:Z
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_bc

    :try_start_5d
    iget-object v3, p0, Ljcifs/smb/bj;->H:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    invoke-virtual {p0, v1}, Ljcifs/smb/bj;->c(Ljcifs/util/transport/a;)V

    invoke-virtual {v1}, Ljcifs/smb/aq;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {v1}, Ljcifs/smb/aq;->nextElement()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_62

    :cond_71
    sget v3, Ljcifs/smb/bj;->as:I

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Ljcifs/smb/ar;->c_:J

    :cond_7b
    invoke-virtual {v2}, Ljcifs/smb/ar;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-wide v3, v2, Ljcifs/smb/ar;->c_:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_7b

    new-instance v3, Ljcifs/util/transport/TransportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timedout waiting for response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_ae
    .catchall {:try_start_5d .. :try_end_ae} :catchall_b5
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v3

    :try_start_af
    new-instance v4, Ljcifs/util/transport/TransportException;

    invoke-direct {v4, v3}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v3

    :try_start_b6
    iget-object v4, p0, Ljcifs/smb/bj;->H:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    :catchall_bc
    move-exception v3

    monitor-exit p0
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_bc

    :try_start_be
    throw v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v3

    :try_start_c0
    iget-object v1, v1, Ljcifs/smb/aq;->V:[B

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V

    iget-object v1, v2, Ljcifs/smb/ar;->O:[B

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V

    throw v3
    :try_end_cb
    .catch Ljcifs/smb/SmbException; {:try_start_c0 .. :try_end_cb} :catch_cb
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cb} :catch_f8

    :catch_cb
    move-exception v1

    throw v1

    :cond_cd
    :try_start_cd
    invoke-virtual {p0, v1}, Ljcifs/smb/bj;->a(Ljcifs/util/transport/a;)V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_bf

    goto :goto_56

    :cond_d1
    :try_start_d1
    iget v3, p2, Ljcifs/smb/t;->l:I

    if-eqz v3, :cond_d8

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/bj;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_b5
    .catch Ljava/lang/InterruptedException; {:try_start_d1 .. :try_end_d8} :catch_ae

    :cond_d8
    :try_start_d8
    iget-object v3, p0, Ljcifs/smb/bj;->H:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_de
    .catchall {:try_start_d8 .. :try_end_de} :catchall_bc

    :try_start_de
    iget-object v1, v1, Ljcifs/smb/aq;->V:[B

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V

    iget-object v1, v2, Ljcifs/smb/ar;->O:[B

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V
    :try_end_e8
    .catch Ljcifs/smb/SmbException; {:try_start_de .. :try_end_e8} :catch_cb
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e8} :catch_f8

    :goto_e8
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bj;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto/16 :goto_1d

    :cond_ed
    :try_start_ed
    iget-byte v1, p1, Ljcifs/smb/t;->g:B

    iput-byte v1, p2, Ljcifs/smb/t;->g:B

    sget v1, Ljcifs/smb/bj;->as:I

    int-to-long v1, v1

    invoke-super {p0, p1, p2, v1, v2}, Ljcifs/util/transport/c;->a(Ljcifs/util/transport/a;Ljcifs/util/transport/b;J)V
    :try_end_f7
    .catch Ljcifs/smb/SmbException; {:try_start_ed .. :try_end_f7} :catch_cb
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f7} :catch_f8

    goto :goto_e8

    :catch_f8
    move-exception v1

    new-instance v2, Ljcifs/smb/SmbException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected b(Ljcifs/util/transport/a;)V
    .registers 8

    const/4 v5, 0x4

    sget-object v1, Ljcifs/smb/bj;->a:[B

    monitor-enter v1

    :try_start_4
    check-cast p1, Ljcifs/smb/t;

    sget-object v0, Ljcifs/smb/bj;->a:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Ljcifs/smb/t;->a([BI)I

    move-result v2

    const v0, 0xffff

    and-int/2addr v0, v2

    sget-object v3, Ljcifs/smb/bj;->a:[B

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ljcifs/util/b;->a(I[BI)I

    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v5, :cond_3c

    move-object v0, p1

    :cond_1e
    sget-object v3, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v3, v0}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    instance-of v3, v0, Ljcifs/smb/b;

    if-eqz v3, :cond_2d

    check-cast v0, Ljcifs/smb/b;

    iget-object v0, v0, Ljcifs/smb/b;->a:Ljcifs/smb/t;

    if-nez v0, :cond_1e

    :cond_2d
    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_3c

    sget-object v0, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget-object v3, Ljcifs/smb/bj;->a:[B

    const/4 v4, 0x4

    invoke-static {v0, v3, v4, v2}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_3c
    iget-object v0, p0, Ljcifs/smb/bj;->k:Ljava/io/OutputStream;

    sget-object v3, Ljcifs/smb/bj;->a:[B

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit v1

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method b(Ljcifs/b;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .registers 8

    if-nez p5, :cond_6

    invoke-virtual {p1}, Ljcifs/b;->d()Ljava/lang/String;

    move-result-object p5

    :cond_6
    iget-object v0, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_12
    iget-object v0, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {p1, v0}, Ljcifs/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p2, :cond_2a

    iget v0, p0, Ljcifs/smb/bj;->i:I

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x1bd

    if-ne p2, v0, :cond_3e

    iget v0, p0, Ljcifs/smb/bj;->i:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_3e

    :cond_2a
    iget-object v0, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    if-eq p3, v0, :cond_38

    if-eqz p3, :cond_3e

    iget-object v0, p0, Ljcifs/smb/bj;->e:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_38
    iget v0, p0, Ljcifs/smb/bj;->f:I

    if-ne p4, v0, :cond_3e

    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method b(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3

    iget v0, p0, Ljcifs/smb/bj;->t:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljcifs/smb/bj;->q:Ljcifs/smb/u;

    if-nez v0, :cond_18

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_18

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected c()V
    .registers 7

    const/16 v1, 0x8b

    const/4 v5, 0x1

    const/16 v0, 0x1bd

    const/high16 v4, -0x8000

    new-instance v2, Ljcifs/smb/af;

    iget-object v3, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    invoke-direct {v2, v3}, Ljcifs/smb/af;-><init>(Ljcifs/smb/bk;)V

    :try_start_e
    iget v3, p0, Ljcifs/smb/bj;->i:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/bj;->a(ILjcifs/smb/t;)V
    :try_end_13
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_13} :catch_21
    .catch Ljava/net/NoRouteToHostException; {:try_start_e .. :try_end_13} :catch_33

    :goto_13
    iget v0, v2, Ljcifs/smb/af;->a:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_45

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "This client does not support the negotiated dialect."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_21
    move-exception v3

    iget v3, p0, Ljcifs/smb/bj;->i:I

    if-eqz v3, :cond_2a

    iget v3, p0, Ljcifs/smb/bj;->i:I

    if-ne v3, v0, :cond_2b

    :cond_2a
    move v0, v1

    :cond_2b
    iput v0, p0, Ljcifs/smb/bj;->i:I

    iget v0, p0, Ljcifs/smb/bj;->i:I

    invoke-direct {p0, v0, v2}, Ljcifs/smb/bj;->a(ILjcifs/smb/t;)V

    goto :goto_13

    :catch_33
    move-exception v3

    iget v3, p0, Ljcifs/smb/bj;->i:I

    if-eqz v3, :cond_3c

    iget v3, p0, Ljcifs/smb/bj;->i:I

    if-ne v3, v0, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    iput v0, p0, Ljcifs/smb/bj;->i:I

    iget v0, p0, Ljcifs/smb/bj;->i:I

    invoke-direct {p0, v0, v2}, Ljcifs/smb/bj;->a(ILjcifs/smb/t;)V

    goto :goto_13

    :cond_45
    iget-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_75

    iget-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->o:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_75

    sget v0, Ljcifs/smb/bj;->ai:I

    if-nez v0, :cond_75

    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected encryption key length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v0, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v0}, Ljcifs/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/bj;->A:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-boolean v0, v0, Ljcifs/smb/bk;->j:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-boolean v0, v0, Ljcifs/smb/bk;->i:Z

    if-eqz v0, :cond_d7

    sget-boolean v0, Ljcifs/smb/bj;->ae:Z

    if-eqz v0, :cond_d7

    :cond_8d
    iget v0, p0, Ljcifs/smb/bj;->t:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/bj;->t:I

    :goto_93
    iget v0, p0, Ljcifs/smb/bj;->u:I

    iget-object v1, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/bj;->u:I

    iget v0, p0, Ljcifs/smb/bj;->u:I

    if-ge v0, v5, :cond_a5

    iput v5, p0, Ljcifs/smb/bj;->u:I

    :cond_a5
    iget v0, p0, Ljcifs/smb/bj;->v:I

    iget-object v1, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/bj;->v:I

    iget v0, p0, Ljcifs/smb/bj;->x:I

    iget-object v1, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->d:I

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/bj;->x:I

    iget-object v0, p0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->d:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_c6

    iget v0, p0, Ljcifs/smb/bj;->x:I

    or-int/2addr v0, v4

    iput v0, p0, Ljcifs/smb/bj;->x:I

    :cond_c6
    iget v0, p0, Ljcifs/smb/bj;->x:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d6

    sget-boolean v0, Ljcifs/smb/bj;->ac:Z

    if-eqz v0, :cond_e0

    iget v0, p0, Ljcifs/smb/bj;->x:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/bj;->x:I

    :cond_d6
    :goto_d6
    return-void

    :cond_d7
    iget v0, p0, Ljcifs/smb/bj;->t:I

    const v1, 0xfffb

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/bj;->t:I

    goto :goto_93

    :cond_e0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/bj;->z:Z

    iget v0, p0, Ljcifs/smb/bj;->t:I

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, Ljcifs/smb/bj;->t:I

    goto :goto_d6
.end method

.method protected c(Ljcifs/util/transport/a;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/bj;->b(Ljcifs/util/transport/a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_11

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_11
    const/4 v1, 0x1

    :try_start_12
    invoke-virtual {p0, v1}, Ljcifs/smb/bj;->b(Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    :goto_15
    throw v0

    :catch_16
    move-exception v1

    sget-object v2, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_15
.end method

.method protected d()Ljcifs/util/transport/a;
    .registers 9

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/16 v5, 0x20

    const/4 v2, 0x0

    const/4 v6, 0x4

    :cond_6
    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    invoke-static {v1, v3, v2, v6}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v6, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    aget-byte v1, v1, v2

    const/16 v3, -0x7b

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    invoke-static {v1, v3, v6, v5}, Ljcifs/smb/bj;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v5, :cond_10

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lt v1, v6, :cond_48

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New data read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/smb/bj;->c:Ljcifs/util/e;

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    invoke-static {v1, v3, v6, v5}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_48
    :goto_48
    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    aget-byte v1, v1, v2

    if-nez v1, :cond_89

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    if-nez v1, :cond_89

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    aget-byte v1, v1, v6

    if-ne v1, v7, :cond_89

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x5

    aget-byte v1, v1, v3

    const/16 v3, 0x53

    if-ne v1, v3, :cond_89

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x6

    aget-byte v1, v1, v3

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_89

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    const/4 v3, 0x7

    aget-byte v1, v1, v3

    const/16 v3, 0x42

    if-ne v1, v3, :cond_89

    iget-object v0, p0, Ljcifs/smb/bj;->n:Ljcifs/smb/v;

    iget-object v1, p0, Ljcifs/smb/bj;->m:[B

    const/16 v2, 0x22

    invoke-static {v1, v2}, Ljcifs/util/b;->c([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Ljcifs/smb/v;->q:I

    iget-object v0, p0, Ljcifs/smb/bj;->n:Ljcifs/smb/v;

    goto :goto_10

    :cond_89
    move v1, v2

    :goto_8a
    const/16 v3, 0x23

    if-ge v1, v3, :cond_9b

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    iget-object v4, p0, Ljcifs/smb/bj;->m:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_9b
    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v7, :cond_10

    iget-object v3, p0, Ljcifs/smb/bj;->m:[B

    const/16 v4, 0x23

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    goto :goto_48
.end method

.method protected e()V
    .registers 5

    iget-object v0, p0, Ljcifs/smb/bj;->m:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljcifs/util/b;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_15

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ljcifs/smb/bj;->w:I

    if-le v1, v2, :cond_22

    :cond_15
    iget-object v0, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :goto_21
    return-void

    :cond_22
    iget-object v1, p0, Ljcifs/smb/bj;->l:Ljava/io/InputStream;

    add-int/lit8 v0, v0, -0x20

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/util/transport/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/bj;->g:Ljcifs/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/bj;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

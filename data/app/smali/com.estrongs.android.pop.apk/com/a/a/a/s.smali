.class public Lcom/a/a/a/s;
.super Lcom/a/a/a/t;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:I

.field private static p:I


# instance fields
.field private j:La/b/f;

.field private k:Lcom/a/a/a/p;

.field private l:Z

.field private volatile m:Z

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/a/a/a/s;->a:I

    return-void
.end method

.method constructor <init>(La/a/a/e;La/b/f;La/b/a;Lcom/a/a/a/i;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Lcom/a/a/a/t;-><init>(La/a/a/e;Lcom/a/a/a/i;)V

    iput-boolean v0, p0, Lcom/a/a/a/s;->l:Z

    iput-boolean v0, p0, Lcom/a/a/a/s;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/s;->n:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/a/a/a/s;->i:Z

    iput-object p2, p0, Lcom/a/a/a/s;->j:La/b/f;

    iput-object p3, p0, Lcom/a/a/a/s;->e:La/b/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OBEXServerSessionThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a/s;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/s;->o:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/a/a/a/s;->o:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private a([B)V
    .registers 10

    const/16 v7, 0x10

    const/4 v3, 0x7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v0, "Connect operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    aget-byte v0, p1, v5

    if-eq v0, v7, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported client OBEX version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    array-length v0, p1

    if-ge v0, v3, :cond_31

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted OBEX data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/a/a/a/v;->a(BB)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_54

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid MTU "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    iput v0, p0, Lcom/a/a/a/s;->d:I

    const-string v0, "mtu selected"

    iget v1, p0, Lcom/a/a/a/s;->d:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/a/a/a/s;->c()Lcom/a/a/a/j;

    move-result-object v2

    invoke-static {p1, v3}, Lcom/a/a/a/j;->b([BI)Lcom/a/a/a/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;)Z

    move-result v0

    if-nez v0, :cond_94

    const/16 v0, 0xc1

    :goto_6e
    const/4 v1, 0x4

    new-array v1, v1, [B

    aput-byte v7, v1, v4

    aput-byte v4, v1, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/a/a/a/s;->f:Lcom/a/a/a/i;

    iget v4, v4, Lcom/a/a/a/i;->c:I

    invoke-static {v4}, Lcom/a/a/a/v;->a(I)B

    move-result v4

    aput-byte v4, v1, v3

    iget-object v3, p0, Lcom/a/a/a/s;->f:Lcom/a/a/a/i;

    iget v3, v3, Lcom/a/a/a/i;->c:I

    invoke-static {v3}, Lcom/a/a/a/v;->b(I)B

    move-result v3

    aput-byte v3, v1, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/a/a/a/s;->a(I[BLcom/a/a/a/j;)V

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_93

    iput-boolean v6, p0, Lcom/a/a/a/s;->b:Z

    :cond_93
    return-void

    :cond_94
    invoke-virtual {p0, v1, v2}, Lcom/a/a/a/s;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    const/16 v0, 0xd0

    :try_start_99
    iget-object v3, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {v3, v1, v2}, La/b/f;->a(La/b/c;La/b/c;)I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9e} :catch_a0

    move-result v0

    goto :goto_6e

    :catch_a0
    move-exception v1

    const-string v3, "onConnect"

    invoke-static {v3, v1}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e
.end method

.method private a([BZ)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "Put/Delete operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/a/a/a/j;->b([BI)Lcom/a/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;La/b/f;)Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v0, 0xc1

    invoke-virtual {p0, v0, v3}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_c

    :cond_20
    if-eqz p2, :cond_2c

    invoke-virtual {v0}, Lcom/a/a/a/j;->c()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/a/a/a/s;->b(Lcom/a/a/a/j;)V

    goto :goto_c

    :cond_2c
    const-string v1, "Put operation"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/a/a/a/r;

    invoke-direct {v1, p0, v0, p2}, Lcom/a/a/a/r;-><init>(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)V

    iput-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    :try_start_38
    iget-object v0, p0, Lcom/a/a/a/s;->j:La/b/f;

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0, v1}, La/b/f;->a(La/b/d;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_5d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3f} :catch_53

    move-result v0

    :goto_40
    :try_start_40
    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    iget-boolean v1, v1, Lcom/a/a/a/p;->e:Z

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v1, v0}, Lcom/a/a/a/p;->a(I)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_5d

    :cond_4b
    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0}, Lcom/a/a/a/p;->e()V

    iput-object v3, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    goto :goto_c

    :catch_53
    move-exception v0

    const/16 v1, 0xd3

    :try_start_56
    const-string v2, "onPut"

    invoke-static {v2, v0}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5d

    move v0, v1

    goto :goto_40

    :catchall_5d
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v1}, Lcom/a/a/a/p;->e()V

    iput-object v3, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    throw v0
.end method

.method private b(Lcom/a/a/a/j;)V
    .registers 6

    const-string v0, "Delete operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a/s;->c()Lcom/a/a/a/j;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/a/a/a/s;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    :try_start_c
    iget-object v0, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {v0, p1, v2}, La/b/f;->c(La/b/c;La/b/c;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_16

    move-result v0

    :goto_12
    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    return-void

    :catch_16
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onDelete"

    invoke-static {v3, v1}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method private b([B)V
    .registers 6

    const-string v0, "Disconnect operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/a/a/a/j;->b([BI)Lcom/a/a/a/j;

    move-result-object v1

    invoke-static {}, Lcom/a/a/a/s;->c()Lcom/a/a/a/j;

    move-result-object v2

    const/16 v0, 0xa0

    :try_start_17
    iget-object v3, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {v3, v1, v2}, La/b/f;->b(La/b/c;La/b/c;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_23

    :goto_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/a/s;->b:Z

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_b

    :catch_23
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onDisconnect"

    invoke-static {v3, v1}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private b([BZ)V
    .registers 7

    const/4 v3, 0x0

    const-string v0, "Get operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/a/a/a/j;->b([BI)Lcom/a/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;La/b/f;)Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v0, 0xc1

    invoke-virtual {p0, v0, v3}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_c

    :cond_20
    new-instance v1, Lcom/a/a/a/q;

    invoke-direct {v1, p0, v0, p2}, Lcom/a/a/a/q;-><init>(Lcom/a/a/a/s;Lcom/a/a/a/j;Z)V

    iput-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    :try_start_27
    iget-object v0, p0, Lcom/a/a/a/s;->j:La/b/f;

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0, v1}, La/b/f;->b(La/b/d;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_4c
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2e} :catch_42

    move-result v0

    :goto_2f
    :try_start_2f
    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    iget-boolean v1, v1, Lcom/a/a/a/p;->e:Z

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v1, v0}, Lcom/a/a/a/p;->a(I)V
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_4c

    :cond_3a
    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0}, Lcom/a/a/a/p;->e()V

    iput-object v3, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    goto :goto_c

    :catch_42
    move-exception v0

    const/16 v1, 0xd3

    :try_start_45
    const-string v2, "onGet"

    invoke-static {v2, v0}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4c

    move v0, v1

    goto :goto_2f

    :catchall_4c
    move-exception v0

    iget-object v1, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v1}, Lcom/a/a/a/p;->e()V

    iput-object v3, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    throw v0
.end method

.method private c([BZ)V
    .registers 8

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "SetPath operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    array-length v0, p1

    if-ge v0, v3, :cond_1b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted OBEX data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static {p1, v3}, Lcom/a/a/a/j;->b([BI)Lcom/a/a/a/j;

    move-result-object v3

    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_45

    move v0, v1

    :goto_26
    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_47

    :goto_2c
    const-string v2, "setPath backup"

    invoke-static {v2, v0}, Lcom/a/a/a;->a(Ljava/lang/String;Z)V

    const-string v2, "setPath create"

    invoke-static {v2, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {p0, v3, v2}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;La/b/f;)Z

    move-result v2

    if-nez v2, :cond_49

    const/16 v0, 0xc1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_f

    :cond_45
    move v0, v2

    goto :goto_26

    :cond_47
    move v1, v2

    goto :goto_2c

    :cond_49
    invoke-static {}, Lcom/a/a/a/s;->c()Lcom/a/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/a/a/a/s;->b(Lcom/a/a/a/j;Lcom/a/a/a/j;)V

    :try_start_50
    iget-object v4, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {v4, v3, v2, v0, v1}, La/b/f;->a(La/b/c;La/b/c;ZZ)I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_55} :catch_5a

    move-result v0

    :goto_56
    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_f

    :catch_5a
    move-exception v0

    move-object v1, v0

    const/16 v0, 0xd3

    const-string v3, "onSetPath"

    invoke-static {v3, v1}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_56
.end method

.method private static declared-synchronized g()I
    .registers 3

    const-class v1, Lcom/a/a/a/s;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/a/a/a/s;->p:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/a/a/a/s;->p:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "OBEXServerSession handleRequest"

    invoke-static {v2}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/a/a/a/s;->m:Z

    :try_start_9
    invoke-virtual {p0}, Lcom/a/a/a/s;->f()[B
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_c} :catch_35

    move-result-object v3

    iput-boolean v0, p0, Lcom/a/a/a/s;->m:Z

    const/4 v2, 0x0

    :try_start_10
    aget-byte v2, v3, v2

    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v2, v4, 0x80

    if-eqz v2, :cond_45

    move v2, v0

    :goto_19
    if-eqz v2, :cond_20

    const-string v5, "OBEXServerSession got operation finalPacket"

    invoke-static {v5}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :cond_20
    sparse-switch v4, :sswitch_data_66

    const/16 v2, 0xd1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_4b

    :goto_29
    iput-boolean v1, p0, Lcom/a/a/a/s;->m:Z

    iget-object v1, p0, Lcom/a/a/a/s;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-object v2, p0, Lcom/a/a/a/s;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_63

    :goto_34
    return v0

    :catch_35
    move-exception v0

    iget-boolean v2, p0, Lcom/a/a/a/s;->b:Z

    if-eqz v2, :cond_3b

    throw v0

    :cond_3b
    const-string v0, "OBEXServerSession got EOF"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/a/s;->e()V

    move v0, v1

    goto :goto_34

    :cond_45
    move v2, v1

    goto :goto_19

    :sswitch_47
    :try_start_47
    invoke-direct {p0, v3}, Lcom/a/a/a/s;->a([B)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_29

    :catchall_4b
    move-exception v0

    iput-boolean v1, p0, Lcom/a/a/a/s;->m:Z

    throw v0

    :sswitch_4f
    :try_start_4f
    invoke-direct {p0, v3}, Lcom/a/a/a/s;->b([B)V

    goto :goto_29

    :sswitch_53
    invoke-direct {p0, v3, v2}, Lcom/a/a/a/s;->a([BZ)V

    goto :goto_29

    :sswitch_57
    invoke-direct {p0, v3, v2}, Lcom/a/a/a/s;->c([BZ)V

    goto :goto_29

    :sswitch_5b
    invoke-direct {p0}, Lcom/a/a/a/s;->j()V

    goto :goto_29

    :sswitch_5f
    invoke-direct {p0, v3, v2}, Lcom/a/a/a/s;->b([BZ)V
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_4b

    goto :goto_29

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    :sswitch_data_66
    .sparse-switch
        0x2 -> :sswitch_53
        0x3 -> :sswitch_5f
        0x5 -> :sswitch_57
        0x80 -> :sswitch_47
        0x81 -> :sswitch_4f
        0x82 -> :sswitch_53
        0x83 -> :sswitch_5f
        0x85 -> :sswitch_57
        0xff -> :sswitch_5b
    .end sparse-switch
.end method

.method private i()Z
    .registers 3

    iget-boolean v0, p0, Lcom/a/a/a/s;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xc0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Abort operation"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/a/a/p;->e:Z

    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0}, Lcom/a/a/a/p;->e()V

    iput-object v2, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_c

    :cond_23
    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/s;->a(ILcom/a/a/a/j;)V

    goto :goto_c
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/s;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Lcom/a/a/a/j;)Z
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/s;->j:La/b/f;

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/s;->a(Lcom/a/a/a/j;La/b/f;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Z
    .registers 2

    invoke-super {p0}, Lcom/a/a/a/t;->b()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/s;->l:Z

    :goto_3
    iget-boolean v0, p0, Lcom/a/a/a/s;->m:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/a/a/a/s;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "OBEXServerSession close"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    invoke-virtual {v0}, Lcom/a/a/a/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/s;->k:Lcom/a/a/a/p;

    :cond_1e
    invoke-super {p0}, Lcom/a/a/a/t;->e()V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/a/a/a/s;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    iget-boolean v0, p0, Lcom/a/a/a/s;->m:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/a/a/a/s;->n:Ljava/lang/Object;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_30} :catch_38

    :cond_30
    :goto_30
    const/4 v0, 0x0

    :try_start_31
    iput-boolean v0, p0, Lcom/a/a/a/s;->m:Z

    monitor-exit v1

    goto :goto_3

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw v0

    :catch_38
    move-exception v0

    goto :goto_30
.end method

.method public run()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/a/a/a/s;->b()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/a/a/a/s;->l:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_53
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_2c

    if-eqz v0, :cond_16

    :cond_d
    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :try_start_12
    invoke-super {p0}, Lcom/a/a/a/t;->e()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_6a

    :goto_15
    return-void

    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/a/a/a/s;->h()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_53
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_2c

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :try_start_21
    invoke-super {p0}, Lcom/a/a/a/t;->e()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_15

    :catch_25
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_2c
    move-exception v0

    :try_start_2d
    const-class v1, Lcom/a/a/a/s;

    monitor-enter v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_53

    :try_start_30
    sget v2, Lcom/a/a/a/s;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/a/a/a/s;->a:I

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_50

    :try_start_37
    iget-boolean v1, p0, Lcom/a/a/a/s;->b:Z

    if-eqz v1, :cond_5d

    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/a/a/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_53

    :goto_40
    const-string v0, "OBEXServerSession ends"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :try_start_45
    invoke-super {p0}, Lcom/a/a/a/t;->e()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_15

    :catch_49
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    const-string v1, "OBEXServerSession ends"

    invoke-static {v1}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    :try_start_59
    invoke-super {p0}, Lcom/a/a/a/t;->e()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_63

    :goto_5c
    throw v0

    :cond_5d
    :try_start_5d
    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_53

    goto :goto_40

    :catch_63
    move-exception v1

    const-string v2, "OBEXServerSession close error"

    invoke-static {v2, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c

    :catch_6a
    move-exception v0

    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

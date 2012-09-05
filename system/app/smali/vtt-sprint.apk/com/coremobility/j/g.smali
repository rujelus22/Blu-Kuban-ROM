.class public final Lcom/coremobility/j/g;
.super Ljava/lang/Thread;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:I

.field private E:Lcom/coremobility/j/c;

.field private F:Z

.field private a:Z

.field private b:Z

.field private c:I

.field private d:Lcom/coremobility/integration/e/d;

.field private e:Z

.field private f:Z

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/util/Hashtable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:[B

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/io/InputStream;

.field private q:Ljava/util/Hashtable;

.field private r:Z

.field private s:Z

.field private t:Lcom/coremobility/j/d;

.field private u:I

.field private v:I

.field private w:[B

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/coremobility/j/c;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "CM_HttpThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/coremobility/j/g;->a:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->b:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->e:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->f:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iput v1, p0, Lcom/coremobility/j/g;->i:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->j:Z

    iput v1, p0, Lcom/coremobility/j/g;->k:I

    iput-object v2, p0, Lcom/coremobility/j/g;->l:[B

    iput v1, p0, Lcom/coremobility/j/g;->m:I

    iput v1, p0, Lcom/coremobility/j/g;->n:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->o:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->r:Z

    iput-boolean v1, p0, Lcom/coremobility/j/g;->s:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iput v1, p0, Lcom/coremobility/j/g;->u:I

    iput v1, p0, Lcom/coremobility/j/g;->v:I

    iput-object v2, p0, Lcom/coremobility/j/g;->w:[B

    iput v1, p0, Lcom/coremobility/j/g;->x:I

    iput v1, p0, Lcom/coremobility/j/g;->y:I

    iput-boolean v1, p0, Lcom/coremobility/j/g;->z:Z

    iput-object v2, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->F:Z

    iput-object p1, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/j/g;->B:I

    const v0, 0xea60

    iput v0, p0, Lcom/coremobility/j/g;->C:I

    iput p3, p0, Lcom/coremobility/j/g;->D:I

    iput-object p4, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iput-boolean v1, p0, Lcom/coremobility/j/g;->F:Z

    new-instance v0, Lcom/coremobility/integration/e/d;

    invoke-direct {v0}, Lcom/coremobility/integration/e/d;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->a()V

    return-void
.end method

.method private g()V
    .registers 11

    const/4 v9, 0x1

    const/16 v2, 0x2e

    const/16 v8, 0x2c

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_12

    const-string v0, "HttpThead, conn released"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_11
    return-void

    :cond_12
    :try_start_12
    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-ge v0, v8, :cond_26

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-gez v0, :cond_26

    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    :cond_26
    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http response, responseCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/g;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/j/d;

    iget v1, p0, Lcom/coremobility/j/g;->c:I

    iget-object v2, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v2}, Lcom/coremobility/integration/e/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coremobility/j/d;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    move v2, v3

    :goto_6b
    array-length v0, v4

    if-ge v2, v0, :cond_a9

    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/String;

    aget-object v1, v5, v2

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_90

    iget-object v6, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    iget-object v6, v6, Lcom/coremobility/j/d;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6b

    :cond_90
    const/16 v0, 0x2e

    const-string v1, "Http response Headers invalid key "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_9a} :catch_9b

    goto :goto_8c

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput v8, p0, Lcom/coremobility/j/g;->c:I

    iput v3, p0, Lcom/coremobility/j/g;->n:I

    iput v3, p0, Lcom/coremobility/j/g;->y:I

    iput-boolean v9, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_11

    :cond_a9
    const/16 v0, 0x2e

    :try_start_ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http response Headers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_c7
    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_d4} :catch_9b

    goto/16 :goto_11
.end method


# virtual methods
.method public final a([BII)I
    .registers 10

    const/16 v5, 0x2e

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v3, :cond_11

    const-string v1, "HttpThead, conn released"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-nez v3, :cond_1d

    :try_start_15
    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/d;->g()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_41

    :cond_1d
    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    monitor-enter v3

    :try_start_20
    iget v0, p0, Lcom/coremobility/j/g;->k:I

    if-lez v0, :cond_6f

    iget-object v0, p0, Lcom/coremobility/j/g;->l:[B

    if-ne v0, p1, :cond_6d

    move v0, v1

    :goto_29
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->m:I

    iget v4, p0, Lcom/coremobility/j/g;->k:I

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_34

    move v2, v1

    :cond_34
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/g;->k:I

    :goto_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3e

    goto :goto_10

    :catchall_3e
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_41
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in PostData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_6d
    move v0, v2

    goto :goto_29

    :cond_6f
    :try_start_6f
    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-nez v0, :cond_82

    iput-object p1, p0, Lcom/coremobility/j/g;->l:[B

    iput p2, p0, Lcom/coremobility/j/g;->m:I

    iput p3, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_3e

    :try_start_7c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_81

    move v0, v2

    goto :goto_3c

    :catch_81
    move-exception v0

    :cond_82
    move v0, v2

    goto :goto_3c
.end method

.method public final a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_c

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f

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

.method public final a(Ljava/util/Hashtable;)V
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    if-nez v1, :cond_16

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_9
    iput-object p1, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1b

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_18

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1b
    move-exception v0

    goto :goto_14
.end method

.method public final a(Ljava/util/Hashtable;I)V
    .registers 6

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    :cond_a
    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_e
    iput-object p1, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iput p2, p0, Lcom/coremobility/j/g;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_22

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1f

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_a

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_22
    move-exception v0

    goto :goto_1b
.end method

.method public final b([BII)I
    .registers 10

    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v3, :cond_11

    const-string v1, "HttpThead, conn released"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-nez v3, :cond_1d

    :try_start_15
    iget-object v3, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v3}, Lcom/coremobility/integration/e/d;->f()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_41

    :cond_1d
    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_20
    iget v4, p0, Lcom/coremobility/j/g;->u:I

    if-lez v4, :cond_6f

    iget-object v0, p0, Lcom/coremobility/j/g;->w:[B

    if-ne v0, p1, :cond_6d

    move v0, v1

    :goto_29
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->x:I

    iget v4, p0, Lcom/coremobility/j/g;->u:I

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_34

    move v2, v1

    :cond_34
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->u:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/g;->u:I

    :goto_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3e

    goto :goto_10

    :catchall_3e
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_41
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in GetData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_6d
    move v0, v2

    goto :goto_29

    :cond_6f
    :try_start_6f
    iget v1, p0, Lcom/coremobility/j/g;->v:I

    if-ne v1, v0, :cond_78

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->u:I

    const/4 v0, -0x2

    goto :goto_3c

    :cond_78
    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_8b

    iput-object p1, p0, Lcom/coremobility/j/g;->w:[B

    iput p2, p0, Lcom/coremobility/j/g;->x:I

    iput p3, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_3e

    :try_start_85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_8a

    move v0, v2

    goto :goto_3c

    :catch_8a
    move-exception v0

    :cond_8b
    move v0, v2

    goto :goto_3c
.end method

.method public final b()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    const/16 v0, 0x2e

    const-string v1, "Suspended"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/Hashtable;)V
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/g;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    monitor-enter p0

    :try_start_a
    iput-object p1, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_19

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1c

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_19

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1c
    move-exception v0

    goto :goto_15
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremobility/j/g;->b:Z

    const/16 v0, 0x2e

    const-string v1, "Resumed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_15

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_18

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_18
    move-exception v0

    goto :goto_13
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f

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

.method public final e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_c

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f

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

.method public final f()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_c

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f

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

.method public final run()V
    .registers 11

    const/4 v9, 0x0

    const/16 v7, 0x1e

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_8
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/16 v0, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] openMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from thread..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    iget-object v3, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    iget v5, p0, Lcom/coremobility/j/g;->C:I

    iget v6, p0, Lcom/coremobility/j/g;->D:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/coremobility/integration/e/d;->a(Ljava/lang/String;III)V

    const/16 v0, 0x2e

    const-string v3, "Connection to server made"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_50} :catch_237
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_277

    :goto_50
    :try_start_50
    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->d(I)V

    :cond_5b
    :goto_5b
    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_201

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->a:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_86

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_86

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->j:Z

    iget-object v3, p0, Lcom/coremobility/j/g;->h:Ljava/util/Hashtable;

    iget v4, p0, Lcom/coremobility/j/g;->i:I

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_2b5

    const/16 v0, 0x2e

    const-string v3, "HttpThead, conn released"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_86
    :goto_86
    iget-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_a5

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_a5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->r:Z

    iget-object v3, p0, Lcom/coremobility/j/g;->q:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-nez v0, :cond_2fb

    const/16 v0, 0x2e

    const-string v3, "HttpThead, conn released"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a5
    :goto_a5
    iget-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    if-eqz v0, :cond_b7

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_b7

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_b7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->s:Z

    invoke-direct {p0}, Lcom/coremobility/j/g;->g()V

    :cond_b7
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_fc

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-lez v0, :cond_fc

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_fc

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_fc

    iget-object v3, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    monitor-enter v3
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ca} :catch_1f6

    :try_start_ca
    iget-object v0, p0, Lcom/coremobility/j/g;->l:[B

    if-eqz v0, :cond_36c

    move v0, v1

    :goto_cf
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-lez v0, :cond_36f

    move v0, v1

    :goto_d7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_da
    .catchall {:try_start_ca .. :try_end_da} :catchall_3a8

    :try_start_da
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/coremobility/j/g;->l:[B

    iget v5, p0, Lcom/coremobility/j/g;->m:I

    iget v6, p0, Lcom/coremobility/j/g;->n:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget v0, p0, Lcom/coremobility/j/g;->m:I

    iget v4, p0, Lcom/coremobility/j/g;->n:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coremobility/j/g;->m:I

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    iput v0, p0, Lcom/coremobility/j/g;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z
    :try_end_fb
    .catchall {:try_start_da .. :try_end_fb} :catchall_3a8
    .catch Ljava/lang/ClassCastException; {:try_start_da .. :try_end_fb} :catch_372
    .catch Ljava/net/SocketTimeoutException; {:try_start_da .. :try_end_fb} :catch_3ab
    .catch Ljava/net/SocketException; {:try_start_da .. :try_end_fb} :catch_3e8
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_fb} :catch_425

    :goto_fb
    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_3a8

    :cond_fc
    :try_start_fc
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_146

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_146

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_146

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_146

    iget-object v3, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    monitor-enter v3
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10f} :catch_1f6

    :try_start_10f
    iget-object v0, p0, Lcom/coremobility/j/g;->w:[B

    if-eqz v0, :cond_465

    move v0, v1

    :goto_114
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_468

    move v0, v1

    :goto_11c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_11f
    .catchall {:try_start_10f .. :try_end_11f} :catchall_4ab

    :try_start_11f
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/coremobility/j/g;->w:[B

    iget v5, p0, Lcom/coremobility/j/g;->x:I

    iget v6, p0, Lcom/coremobility/j/g;->y:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->v:I

    if-lez v0, :cond_46b

    iget v4, p0, Lcom/coremobility/j/g;->x:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/coremobility/j/g;->x:I

    iget v4, p0, Lcom/coremobility/j/g;->y:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/coremobility/j/g;->y:I

    iget v4, p0, Lcom/coremobility/j/g;->u:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coremobility/j/g;->u:I

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_145

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z
    :try_end_145
    .catchall {:try_start_11f .. :try_end_145} :catchall_4ab
    .catch Ljava/lang/ClassCastException; {:try_start_11f .. :try_end_145} :catch_475
    .catch Ljava/io/FileNotFoundException; {:try_start_11f .. :try_end_145} :catch_4ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_11f .. :try_end_145} :catch_4ee
    .catch Ljava/net/SocketException; {:try_start_11f .. :try_end_145} :catch_52b
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_145} :catch_568

    :cond_145
    :goto_145
    :try_start_145
    monitor-exit v3
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_4ab

    :cond_146
    :try_start_146
    iget-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    if-eqz v0, :cond_164

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_164

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_164

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_164

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_164

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->e(I)V

    :cond_164
    iget-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    if-eqz v0, :cond_182

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_182

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_182

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_182

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_17f

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget-object v3, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->a(Lcom/coremobility/j/d;)V

    :cond_17f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/g;->t:Lcom/coremobility/j/d;

    :cond_182
    iget-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    if-eqz v0, :cond_1a2

    iget v0, p0, Lcom/coremobility/j/g;->n:I

    if-nez v0, :cond_1a2

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_1a2

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_1a2

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_1a2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->o:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_1a2

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->b()V

    :cond_1a2
    iget-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    if-eqz v0, :cond_1c2

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-nez v0, :cond_1c2

    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-nez v0, :cond_1c2

    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-nez v0, :cond_1c2

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_1c2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_1c2

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->a()V

    :cond_1c2
    iget-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    if-eqz v0, :cond_1d8

    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_1d8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z

    if-nez v0, :cond_1d8

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    iget v3, p0, Lcom/coremobility/j/g;->c:I

    invoke-interface {v0, v3}, Lcom/coremobility/j/c;->c(I)V

    :cond_1d8
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/coremobility/j/g;->a:Z

    if-nez v0, :cond_1e4

    iget v0, p0, Lcom/coremobility/j/g;->y:I

    if-lez v0, :cond_1e8

    :cond_1e4
    iget-boolean v0, p0, Lcom/coremobility/j/g;->b:Z

    if-eqz v0, :cond_5b

    :cond_1e8
    monitor-enter p0
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_1e9} :catch_1f6

    :try_start_1e9
    iget-boolean v0, p0, Lcom/coremobility/j/g;->F:Z
    :try_end_1eb
    .catchall {:try_start_1e9 .. :try_end_1eb} :catchall_1f3

    if-nez v0, :cond_1f0

    :try_start_1ed
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1f3
    .catch Ljava/lang/InterruptedException; {:try_start_1ed .. :try_end_1f0} :catch_5a8

    :cond_1f0
    :goto_1f0
    :try_start_1f0
    monitor-exit p0
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1f3

    goto/16 :goto_5b

    :catchall_1f3
    move-exception v0

    :try_start_1f4
    monitor-exit p0

    throw v0
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1f6} :catch_1f6

    :catch_1f6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exception in HttpThread "

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_201
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    if-eqz v0, :cond_20c

    :try_start_205
    iget-object v0, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_20a} :catch_5ae

    :goto_20a
    iput-object v9, p0, Lcom/coremobility/j/g;->g:Ljava/io/OutputStream;

    :cond_20c
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_217

    :try_start_210
    iget-object v0, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_215} :catch_5e7

    :goto_215
    iput-object v9, p0, Lcom/coremobility/j/g;->p:Ljava/io/InputStream;

    :cond_217
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-eqz v0, :cond_220

    :try_start_21b
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->c()V
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_220} :catch_620

    :cond_220
    :goto_220
    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    if-eqz v0, :cond_22b

    iget-object v0, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    invoke-interface {v0}, Lcom/coremobility/j/c;->c()V

    iput-object v9, p0, Lcom/coremobility/j/g;->E:Lcom/coremobility/j/c;

    :cond_22b
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    if-eqz v0, :cond_236

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->b()V

    iput-object v9, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    :cond_236
    return-void

    :catch_237
    move-exception v0

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection timed out["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto/16 :goto_50

    :catch_277
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    iput v7, p0, Lcom/coremobility/j/g;->c:I

    goto/16 :goto_50

    :cond_2b5
    :try_start_2b5
    iget v0, p0, Lcom/coremobility/j/g;->B:I

    if-eq v0, v1, :cond_2be

    iget v0, p0, Lcom/coremobility/j/g;->B:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2cf

    :cond_2be
    move v0, v1

    :goto_2bf
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2c2} :catch_1f6

    :try_start_2c2
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/integration/e/d;->a(Ljava/util/Hashtable;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_2ca
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2ca} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2ca} :catch_1f6

    :goto_2ca
    const/4 v0, 0x1

    :try_start_2cb
    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    goto/16 :goto_86

    :cond_2cf
    move v0, v2

    goto :goto_2bf

    :catch_2d1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e4

    const/16 v3, 0x17

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2e4} :catch_1f6

    :cond_2e4
    :try_start_2e4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_2ee
    .catch Ljava/lang/NumberFormatException; {:try_start_2e4 .. :try_end_2ee} :catch_2ef
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_2ee} :catch_2f5

    goto :goto_2ca

    :catch_2ef
    move-exception v0

    const/16 v0, 0x1e

    :try_start_2f2
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_2ca

    :catch_2f5
    move-exception v0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_2ca

    :cond_2fb
    iget v0, p0, Lcom/coremobility/j/g;->B:I

    if-eqz v0, :cond_304

    iget v0, p0, Lcom/coremobility/j/g;->B:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_340

    :cond_304
    move v0, v1

    :goto_305
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V
    :try_end_308
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_308} :catch_1f6

    :try_start_308
    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/coremobility/integration/e/d;->a(Ljava/util/Hashtable;I)V

    iget-object v0, p0, Lcom/coremobility/j/g;->d:Lcom/coremobility/integration/e/d;

    invoke-virtual {v0}, Lcom/coremobility/integration/e/d;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    iget v0, p0, Lcom/coremobility/j/g;->c:I

    if-gez v0, :cond_31e

    const/16 v0, 0x2c

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_31e
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_31e} :catch_342
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_31e} :catch_1f6

    :cond_31e
    :goto_31e
    const/16 v0, 0x2e

    :try_start_320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpThead, actually connect, responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->e:Z

    goto/16 :goto_a5

    :cond_340
    move v0, v2

    goto :goto_305

    :catch_342
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_355

    const/16 v3, 0x17

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_320 .. :try_end_355} :catch_1f6

    :cond_355
    :try_start_355
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_35f
    .catch Ljava/lang/NumberFormatException; {:try_start_355 .. :try_end_35f} :catch_360
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_35f} :catch_366

    goto :goto_31e

    :catch_360
    move-exception v0

    const/16 v0, 0x1e

    :try_start_363
    iput v0, p0, Lcom/coremobility/j/g;->c:I

    goto :goto_31e

    :catch_366
    move-exception v0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/coremobility/j/g;->c:I
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_36b} :catch_1f6

    goto :goto_31e

    :cond_36c
    move v0, v2

    goto/16 :goto_cf

    :cond_36f
    move v0, v2

    goto/16 :goto_d7

    :catch_372
    move-exception v0

    const/16 v4, 0x2e

    :try_start_375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_3a6
    .catchall {:try_start_375 .. :try_end_3a6} :catchall_3a8

    goto/16 :goto_fb

    :catchall_3a8
    move-exception v0

    :try_start_3a9
    monitor-exit v3

    throw v0
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_3a9 .. :try_end_3ab} :catch_1f6

    :catch_3ab
    move-exception v0

    const/16 v4, 0x2e

    :try_start_3ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2a

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_fb

    :catch_3e8
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x15

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_fb

    :catch_425
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_463
    .catchall {:try_start_3ae .. :try_end_463} :catchall_3a8

    goto/16 :goto_fb

    :cond_465
    move v0, v2

    goto/16 :goto_114

    :cond_468
    move v0, v2

    goto/16 :goto_11c

    :cond_46b
    if-gez v0, :cond_145

    const/4 v0, 0x0

    :try_start_46e
    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->z:Z
    :try_end_473
    .catchall {:try_start_46e .. :try_end_473} :catchall_4ab
    .catch Ljava/lang/ClassCastException; {:try_start_46e .. :try_end_473} :catch_475
    .catch Ljava/io/FileNotFoundException; {:try_start_46e .. :try_end_473} :catch_4ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_46e .. :try_end_473} :catch_4ee
    .catch Ljava/net/SocketException; {:try_start_46e .. :try_end_473} :catch_52b
    .catch Ljava/lang/Exception; {:try_start_46e .. :try_end_473} :catch_568

    goto/16 :goto_145

    :catch_475
    move-exception v0

    const/16 v4, 0x2e

    :try_start_478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_4a9
    .catchall {:try_start_478 .. :try_end_4a9} :catchall_4ab

    goto/16 :goto_145

    :catchall_4ab
    move-exception v0

    :try_start_4ac
    monitor-exit v3

    throw v0
    :try_end_4ae
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_4ae} :catch_1f6

    :catch_4ae
    move-exception v0

    :try_start_4af
    iget v4, p0, Lcom/coremobility/j/g;->c:I

    if-eqz v4, :cond_4b9

    iget v4, p0, Lcom/coremobility/j/g;->c:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4e3

    :cond_4b9
    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not a HTTP URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    :cond_4e3
    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_145

    :catch_4ee
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2b

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_145

    :catch_52b
    move-exception v0

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x15

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z

    goto/16 :goto_145

    :catch_568
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ex in get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x29

    iput v0, p0, Lcom/coremobility/j/g;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/g;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/j/g;->f:Z
    :try_end_5a6
    .catchall {:try_start_4af .. :try_end_5a6} :catchall_4ab

    goto/16 :goto_145

    :catch_5a8
    move-exception v0

    :try_start_5a9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5ac
    .catchall {:try_start_5a9 .. :try_end_5ac} :catchall_1f3

    goto/16 :goto_1f0

    :catch_5ae
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close OutputStream to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_20a

    :catch_5e7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close InputStream from server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_215

    :catch_620
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close connection to server["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/j/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/j/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v8, v3, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_220
.end method

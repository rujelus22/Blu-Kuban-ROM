.class abstract Lcom/google/common/cache/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/cache/LocalCache$Segment;

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field f:Lcom/google/common/cache/x;

.field g:Lcom/google/common/cache/at;

.field h:Lcom/google/common/cache/at;

.field final synthetic i:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 3
    .parameter

    .prologue
    .line 4290
    iput-object p1, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4291
    iget-object v0, p1, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/s;->b:I

    .line 4292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/cache/s;->c:I

    .line 4293
    invoke-direct {p0}, Lcom/google/common/cache/s;->b()V

    .line 4294
    return-void
.end method

.method private a(Lcom/google/common/cache/x;)Z
    .registers 6
    .parameter

    .prologue
    .line 4353
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    .line 4354
    invoke-interface {p1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4355
    iget-object v3, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v0

    .line 4356
    if-eqz v0, :cond_24

    .line 4357
    new-instance v1, Lcom/google/common/cache/at;

    iget-object v3, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/common/cache/at;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/cache/s;->g:Lcom/google/common/cache/at;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    .line 4358
    iget-object v0, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 4361
    :goto_23
    return v0

    :cond_24
    iget-object v0, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    goto :goto_23

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 4297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/s;->g:Lcom/google/common/cache/at;

    .line 4299
    invoke-direct {p0}, Lcom/google/common/cache/s;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4317
    :cond_9
    :goto_9
    return-void

    .line 4303
    :cond_a
    invoke-direct {p0}, Lcom/google/common/cache/s;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4307
    :cond_10
    iget v0, p0, Lcom/google/common/cache/s;->b:I

    if-ltz v0, :cond_9

    .line 4308
    iget-object v0, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/s;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/s;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    .line 4309
    iget-object v0, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_10

    .line 4310
    iget-object v0, p0, Lcom/google/common/cache/s;->d:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4311
    iget-object v0, p0, Lcom/google/common/cache/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/s;->c:I

    .line 4312
    invoke-direct {p0}, Lcom/google/common/cache/s;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    if-eqz v0, :cond_23

    .line 4324
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    :goto_c
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    if-eqz v0, :cond_23

    .line 4325
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    invoke-direct {p0, v0}, Lcom/google/common/cache/s;->a(Lcom/google/common/cache/x;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4326
    const/4 v0, 0x1

    .line 4330
    :goto_19
    return v0

    .line 4324
    :cond_1a
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    goto :goto_c

    .line 4330
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()Z
    .registers 4

    .prologue
    .line 4337
    :cond_0
    iget v0, p0, Lcom/google/common/cache/s;->c:I

    if-ltz v0, :cond_26

    .line 4338
    iget-object v0, p0, Lcom/google/common/cache/s;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/cache/s;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/s;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    iput-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    if-eqz v0, :cond_0

    .line 4339
    iget-object v0, p0, Lcom/google/common/cache/s;->f:Lcom/google/common/cache/x;

    invoke-direct {p0, v0}, Lcom/google/common/cache/s;->a(Lcom/google/common/cache/x;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/google/common/cache/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    :cond_24
    const/4 v0, 0x1

    .line 4344
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method final a()Lcom/google/common/cache/at;
    .registers 2

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/google/common/cache/s;->g:Lcom/google/common/cache/at;

    if-nez v0, :cond_a

    .line 4374
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4376
    :cond_a
    iget-object v0, p0, Lcom/google/common/cache/s;->g:Lcom/google/common/cache/at;

    iput-object v0, p0, Lcom/google/common/cache/s;->h:Lcom/google/common/cache/at;

    .line 4377
    invoke-direct {p0}, Lcom/google/common/cache/s;->b()V

    .line 4378
    iget-object v0, p0, Lcom/google/common/cache/s;->h:Lcom/google/common/cache/at;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/google/common/cache/s;->g:Lcom/google/common/cache/at;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/google/common/cache/s;->h:Lcom/google/common/cache/at;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 4383
    iget-object v0, p0, Lcom/google/common/cache/s;->i:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lcom/google/common/cache/s;->h:Lcom/google/common/cache/at;

    invoke-virtual {v1}, Lcom/google/common/cache/at;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/s;->h:Lcom/google/common/cache/at;

    .line 4385
    return-void

    .line 4382
    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method

.class abstract Lcom/google/common/collect/q;
.super Lcom/google/common/collect/O;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:J

.field private transient c:Lcom/google/common/collect/s;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/collect/O;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    .line 67
    invoke-super {p0}, Lcom/google/common/collect/O;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/q;->b:J

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/q;Ljava/lang/Object;Ljava/util/Map;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Map;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 336
    if-nez v0, :cond_b

    move v0, v1

    .line 341
    :goto_a
    return v0

    .line 339
    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 340
    iget-wide v1, p0, Lcom/google/common/collect/q;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/q;->b:J

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/common/collect/q;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/common/collect/q;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/q;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/common/collect/q;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/q;)J
    .registers 5
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/common/collect/q;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/q;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/q;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/google/common/collect/q;->b:J

    return-wide p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 243
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_b
.end method

.method public a(Ljava/lang/Object;I)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    if-nez p2, :cond_9

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v2

    .line 274
    :goto_8
    return v2

    .line 259
    :cond_9
    if-lez p2, :cond_34

    move v0, v1

    :goto_c
    const-string v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 263
    if-nez v0, :cond_36

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :goto_2d
    iget-wide v0, p0, Lcom/google/common/collect/q;->b:J

    int-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/q;->b:J

    goto :goto_8

    :cond_34
    move v0, v2

    .line 259
    goto :goto_c

    .line 267
    :cond_36
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 268
    int-to-long v5, v4

    int-to-long v7, p2

    add-long/2addr v5, v7

    .line 269
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_57

    move v3, v1

    :goto_45
    const-string v7, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v7, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move v2, v4

    goto :goto_2d

    :cond_57
    move v3, v2

    .line 269
    goto :goto_45
.end method

.method public a()Ljava/util/Set;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/q;->c:Lcom/google/common/collect/s;

    .line 92
    if-nez v0, :cond_c

    .line 93
    new-instance v0, Lcom/google/common/collect/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/q;Lcom/google/common/collect/r;)V

    iput-object v0, p0, Lcom/google/common/collect/q;->c:Lcom/google/common/collect/s;

    .line 95
    :cond_c
    return-object v0
.end method

.method public b(Ljava/lang/Object;I)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-nez p2, :cond_9

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result v2

    .line 300
    :cond_8
    :goto_8
    return v2

    .line 281
    :cond_9
    if-lez p2, :cond_35

    move v0, v1

    :goto_c
    const-string v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    if-eqz v0, :cond_8

    .line 288
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 291
    if-le v1, p2, :cond_37

    .line 298
    :goto_29
    neg-int v2, p2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 299
    iget-wide v2, p0, Lcom/google/common/collect/q;->b:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/q;->b:J

    move v2, v1

    .line 300
    goto :goto_8

    :cond_35
    move v0, v2

    .line 281
    goto :goto_c

    .line 295
    :cond_37
    iget-object v2, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_29
.end method

.method b()Ljava/util/Set;
    .registers 3

    .prologue
    .line 347
    new-instance v0, Lcom/google/common/collect/v;

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/v;-><init>(Lcom/google/common/collect/q;Ljava/util/Map;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 238
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/common/collect/x;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x;-><init>(Lcom/google/common/collect/q;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/common/collect/q;->b:J

    invoke-static {v0, v1}, LJ/a;->a(J)I

    move-result v0

    return v0
.end method

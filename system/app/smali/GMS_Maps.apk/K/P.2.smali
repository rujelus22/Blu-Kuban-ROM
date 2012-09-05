.class LK/P;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final q:LK/aK; = null

.field static final r:Ljava/util/Queue; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final transient a:I

.field final transient b:I

.field final transient c:[LK/an;

.field final d:I

.field final e:Lcom/google/common/base/b;

.field final f:Lcom/google/common/base/b;

.field final g:LK/aA;

.field final h:LK/aA;

.field final i:I

.field final j:J

.field final k:J

.field final l:Ljava/util/Queue;

.field final m:LK/bV;

.field final transient n:LK/S;

.field final o:Ljava/util/concurrent/Executor;

.field final p:Lcom/google/common/base/A;

.field s:Ljava/util/Set;

.field t:Ljava/util/Collection;

.field u:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LK/Q;

    invoke-direct {v0}, LK/Q;-><init>()V

    sput-object v0, LK/P;->q:LK/aK;

    new-instance v0, LK/R;

    invoke-direct {v0}, LK/R;-><init>()V

    sput-object v0, LK/P;->r:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(LK/bW;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p1}, LK/bW;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LK/P;->d:I

    invoke-virtual {p1}, LK/bW;->e()LK/aA;

    move-result-object v0

    iput-object v0, p0, LK/P;->g:LK/aA;

    invoke-virtual {p1}, LK/bW;->f()LK/aA;

    move-result-object v0

    iput-object v0, p0, LK/P;->h:LK/aA;

    invoke-virtual {p1}, LK/bW;->a()Lcom/google/common/base/b;

    move-result-object v0

    iput-object v0, p0, LK/P;->e:Lcom/google/common/base/b;

    invoke-virtual {p1}, LK/bW;->b()Lcom/google/common/base/b;

    move-result-object v0

    iput-object v0, p0, LK/P;->f:Lcom/google/common/base/b;

    iget v0, p1, LK/bW;->f:I

    iput v0, p0, LK/P;->i:I

    invoke-virtual {p1}, LK/bW;->h()J

    move-result-wide v0

    iput-wide v0, p0, LK/P;->j:J

    invoke-virtual {p1}, LK/bW;->g()J

    move-result-wide v0

    iput-wide v0, p0, LK/P;->k:J

    iget-object v0, p0, LK/P;->g:LK/aA;

    invoke-virtual {p0}, LK/P;->b()Z

    move-result v1

    invoke-virtual {p0}, LK/P;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, LK/S;->a(LK/aA;ZZ)LK/S;

    move-result-object v0

    iput-object v0, p0, LK/P;->n:LK/S;

    invoke-virtual {p1}, LK/bW;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, LK/P;->o:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, LK/bW;->j()Lcom/google/common/base/A;

    move-result-object v0

    iput-object v0, p0, LK/P;->p:Lcom/google/common/base/A;

    invoke-virtual {p1}, LK/bW;->k()LK/bV;

    move-result-object v0

    iput-object v0, p0, LK/P;->m:LK/bV;

    iget-object v0, p0, LK/P;->m:LK/bV;

    sget-object v1, LK/ca;->a:LK/ca;

    if-ne v0, v1, :cond_94

    invoke-static {}, LK/P;->h()Ljava/util/Queue;

    move-result-object v0

    :goto_65
    iput-object v0, p0, LK/P;->l:Ljava/util/Queue;

    invoke-virtual {p1}, LK/bW;->c()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, LK/P;->a()Z

    move-result v1

    if-eqz v1, :cond_7d

    iget v1, p0, LK/P;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_7d
    move v1, v2

    move v3, v4

    :goto_7f
    iget v5, p0, LK/P;->d:I

    if-ge v1, v5, :cond_9a

    invoke-virtual {p0}, LK/P;->a()Z

    move-result v5

    if-eqz v5, :cond_8f

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, LK/P;->i:I

    if-gt v5, v6, :cond_9a

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_65

    :cond_9a
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, LK/P;->b:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, LK/P;->a:I

    invoke-virtual {p0, v1}, LK/P;->a(I)[LK/an;

    move-result-object v3

    iput-object v3, p0, LK/P;->c:[LK/an;

    div-int v3, v0, v1

    mul-int v5, v3, v1

    if-ge v5, v0, :cond_ea

    add-int/lit8 v0, v3, 0x1

    :goto_b0
    if-ge v2, v0, :cond_b5

    shl-int/lit8 v2, v2, 0x1

    goto :goto_b0

    :cond_b5
    invoke-virtual {p0}, LK/P;->a()Z

    move-result v0

    if-eqz v0, :cond_d8

    iget v0, p0, LK/P;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, LK/P;->i:I

    rem-int v1, v3, v1

    :goto_c4
    iget-object v3, p0, LK/P;->c:[LK/an;

    array-length v3, v3

    if-ge v4, v3, :cond_e9

    if-ne v4, v1, :cond_cd

    add-int/lit8 v0, v0, -0x1

    :cond_cd
    iget-object v3, p0, LK/P;->c:[LK/an;

    invoke-virtual {p0, v2, v0}, LK/P;->a(II)LK/an;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    :cond_d8
    :goto_d8
    iget-object v0, p0, LK/P;->c:[LK/an;

    array-length v0, v0

    if-ge v4, v0, :cond_e9

    iget-object v0, p0, LK/P;->c:[LK/an;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, LK/P;->a(II)LK/an;

    move-result-object v1

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    :cond_e9
    return-void

    :cond_ea
    move v0, v3

    goto :goto_b0
.end method

.method static b(LK/am;LK/am;)V
    .registers 2

    invoke-interface {p0, p1}, LK/am;->a(LK/am;)V

    invoke-interface {p1, p0}, LK/am;->b(LK/am;)V

    return-void
.end method

.method private static c(I)I
    .registers 4

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static c(LK/am;LK/am;)V
    .registers 2

    invoke-interface {p0, p1}, LK/am;->c(LK/am;)V

    invoke-interface {p1, p0}, LK/am;->d(LK/am;)V

    return-void
.end method

.method static e(LK/am;)V
    .registers 2

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    invoke-interface {p0, v0}, LK/am;->a(LK/am;)V

    invoke-interface {p0, v0}, LK/am;->b(LK/am;)V

    return-void
.end method

.method static f()LK/aK;
    .registers 1

    sget-object v0, LK/P;->q:LK/aK;

    return-object v0
.end method

.method static f(LK/am;)V
    .registers 2

    invoke-static {}, LK/P;->g()LK/am;

    move-result-object v0

    invoke-interface {p0, v0}, LK/am;->c(LK/am;)V

    invoke-interface {p0, v0}, LK/am;->d(LK/am;)V

    return-void
.end method

.method static g()LK/am;
    .registers 1

    sget-object v0, LK/ak;->a:LK/ak;

    return-object v0
.end method

.method static h()Ljava/util/Queue;
    .registers 1

    sget-object v0, LK/P;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, LK/P;->e:Lcom/google/common/base/b;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, LK/P;->c(I)I

    move-result v0

    return v0
.end method

.method a(LK/am;Ljava/lang/Object;)LK/aK;
    .registers 4

    iget-object v0, p0, LK/P;->h:LK/aA;

    invoke-virtual {v0, p1, p2}, LK/aA;->a(LK/am;Ljava/lang/Object;)LK/aK;

    move-result-object v0

    return-object v0
.end method

.method a(LK/am;LK/am;)LK/am;
    .registers 5

    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v0

    iget-object v1, p0, LK/P;->n:LK/S;

    invoke-virtual {v1, p0, p1, p2}, LK/S;->a(LK/P;LK/am;LK/am;)LK/am;

    move-result-object v1

    invoke-interface {v0, v1}, LK/aK;->a(LK/am;)LK/aK;

    move-result-object v0

    invoke-interface {v1, v0}, LK/am;->a(LK/aK;)V

    return-object v1
.end method

.method a(Ljava/lang/Object;ILK/am;)LK/am;
    .registers 5

    iget-object v0, p0, LK/P;->n:LK/S;

    invoke-virtual {v0, p0, p1, p2, p3}, LK/S;->a(LK/P;Ljava/lang/Object;ILK/am;)LK/am;

    move-result-object v0

    return-object v0
.end method

.method a(II)LK/an;
    .registers 4

    new-instance v0, LK/an;

    invoke-direct {v0, p0, p1, p2}, LK/an;-><init>(LK/P;II)V

    return-object v0
.end method

.method a(LK/am;)V
    .registers 4

    invoke-interface {p1}, LK/am;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LK/an;->a(LK/am;I)Z

    return-void
.end method

.method a(LK/am;LK/aK;)V
    .registers 6

    invoke-interface {p1}, LK/am;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-interface {p1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, LK/an;->a(Ljava/lang/Object;ILK/aK;)Z

    invoke-virtual {v1}, LK/an;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1}, LK/an;->i()V

    :cond_18
    return-void
.end method

.method a(Ljava/lang/Object;ILK/aK;)V
    .registers 6

    iget-object v0, p0, LK/P;->l:Ljava/util/Queue;

    sget-object v1, LK/P;->r:Ljava/util/Queue;

    if-ne v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LK/P;->a(Ljava/lang/Object;ILK/am;)LK/am;

    move-result-object v0

    invoke-interface {p3, v0}, LK/aK;->a(LK/am;)LK/aK;

    move-result-object v1

    invoke-interface {v0, v1}, LK/am;->a(LK/aK;)V

    iget-object v1, p0, LK/P;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method a()Z
    .registers 3

    iget v0, p0, LK/P;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method a(LK/aK;)Z
    .registers 3

    sget-object v0, LK/P;->q:LK/aK;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method a(LK/am;J)Z
    .registers 8

    invoke-interface {p1}, LK/am;->e()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final a(I)[LK/an;
    .registers 3

    const-class v0, LK/an;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/an;

    check-cast v0, [LK/an;

    return-object v0
.end method

.method b(I)LK/an;
    .registers 5

    iget-object v0, p0, LK/P;->c:[LK/an;

    iget v1, p0, LK/P;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, LK/P;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b()Z
    .registers 2

    invoke-virtual {p0}, LK/P;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, LK/P;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method b(LK/am;)Z
    .registers 4

    iget-object v0, p0, LK/P;->p:Lcom/google/common/base/A;

    invoke-interface {v0}, Lcom/google/common/base/A;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LK/P;->a(LK/am;J)Z

    move-result v0

    return v0
.end method

.method c()Z
    .registers 5

    iget-wide v0, p0, LK/P;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c(LK/am;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v2

    invoke-interface {v2}, LK/aK;->a()Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    goto :goto_8

    :cond_15
    invoke-interface {v2}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public clear()V
    .registers 5

    iget-object v1, p0, LK/P;->c:[LK/an;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3}, LK/an;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LK/an;->b(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, LK/P;->c:[LK/an;

    move v0, v1

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_17

    aget-object v3, v2, v0

    iget v3, v3, LK/an;->a:I

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, LK/an;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x1

    :cond_17
    return v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method d()Z
    .registers 5

    iget-wide v0, p0, LK/P;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method d(LK/am;)Z
    .registers 3

    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v0

    invoke-virtual {p0, v0}, LK/P;->a(LK/aK;)Z

    move-result v0

    return v0
.end method

.method e()Z
    .registers 3

    iget-object v0, p0, LK/P;->o:Ljava/util/concurrent/Executor;

    sget-object v1, LK/bW;->b:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/P;->u:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LK/ag;

    invoke-direct {v0, p0}, LK/ag;-><init>(LK/P;)V

    iput-object v0, p0, LK/P;->u:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LK/an;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method i()V
    .registers 4

    :goto_0
    iget-object v0, p0, LK/P;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    if-eqz v0, :cond_1c

    iget-object v1, p0, LK/P;->m:LK/bV;

    invoke-interface {v0}, LK/am;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, LK/am;->a()LK/aK;

    move-result-object v0

    invoke-interface {v0}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, LK/bV;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public isEmpty()Z
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, LK/P;->c:[LK/an;

    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    :goto_8
    array-length v5, v3

    if-ge v0, v5, :cond_1c

    aget-object v5, v3, v0

    iget v5, v5, LK/an;->a:I

    if-eqz v5, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    aget-object v5, v3, v0

    iget v5, v5, LK/an;->b:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    if-eqz v2, :cond_33

    move v0, v1

    :goto_1f
    array-length v2, v3

    if-ge v0, v2, :cond_33

    aget-object v2, v3, v0

    iget v2, v2, LK/an;->a:I

    if-nez v2, :cond_11

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, LK/an;->b:I

    if-ne v2, v5, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_33
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/P;->s:Ljava/util/Set;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LK/aj;

    invoke-direct {v0, p0}, LK/aj;-><init>(LK/P;)V

    iput-object v0, p0, LK/P;->s:Ljava/util/Set;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, LK/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, LK/P;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, LK/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LK/an;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, LK/an;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, LK/an;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0, p1}, LK/P;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LK/P;->b(I)LK/an;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, LK/an;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 7

    iget-object v3, p0, LK/P;->c:[LK/an;

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    aget-object v4, v3, v0

    iget v4, v4, LK/an;->a:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    invoke-static {v1, v2}, LN/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, LK/P;->t:Ljava/util/Collection;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LK/aL;

    invoke-direct {v0, p0}, LK/aL;-><init>(LK/P;)V

    iput-object v0, p0, LK/P;->t:Ljava/util/Collection;

    goto :goto_4
.end method

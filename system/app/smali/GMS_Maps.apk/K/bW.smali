.class public final LK/bW;
.super LK/bd;


# static fields
.field static final b:Ljava/util/concurrent/Executor;

.field static final c:Lcom/google/common/base/A;


# instance fields
.field d:I

.field e:I

.field f:I

.field g:LK/aA;

.field h:LK/aA;

.field i:J

.field j:J

.field k:Z

.field l:Z

.field m:Lcom/google/common/base/b;

.field n:Lcom/google/common/base/b;

.field o:Ljava/util/concurrent/Executor;

.field p:Lcom/google/common/base/A;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LK/bX;

    invoke-direct {v0}, LK/bX;-><init>()V

    sput-object v0, LK/bW;->b:Ljava/util/concurrent/Executor;

    new-instance v0, LK/bY;

    invoke-direct {v0}, LK/bY;-><init>()V

    sput-object v0, LK/bW;->c:Lcom/google/common/base/A;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, LK/bd;-><init>()V

    iput v0, p0, LK/bW;->d:I

    iput v0, p0, LK/bW;->e:I

    iput v0, p0, LK/bW;->f:I

    iput-wide v1, p0, LK/bW;->i:J

    iput-wide v1, p0, LK/bW;->j:J

    return-void
.end method


# virtual methods
.method public a(I)LK/bW;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, LK/bW;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_8
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, LK/bW;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/v;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_2f

    move v0, v1

    :goto_1a
    const-string v3, "maximum size must not be negative"

    invoke-static {v0, v3}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    iput p1, p0, LK/bW;->f:I

    iput-boolean v1, p0, LK/bW;->k:Z

    iget-boolean v0, p0, LK/bW;->l:Z

    iget v3, p0, LK/bW;->f:I

    if-nez v3, :cond_31

    :goto_29
    or-int/2addr v0, v1

    iput-boolean v0, p0, LK/bW;->l:Z

    return-object p0

    :cond_2d
    move v0, v2

    goto :goto_8

    :cond_2f
    move v0, v2

    goto :goto_1a

    :cond_31
    move v1, v2

    goto :goto_29
.end method

.method a()Lcom/google/common/base/b;
    .registers 3

    iget-object v0, p0, LK/bW;->m:Lcom/google/common/base/b;

    invoke-virtual {p0}, LK/bW;->e()LK/aA;

    move-result-object v1

    invoke-virtual {v1}, LK/aA;->a()Lcom/google/common/base/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    return-object v0
.end method

.method b()Lcom/google/common/base/b;
    .registers 3

    iget-object v0, p0, LK/bW;->n:Lcom/google/common/base/b;

    invoke-virtual {p0}, LK/bW;->f()LK/aA;

    move-result-object v1

    invoke-virtual {v1}, LK/aA;->a()Lcom/google/common/base/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    return-object v0
.end method

.method c()I
    .registers 3

    iget v0, p0, LK/bW;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, LK/bW;->d:I

    goto :goto_7
.end method

.method d()I
    .registers 3

    iget v0, p0, LK/bW;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, LK/bW;->e:I

    goto :goto_6
.end method

.method e()LK/aA;
    .registers 3

    iget-object v0, p0, LK/bW;->g:LK/aA;

    sget-object v1, LK/aA;->a:LK/aA;

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/aA;

    return-object v0
.end method

.method f()LK/aA;
    .registers 3

    iget-object v0, p0, LK/bW;->h:LK/aA;

    sget-object v1, LK/aA;->a:LK/aA;

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/aA;

    return-object v0
.end method

.method g()J
    .registers 5

    iget-wide v0, p0, LK/bW;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, LK/bW;->i:J

    goto :goto_a
.end method

.method h()J
    .registers 5

    iget-wide v0, p0, LK/bW;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, LK/bW;->j:J

    goto :goto_a
.end method

.method i()Ljava/util/concurrent/Executor;
    .registers 3

    iget-object v0, p0, LK/bW;->o:Ljava/util/concurrent/Executor;

    sget-object v1, LK/bW;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method j()Lcom/google/common/base/A;
    .registers 3

    iget-object v0, p0, LK/bW;->p:Lcom/google/common/base/A;

    sget-object v1, LK/bW;->c:Lcom/google/common/base/A;

    invoke-static {v0, v1}, Lcom/google/common/base/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/A;

    return-object v0
.end method

.method k()LK/bV;
    .registers 2

    iget-object v0, p0, LK/bW;->a:LK/bV;

    if-nez v0, :cond_7

    sget-object v0, LK/ca;->a:LK/ca;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, LK/bW;->a:LK/bV;

    goto :goto_6
.end method

.method public l()Ljava/util/concurrent/ConcurrentMap;
    .registers 5

    iget-boolean v0, p0, LK/bW;->k:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, LK/bW;->c()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, LK/bW;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    :goto_13
    return-object v0

    :cond_14
    iget-boolean v0, p0, LK/bW;->l:Z

    if-eqz v0, :cond_1e

    new-instance v0, LK/bZ;

    invoke-direct {v0, p0}, LK/bZ;-><init>(LK/bW;)V

    goto :goto_13

    :cond_1e
    new-instance v0, LK/P;

    invoke-direct {v0, p0}, LK/P;-><init>(LK/bW;)V

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    iget v1, p0, LK/bW;->d:I

    if-eq v1, v3, :cond_16

    const-string v1, "initialCapacity"

    iget v2, p0, LK/bW;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_16
    iget v1, p0, LK/bW;->e:I

    if-eq v1, v3, :cond_25

    const-string v1, "concurrencyLevel"

    iget v2, p0, LK/bW;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_25
    iget v1, p0, LK/bW;->f:I

    if-eq v1, v3, :cond_34

    const-string v1, "maximumSize"

    iget v2, p0, LK/bW;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_34
    iget-wide v1, p0, LK/bW;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_54

    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, LK/bW;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_54
    iget-wide v1, p0, LK/bW;->j:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_74

    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, LK/bW;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_74
    iget-object v1, p0, LK/bW;->g:LK/aA;

    if-eqz v1, :cond_87

    const-string v1, "keyStrength"

    iget-object v2, p0, LK/bW;->g:LK/aA;

    invoke-virtual {v2}, LK/aA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_87
    iget-object v1, p0, LK/bW;->h:LK/aA;

    if-eqz v1, :cond_9a

    const-string v1, "valueStrength"

    iget-object v2, p0, LK/bW;->h:LK/aA;

    invoke-virtual {v2}, LK/aA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_9a
    iget-object v1, p0, LK/bW;->m:Lcom/google/common/base/b;

    if-eqz v1, :cond_a3

    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_a3
    iget-object v1, p0, LK/bW;->n:Lcom/google/common/base/b;

    if-eqz v1, :cond_ac

    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_ac
    iget-object v1, p0, LK/bW;->a:LK/bV;

    if-eqz v1, :cond_b5

    const-string v1, "evictionListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_b5
    iget-object v1, p0, LK/bW;->o:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_be

    const-string v1, "cleanupExecutor"

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    :cond_be
    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/common/collect/cF;
.super Lcom/google/common/collect/bl;
.source "SourceFile"


# static fields
.field static final b:Ljava/util/concurrent/Executor;

.field static final c:Lcom/google/common/base/ai;


# instance fields
.field d:I

.field e:I

.field f:I

.field g:Lcom/google/common/collect/aI;

.field h:Lcom/google/common/collect/aI;

.field i:J

.field j:J

.field k:Z

.field l:Z

.field m:Lcom/google/common/base/q;

.field n:Lcom/google/common/base/q;

.field o:Ljava/util/concurrent/Executor;

.field p:Lcom/google/common/base/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/common/collect/cG;

    invoke-direct {v0}, Lcom/google/common/collect/cG;-><init>()V

    sput-object v0, Lcom/google/common/collect/cF;->b:Ljava/util/concurrent/Executor;

    .line 123
    new-instance v0, Lcom/google/common/collect/cH;

    invoke-direct {v0}, Lcom/google/common/collect/cH;-><init>()V

    sput-object v0, Lcom/google/common/collect/cF;->c:Lcom/google/common/base/ai;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Lcom/google/common/collect/bl;-><init>()V

    .line 139
    iput v0, p0, Lcom/google/common/collect/cF;->d:I

    .line 140
    iput v0, p0, Lcom/google/common/collect/cF;->e:I

    .line 141
    iput v0, p0, Lcom/google/common/collect/cF;->f:I

    .line 146
    iput-wide v1, p0, Lcom/google/common/collect/cF;->i:J

    .line 147
    iput-wide v1, p0, Lcom/google/common/collect/cF;->j:J

    .line 163
    return-void
.end method

.method private b(JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    iget-wide v3, p0, Lcom/google/common/collect/cF;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_48

    move v0, v1

    :goto_b
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/cF;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-wide v3, p0, Lcom/google/common/collect/cF;->j:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_4a

    move v0, v1

    :goto_21
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/cF;->j:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4c

    move v0, v1

    :goto_37
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    return-void

    :cond_48
    move v0, v2

    .line 441
    goto :goto_b

    :cond_4a
    move v0, v2

    .line 444
    goto :goto_21

    :cond_4c
    move v0, v2

    .line 447
    goto :goto_37
.end method


# virtual methods
.method a()Lcom/google/common/base/q;
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/collect/cF;->m:Lcom/google/common/base/q;

    invoke-virtual {p0}, Lcom/google/common/collect/cF;->e()Lcom/google/common/collect/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/aI;->a()Lcom/google/common/base/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/q;

    return-object v0
.end method

.method public a(I)Lcom/google/common/collect/cF;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    iget v0, p0, Lcom/google/common/collect/cF;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    move v0, v1

    :goto_8
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/cF;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    if-ltz p1, :cond_2f

    move v0, v1

    :goto_1a
    const-string v3, "maximum size must not be negative"

    invoke-static {v0, v3}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 240
    iput p1, p0, Lcom/google/common/collect/cF;->f:I

    .line 241
    iput-boolean v1, p0, Lcom/google/common/collect/cF;->k:Z

    .line 242
    iget-boolean v0, p0, Lcom/google/common/collect/cF;->l:Z

    iget v3, p0, Lcom/google/common/collect/cF;->f:I

    if-nez v3, :cond_31

    :goto_29
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/common/collect/cF;->l:Z

    .line 243
    return-object p0

    :cond_2d
    move v0, v2

    .line 237
    goto :goto_8

    :cond_2f
    move v0, v2

    .line 239
    goto :goto_1a

    :cond_31
    move v1, v2

    .line 242
    goto :goto_29
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/cF;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/cF;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 434
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/collect/cF;->i:J

    .line 435
    iget-boolean v2, p0, Lcom/google/common/collect/cF;->l:Z

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_19

    move v0, v1

    :goto_13
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/common/collect/cF;->l:Z

    .line 436
    iput-boolean v1, p0, Lcom/google/common/collect/cF;->k:Z

    .line 437
    return-object p0

    .line 435
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method b()Lcom/google/common/base/q;
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/cF;->n:Lcom/google/common/base/q;

    invoke-virtual {p0}, Lcom/google/common/collect/cF;->f()Lcom/google/common/collect/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/aI;->a()Lcom/google/common/base/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/q;

    return-object v0
.end method

.method c()I
    .registers 3

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/collect/cF;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/common/collect/cF;->d:I

    goto :goto_7
.end method

.method d()I
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/cF;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/common/collect/cF;->e:I

    goto :goto_6
.end method

.method e()Lcom/google/common/collect/aI;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/cF;->g:Lcom/google/common/collect/aI;

    sget-object v1, Lcom/google/common/collect/aI;->a:Lcom/google/common/collect/aI;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/aI;

    return-object v0
.end method

.method f()Lcom/google/common/collect/aI;
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/cF;->h:Lcom/google/common/collect/aI;

    sget-object v1, Lcom/google/common/collect/aI;->a:Lcom/google/common/collect/aI;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/aI;

    return-object v0
.end method

.method g()J
    .registers 5

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/google/common/collect/cF;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/collect/cF;->i:J

    goto :goto_a
.end method

.method h()J
    .registers 5

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/cF;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/collect/cF;->j:J

    goto :goto_a
.end method

.method i()Ljava/util/concurrent/Executor;
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/cF;->o:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/cF;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method j()Lcom/google/common/base/ai;
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/cF;->p:Lcom/google/common/base/ai;

    sget-object v1, Lcom/google/common/collect/cF;->c:Lcom/google/common/base/ai;

    invoke-static {v0, v1}, Lcom/google/common/base/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ai;

    return-object v0
.end method

.method k()Lcom/google/common/collect/cE;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/common/collect/cF;->a:Lcom/google/common/collect/cE;

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/common/collect/cJ;->a:Lcom/google/common/collect/cJ;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/cF;->a:Lcom/google/common/collect/cE;

    goto :goto_6
.end method

.method public l()Ljava/util/concurrent/ConcurrentMap;
    .registers 5

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/common/collect/cF;->k:Z

    if-nez v0, :cond_14

    .line 558
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/cF;->c()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/google/common/collect/cF;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 561
    :goto_13
    return-object v0

    :cond_14
    iget-boolean v0, p0, Lcom/google/common/collect/cF;->l:Z

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/common/collect/cI;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cI;-><init>(Lcom/google/common/collect/cF;)V

    goto :goto_13

    :cond_1e
    new-instance v0, Lcom/google/common/collect/X;

    invoke-direct {v0, p0}, Lcom/google/common/collect/X;-><init>(Lcom/google/common/collect/cF;)V

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 664
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    .line 665
    iget v1, p0, Lcom/google/common/collect/cF;->d:I

    if-eq v1, v3, :cond_16

    .line 666
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/cF;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 668
    :cond_16
    iget v1, p0, Lcom/google/common/collect/cF;->e:I

    if-eq v1, v3, :cond_25

    .line 669
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/cF;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 671
    :cond_25
    iget v1, p0, Lcom/google/common/collect/cF;->f:I

    if-eq v1, v3, :cond_34

    .line 672
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/cF;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 674
    :cond_34
    iget-wide v1, p0, Lcom/google/common/collect/cF;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_54

    .line 675
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/cF;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 677
    :cond_54
    iget-wide v1, p0, Lcom/google/common/collect/cF;->j:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_74

    .line 678
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/cF;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 680
    :cond_74
    iget-object v1, p0, Lcom/google/common/collect/cF;->g:Lcom/google/common/collect/aI;

    if-eqz v1, :cond_87

    .line 681
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/cF;->g:Lcom/google/common/collect/aI;

    invoke-virtual {v2}, Lcom/google/common/collect/aI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 683
    :cond_87
    iget-object v1, p0, Lcom/google/common/collect/cF;->h:Lcom/google/common/collect/aI;

    if-eqz v1, :cond_9a

    .line 684
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/cF;->h:Lcom/google/common/collect/aI;

    invoke-virtual {v2}, Lcom/google/common/collect/aI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 686
    :cond_9a
    iget-object v1, p0, Lcom/google/common/collect/cF;->m:Lcom/google/common/base/q;

    if-eqz v1, :cond_a3

    .line 687
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/M;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 689
    :cond_a3
    iget-object v1, p0, Lcom/google/common/collect/cF;->n:Lcom/google/common/base/q;

    if-eqz v1, :cond_ac

    .line 690
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/M;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 692
    :cond_ac
    iget-object v1, p0, Lcom/google/common/collect/cF;->a:Lcom/google/common/collect/cE;

    if-eqz v1, :cond_b5

    .line 693
    const-string v1, "evictionListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/M;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 695
    :cond_b5
    iget-object v1, p0, Lcom/google/common/collect/cF;->o:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_be

    .line 696
    const-string v1, "cleanupExecutor"

    invoke-virtual {v0, v1}, Lcom/google/common/base/M;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    .line 698
    :cond_be
    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

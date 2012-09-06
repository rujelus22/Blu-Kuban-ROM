.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/am;

.field static final b:Lcom/google/common/cache/h;

.field static final c:Lcom/google/common/base/am;

.field static final d:Lcom/google/common/base/an;

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field e:Z

.field f:I

.field g:I

.field h:J

.field i:J

.field j:Lcom/google/common/cache/aw;

.field k:Lcom/google/common/cache/LocalCache$Strength;

.field l:Lcom/google/common/cache/LocalCache$Strength;

.field m:J

.field n:J

.field o:J

.field p:Lcom/google/common/base/Equivalence;

.field q:Lcom/google/common/base/Equivalence;

.field r:Lcom/google/common/cache/au;

.field s:Lcom/google/common/base/an;

.field t:Lcom/google/common/base/am;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const-wide/16 v1, 0x0

    .line 142
    new-instance v0, Lcom/google/common/cache/e;

    invoke-direct {v0}, Lcom/google/common/cache/e;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Ljava/lang/Object;)Lcom/google/common/base/am;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->a:Lcom/google/common/base/am;

    .line 164
    new-instance v0, Lcom/google/common/cache/h;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    move-wide v9, v1

    move-wide v11, v1

    invoke-direct/range {v0 .. v12}, Lcom/google/common/cache/h;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->b:Lcom/google/common/cache/h;

    .line 166
    new-instance v0, Lcom/google/common/cache/f;

    invoke-direct {v0}, Lcom/google/common/cache/f;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->c:Lcom/google/common/base/am;

    .line 190
    new-instance v0, Lcom/google/common/cache/g;

    invoke-direct {v0}, Lcom/google/common/cache/g;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/an;

    .line 197
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    .line 203
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    .line 204
    iput v3, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    .line 205
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    .line 206
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    .line 212
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    .line 213
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    .line 214
    iput-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    .line 222
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->c:Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->t:Lcom/google/common/base/am;

    .line 225
    return-void
.end method

.method public static a()Lcom/google/common/cache/CacheBuilder;
    .registers 1

    .prologue
    .line 232
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method

.method private p()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 765
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    if-nez v2, :cond_16

    .line 766
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    :goto_e
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 776
    :cond_13
    :goto_13
    return-void

    :cond_14
    move v0, v1

    .line 766
    goto :goto_e

    .line 768
    :cond_16
    iget-boolean v2, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    if-eqz v2, :cond_28

    .line 769
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    :goto_20
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    goto :goto_13

    :cond_26
    move v0, v1

    goto :goto_20

    .line 771
    :cond_28
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    .line 772
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method final a(Z)Lcom/google/common/base/an;
    .registers 3
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/an;

    if-eqz v0, :cond_7

    .line 660
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/an;

    .line 662
    :goto_6
    return-object v0

    :cond_7
    if-eqz p1, :cond_e

    invoke-static {}, Lcom/google/common/base/an;->b()Lcom/google/common/base/an;

    move-result-object v0

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/an;

    goto :goto_6
.end method

.method public final a(I)Lcom/google/common/cache/CacheBuilder;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_8
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    if-lez p1, :cond_21

    :goto_19
    invoke-static {v1}, Lcom/google/common/base/ag;->a(Z)V

    .line 321
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    .line 322
    return-object p0

    :cond_1f
    move v0, v2

    .line 318
    goto :goto_8

    :cond_21
    move v1, v2

    .line 320
    goto :goto_19
.end method

.method public final a(J)Lcom/google/common/cache/CacheBuilder;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_48

    move v0, v1

    :goto_b
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_4a

    move v0, v1

    :goto_21
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    if-nez v0, :cond_4c

    move v0, v1

    :goto_35
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 348
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4e

    :goto_40
    const-string v0, "maximum size must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 349
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    .line 350
    return-object p0

    :cond_48
    move v0, v2

    .line 343
    goto :goto_b

    :cond_4a
    move v0, v2

    .line 345
    goto :goto_21

    :cond_4c
    move v0, v2

    .line 347
    goto :goto_35

    :cond_4e
    move v1, v2

    .line 348
    goto :goto_40
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_38

    move v0, v1

    :goto_b
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 561
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3a

    move v0, v1

    :goto_21
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    .line 563
    return-object p0

    :cond_38
    move v0, v2

    .line 559
    goto :goto_b

    :cond_3a
    move v0, v2

    .line 561
    goto :goto_21
.end method

.method final a(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "key equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    .line 252
    return-object p0

    :cond_1b
    move v0, v2

    .line 250
    goto :goto_7
.end method

.method public final a(Lcom/google/common/base/an;)Lcom/google/common/cache/CacheBuilder;
    .registers 3
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/an;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 654
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/an;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->s:Lcom/google/common/base/an;

    .line 655
    return-object p0

    .line 653
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final a(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    .line 468
    return-object p0

    :cond_1b
    move v0, v2

    .line 466
    goto :goto_7
.end method

.method public final a(Lcom/google/common/cache/au;)Lcom/google/common/cache/CacheBuilder;
    .registers 3
    .parameter
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/au;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 701
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/au;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/au;

    .line 702
    return-object p0

    .line 696
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(Lcom/google/common/cache/aw;)Lcom/google/common/cache/CacheBuilder;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 413
    iget-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->e:Z

    if-eqz v0, :cond_26

    .line 414
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_31

    move v0, v1

    :goto_17
    const-string v3, "weigher can not be combined with maximum size"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_26
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/aw;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    .line 422
    return-object p0

    :cond_2f
    move v0, v2

    .line 412
    goto :goto_7

    :cond_31
    move v0, v2

    .line 414
    goto :goto_17
.end method

.method public final a(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/j;
    .registers 3
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->p()V

    .line 739
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method final b()Lcom/google/common/base/Equivalence;
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->h()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method public final b(J)Lcom/google/common/cache/CacheBuilder;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_3e

    move v0, v1

    :goto_b
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_40

    move v0, v1

    :goto_21
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    .line 378
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_42

    :goto_38
    const-string v0, "maximum weight must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 379
    return-object p0

    :cond_3e
    move v0, v2

    .line 373
    goto :goto_b

    :cond_40
    move v0, v2

    .line 375
    goto :goto_21

    :cond_42
    move v1, v2

    .line 378
    goto :goto_38
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_38

    move v0, v1

    :goto_b
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3a

    move v0, v1

    :goto_21
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    .line 597
    return-object p0

    :cond_38
    move v0, v2

    .line 593
    goto :goto_b

    :cond_3a
    move v0, v2

    .line 595
    goto :goto_21
.end method

.method final b(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "value equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    .line 270
    return-object p0

    :cond_1b
    move v0, v2

    .line 267
    goto :goto_7
.end method

.method final b(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "Value strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    .line 532
    return-object p0

    :cond_1b
    move v0, v2

    .line 530
    goto :goto_7
.end method

.method final c()Lcom/google/common/base/Equivalence;
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->i()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method final d()I
    .registers 3

    .prologue
    .line 296
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    goto :goto_7
.end method

.method final e()I
    .registers 3

    .prologue
    .line 326
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    goto :goto_6
.end method

.method final f()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 426
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 429
    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->h:J

    goto :goto_e

    :cond_16
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    goto :goto_e
.end method

.method final g()Lcom/google/common/cache/aw;
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/aw;

    return-object v0
.end method

.method final h()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method final i()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method final j()J
    .registers 5

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    goto :goto_a
.end method

.method final k()J
    .registers 5

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    goto :goto_a
.end method

.method final l()J
    .registers 5

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    goto :goto_a
.end method

.method final m()Lcom/google/common/cache/au;
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/au;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/au;

    return-object v0
.end method

.method final n()Lcom/google/common/base/am;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->t:Lcom/google/common/base/am;

    return-object v0
.end method

.method public final o()Lcom/google/common/cache/d;
    .registers 5

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->p()V

    .line 756
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_c
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 757
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    return-object v0

    .line 756
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, -0x1

    const-wide/16 v5, -0x1

    .line 784
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    .line 785
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    if-eq v1, v3, :cond_12

    .line 786
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 788
    :cond_12
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    if-eq v1, v3, :cond_1d

    .line 789
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 791
    :cond_1d
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2e

    .line 792
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->j:Lcom/google/common/cache/aw;

    if-nez v1, :cond_b4

    .line 793
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    .line 798
    :cond_2e
    :goto_2e
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4e

    .line 799
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 801
    :cond_4e
    iget-wide v1, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_6e

    .line 802
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/cache/CacheBuilder;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 804
    :cond_6e
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_81

    .line 805
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->k:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 807
    :cond_81
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_94

    .line 808
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 810
    :cond_94
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->p:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_9d

    .line 811
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 813
    :cond_9d
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->q:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_a6

    .line 814
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 816
    :cond_a6
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/cache/au;

    if-eqz v1, :cond_af

    .line 817
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 819
    :cond_af
    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 795
    :cond_b4
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    goto/16 :goto_2e
.end method

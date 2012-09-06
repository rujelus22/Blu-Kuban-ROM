.class Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lcom/google/common/util/concurrent/h;

.field static final v:Lcom/google/common/cache/ag;

.field static final w:Ljava/util/Queue;


# instance fields
.field final c:I

.field final d:I

.field final e:[Lcom/google/common/cache/LocalCache$Segment;

.field final f:I

.field final g:Lcom/google/common/base/Equivalence;

.field final h:Lcom/google/common/base/Equivalence;

.field final i:Lcom/google/common/cache/LocalCache$Strength;

.field final j:Lcom/google/common/cache/LocalCache$Strength;

.field final k:J

.field final l:Lcom/google/common/cache/aw;

.field final m:J

.field final n:J

.field final o:J

.field final p:Ljava/util/Queue;

.field final q:Lcom/google/common/cache/au;

.field final r:Lcom/google/common/base/an;

.field final s:Lcom/google/common/cache/LocalCache$EntryFactory;

.field final t:Lcom/google/common/cache/c;

.field final u:Lcom/google/common/cache/CacheLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field x:Ljava/util/Set;

.field y:Ljava/util/Collection;

.field z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    .line 155
    invoke-static {}, Lcom/google/common/util/concurrent/i;->a()Lcom/google/common/util/concurrent/h;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->b:Lcom/google/common/util/concurrent/h;

    .line 679
    new-instance v0, Lcom/google/common/cache/k;

    invoke-direct {v0}, Lcom/google/common/cache/k;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->v:Lcom/google/common/cache/ag;

    .line 1010
    new-instance v0, Lcom/google/common/cache/l;

    invoke-direct {v0}, Lcom/google/common/cache/l;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->e()I

    move-result v0

    const/high16 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/LocalCache;->f:I

    .line 236
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->h()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    .line 237
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->i()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    .line 239
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    .line 240
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->c()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    .line 242
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->f()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/LocalCache;->k:J

    .line 243
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->g()Lcom/google/common/cache/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/aw;

    .line 244
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->k()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/LocalCache;->m:J

    .line 245
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->j()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/LocalCache;->n:J

    .line 246
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->l()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/LocalCache;->o:J

    .line 248
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->m()Lcom/google/common/cache/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/au;

    .line 249
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/au;

    sget-object v3, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    if-ne v0, v3, :cond_d9

    sget-object v0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    :goto_57
    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    .line 253
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    if-eqz v0, :cond_e0

    :cond_65
    move v0, v2

    :goto_66
    invoke-virtual {p1, v0}, Lcom/google/common/cache/CacheBuilder;->a(Z)Lcom/google/common/base/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    .line 254
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    if-eqz v0, :cond_e2

    :cond_7a
    move v0, v2

    :goto_7b
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v3

    if-nez v3, :cond_87

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v3

    if-eqz v3, :cond_e4

    :cond_87
    move v3, v2

    :goto_88
    invoke-static {v4, v0, v3}, Lcom/google/common/cache/LocalCache$EntryFactory;->getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 255
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    .line 256
    iput-object p2, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    .line 258
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->d()I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v3

    if-nez v3, :cond_b9

    .line 260
    iget-wide v3, p0, Lcom/google/common/cache/LocalCache;->k:J

    long-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_b9
    move v3, v2

    move v4, v1

    .line 269
    :goto_bb
    iget v5, p0, Lcom/google/common/cache/LocalCache;->f:I

    if-ge v3, v5, :cond_e6

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v5

    if-nez v5, :cond_d4

    mul-int/lit8 v5, v3, 0x2

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/google/common/cache/LocalCache;->k:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_e6

    .line 270
    :cond_d4
    add-int/lit8 v4, v4, 0x1

    .line 271
    shl-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 249
    :cond_d9
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/16 :goto_57

    :cond_e0
    move v0, v1

    .line 253
    goto :goto_66

    :cond_e2
    move v0, v1

    .line 254
    goto :goto_7b

    :cond_e4
    move v3, v1

    goto :goto_88

    .line 273
    :cond_e6
    rsub-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/common/cache/LocalCache;->d:I

    .line 274
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/google/common/cache/LocalCache;->c:I

    .line 276
    new-array v4, v3, [Lcom/google/common/cache/LocalCache$Segment;

    iput-object v4, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 278
    div-int v4, v0, v3

    .line 279
    mul-int v5, v4, v3

    if-ge v5, v0, :cond_155

    .line 280
    add-int/lit8 v0, v4, 0x1

    :goto_fa
    move v6, v2

    .line 284
    :goto_fb
    if-ge v6, v0, :cond_101

    .line 285
    shl-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_fb

    .line 288
    :cond_101
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 290
    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->k:J

    int-to-long v7, v3

    div-long/2addr v4, v7

    add-long/2addr v4, v9

    .line 291
    iget-wide v7, p0, Lcom/google/common/cache/LocalCache;->k:J

    int-to-long v2, v3

    rem-long/2addr v7, v2

    move v3, v1

    move-wide v0, v4

    .line 292
    :goto_112
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v2

    if-ge v3, v2, :cond_152

    .line 293
    int-to-long v4, v3

    cmp-long v2, v4, v7

    if-nez v2, :cond_153

    .line 294
    sub-long v1, v0, v9

    .line 296
    :goto_11e
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    invoke-direct {p0, v6, v1, v2, v0}, Lcom/google/common/cache/LocalCache;->a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    aput-object v0, v4, v3

    .line 292
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-wide v11, v1

    move-wide v0, v11

    goto :goto_112

    .line 300
    :cond_136
    :goto_136
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    if-ge v1, v0, :cond_152

    .line 301
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    const-wide/16 v3, -0x1

    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    invoke-direct {p0, v6, v3, v4, v0}, Lcom/google/common/cache/LocalCache;->a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    aput-object v0, v2, v1

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 305
    :cond_152
    return-void

    :cond_153
    move-wide v1, v0

    goto :goto_11e

    :cond_155
    move v0, v4

    goto :goto_fa
.end method

.method private a(I)Lcom/google/common/cache/LocalCache$Segment;
    .registers 5
    .parameter

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->d:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/LocalCache;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(IJLcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$Segment;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1925
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/c;)V

    return-object v0
.end method

.method private a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .registers 10
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 4044
    new-instance v1, Lcom/google/common/base/aj;

    invoke-direct {v1}, Lcom/google/common/base/aj;-><init>()V

    invoke-virtual {v1}, Lcom/google/common/base/aj;->a()Lcom/google/common/base/aj;

    move-result-object v3

    .line 4049
    :try_start_b
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_4d
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_b .. :try_end_e} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_51
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_e} :catch_58

    move-result-object v4

    .line 4067
    if-nez v4, :cond_5f

    .line 4068
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/aj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->b(J)V

    .line 4069
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null map from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4063
    :catch_35
    move-exception v0

    .line 4054
    :try_start_36
    throw v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 4062
    :catchall_37
    move-exception v0

    :goto_38
    if-nez v2, :cond_45

    .line 4063
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2}, Lcom/google/common/base/aj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    :cond_45
    throw v0

    .line 4055
    :catch_46
    move-exception v1

    .line 4056
    :try_start_47
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4062
    :catchall_4d
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_38

    .line 4057
    :catch_51
    move-exception v1

    .line 4058
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4059
    :catch_58
    move-exception v1

    .line 4060
    new-instance v2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v2
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_4d

    .line 4072
    :cond_5f
    invoke-virtual {v3}, Lcom/google/common/base/aj;->b()Lcom/google/common/base/aj;

    .line 4075
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4076
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 4077
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4078
    if-eqz v6, :cond_83

    if-nez v0, :cond_85

    :cond_83
    move v1, v2

    .line 4080
    goto :goto_6b

    .line 4082
    :cond_85
    invoke-virtual {p0, v6, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 4086
    :cond_89
    if-eqz v1, :cond_af

    .line 4087
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/aj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->b(J)V

    .line 4088
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null keys or values from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4092
    :cond_af
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/aj;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/c;->a(J)V

    .line 4093
    return-object v4
.end method

.method static a(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V
    .registers 2
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1971
    invoke-interface {p0, p1}, Lcom/google/common/cache/x;->setNextInAccessQueue(Lcom/google/common/cache/x;)V

    .line 1972
    invoke-interface {p1, p0}, Lcom/google/common/cache/x;->setPreviousInAccessQueue(Lcom/google/common/cache/x;)V

    .line 1973
    return-void
.end method

.method static b(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1977
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 1978
    invoke-interface {p0, v0}, Lcom/google/common/cache/x;->setNextInAccessQueue(Lcom/google/common/cache/x;)V

    .line 1979
    invoke-interface {p0, v0}, Lcom/google/common/cache/x;->setPreviousInAccessQueue(Lcom/google/common/cache/x;)V

    .line 1980
    return-void
.end method

.method static b(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)V
    .registers 2
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1984
    invoke-interface {p0, p1}, Lcom/google/common/cache/x;->setNextInWriteQueue(Lcom/google/common/cache/x;)V

    .line 1985
    invoke-interface {p1, p0}, Lcom/google/common/cache/x;->setPreviousInWriteQueue(Lcom/google/common/cache/x;)V

    .line 1986
    return-void
.end method

.method static c(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1990
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 1991
    invoke-interface {p0, v0}, Lcom/google/common/cache/x;->setNextInWriteQueue(Lcom/google/common/cache/x;)V

    .line 1992
    invoke-interface {p0, v0}, Lcom/google/common/cache/x;->setPreviousInWriteQueue(Lcom/google/common/cache/x;)V

    .line 1993
    return-void
.end method

.method private d(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1889
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

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

.method static j()Lcom/google/common/cache/ag;
    .registers 1

    .prologue
    .line 725
    sget-object v0, Lcom/google/common/cache/LocalCache;->v:Lcom/google/common/cache/ag;

    return-object v0
.end method

.method static k()Lcom/google/common/cache/x;
    .registers 1

    .prologue
    .line 1007
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static l()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 1042
    sget-object v0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    return-object v0
.end method

.method private p()Z
    .registers 5

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->n:J

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

.method private q()Z
    .registers 5

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

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


# virtual methods
.method final a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3976
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3977
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3978
    invoke-virtual {p0, v4}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3979
    if-nez v5, :cond_1d

    .line 3980
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3982
    :cond_1d
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3983
    add-int/lit8 v1, v1, 0x1

    .line 3985
    goto :goto_a

    .line 3986
    :cond_23
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 3987
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v0}, Lcom/google/common/cache/c;->b(I)V

    .line 3988
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/cache/x;J)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1936
    invoke-interface {p1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1947
    :cond_7
    :goto_7
    return-object v0

    .line 1939
    :cond_8
    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1940
    if-eqz v1, :cond_7

    .line 1944
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    .line 1947
    goto :goto_7
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3953
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3954
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 3955
    if-nez v0, :cond_19

    .line 3956
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    .line 3960
    :goto_18
    return-object v0

    .line 3958
    :cond_19
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->a(I)V

    goto :goto_18
.end method

.method final a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3964
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3965
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/cache/ag;)V
    .registers 5
    .parameter

    .prologue
    .line 1893
    invoke-interface {p1}, Lcom/google/common/cache/ag;->b()Lcom/google/common/cache/x;

    move-result-object v0

    .line 1894
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    .line 1895
    invoke-direct {p0, v1}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/ag;)Z

    .line 1896
    return-void
.end method

.method final a(Lcom/google/common/cache/x;)V
    .registers 4
    .parameter

    .prologue
    .line 1899
    invoke-interface {p1}, Lcom/google/common/cache/x;->getHash()I

    move-result v0

    .line 1900
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->reclaimKey(Lcom/google/common/cache/x;I)Z

    .line 1901
    return-void
.end method

.method final a()Z
    .registers 5

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3996
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 3997
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3998
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3999
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4000
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 4001
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4002
    if-nez v6, :cond_2e

    .line 4003
    add-int/lit8 v0, v0, 0x1

    .line 4004
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 4006
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4012
    :cond_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_92

    move-result v4

    if-nez v4, :cond_a7

    .line 4014
    :try_start_37
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-direct {p0, v2, v4}, Lcom/google/common/cache/LocalCache;->a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 4015
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4016
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4017
    if-nez v7, :cond_8e

    .line 4018
    new-instance v4, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "loadAll failed to return a value for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_66
    .catchall {:try_start_37 .. :try_end_66} :catchall_92
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_37 .. :try_end_66} :catch_66

    .line 4024
    :catch_66
    move-exception v4

    :try_start_67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_92

    move-result-object v4

    move v2, v0

    :goto_6c
    :try_start_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4025
    add-int/lit8 v2, v2, -0x1

    .line 4026
    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v0, v5}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_6c .. :try_end_81} :catchall_82

    goto :goto_6c

    .line 4032
    :catchall_82
    move-exception v0

    :goto_83
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 4033
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    throw v0

    .line 4020
    :cond_8e
    :try_start_8e
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_8e .. :try_end_91} :catch_66

    goto :goto_41

    .line 4032
    :catchall_92
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_83

    :cond_97
    move v2, v0

    .line 4030
    :cond_98
    :goto_98
    :try_start_98
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_82

    move-result-object v0

    .line 4032
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v3, v1}, Lcom/google/common/cache/c;->a(I)V

    .line 4033
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-interface {v1, v2}, Lcom/google/common/cache/c;->b(I)V

    return-object v0

    :cond_a7
    move v2, v0

    goto :goto_98
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/aw;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final b(Lcom/google/common/cache/x;J)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1956
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Lcom/google/common/cache/x;->getAccessTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/common/cache/LocalCache;->m:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_14

    .line 1964
    :cond_13
    :goto_13
    return v0

    .line 1960
    :cond_14
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Lcom/google/common/cache/x;->getWriteTime()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/common/cache/LocalCache;->n:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_13

    .line 1964
    :cond_26
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final c(Ljava/lang/Iterable;)V
    .registers 4
    .parameter

    .prologue
    .line 4246
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4247
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4249
    :cond_12
    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 4122
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4123
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    .line 4124
    return-void
.end method

.method final c()Z
    .registers 5

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->o:J

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

.method public clear()V
    .registers 5

    .prologue
    .line 4239
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 4240
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->clear()V

    .line 4239
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4242
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 4129
    if-nez p1, :cond_4

    .line 4130
    const/4 v0, 0x0

    .line 4133
    :goto_3
    return v0

    .line 4132
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4133
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 21
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 4139
    if-nez p1, :cond_4

    .line 4140
    const/4 v3, 0x0

    .line 4174
    :goto_3
    return v3

    .line 4148
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v3}, Lcom/google/common/base/an;->a()J

    move-result-wide v11

    .line 4149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4150
    const-wide/16 v6, -0x1

    .line 4151
    const/4 v3, 0x0

    move v8, v3

    move-wide v9, v6

    :goto_15
    const/4 v3, 0x3

    if-ge v8, v3, :cond_6e

    .line 4152
    const-wide/16 v4, 0x0

    .line 4153
    array-length v14, v13

    const/4 v3, 0x0

    move-wide v6, v4

    move v5, v3

    :goto_1e
    if-ge v5, v14, :cond_65

    aget-object v15, v13, v5

    .line 4156
    iget v3, v15, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 4158
    iget-object v0, v15, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 4159
    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_5d

    .line 4160
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/x;

    :goto_38
    if-eqz v3, :cond_59

    .line 4161
    invoke-virtual {v15, v3, v11, v12}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v17

    .line 4162
    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_54

    .line 4163
    const/4 v3, 0x1

    goto :goto_3

    .line 4160
    :cond_54
    invoke-interface {v3}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v3

    goto :goto_38

    .line 4159
    :cond_59
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2a

    .line 4167
    :cond_5d
    iget v3, v15, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 4153
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1e

    .line 4169
    :cond_65
    cmp-long v3, v6, v9

    if-eqz v3, :cond_6e

    .line 4151
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v9, v6

    goto :goto_15

    .line 4174
    :cond_6e
    const/4 v3, 0x0

    goto :goto_3
.end method

.method final d()Z
    .registers 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->a()Z

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

.method final e()Z
    .registers 2

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Set;

    .line 4275
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/cache/r;

    invoke-direct {v0, p0}, Lcom/google/common/cache/r;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->z:Ljava/util/Set;

    goto :goto_4
.end method

.method final f()Z
    .registers 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->p()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

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

.method final g()Z
    .registers 2

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache;->q()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3944
    if-nez p1, :cond_4

    .line 3945
    const/4 v0, 0x0

    .line 3948
    :goto_3
    return-object v0

    .line 3947
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 3948
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method final h()Z
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->i:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final i()Z
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEmpty()Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3905
    iget-object v6, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3906
    :goto_7
    array-length v7, v6

    if-ge v0, v7, :cond_1a

    .line 3907
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_11

    .line 3924
    :cond_10
    :goto_10
    return v1

    .line 3910
    :cond_11
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3906
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3913
    :cond_1a
    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    move v0, v1

    .line 3914
    :goto_1f
    array-length v7, v6

    if-ge v0, v7, :cond_31

    .line 3915
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-nez v7, :cond_10

    .line 3918
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3914
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3920
    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    .line 3924
    :cond_35
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    .line 4257
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/cache/u;

    invoke-direct {v0, p0}, Lcom/google/common/cache/u;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->x:Ljava/util/Set;

    goto :goto_4
.end method

.method final m()V
    .registers 5

    .prologue
    .line 2002
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/av;

    if-eqz v0, :cond_1b

    .line 2004
    :try_start_a
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/au;

    invoke-interface {v1, v0}, Lcom/google/common/cache/au;->onRemoval(Lcom/google/common/cache/av;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_0

    .line 2005
    :catch_10
    move-exception v0

    .line 2006
    sget-object v1, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2009
    :cond_1b
    return-void
.end method

.method public final n()V
    .registers 5

    .prologue
    .line 3888
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 3889
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3888
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3891
    :cond_e
    return-void
.end method

.method final o()J
    .registers 7

    .prologue
    .line 3928
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    .line 3929
    const-wide/16 v1, 0x0

    .line 3930
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 3931
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/cache/LocalCache$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3930
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3933
    :cond_11
    return-wide v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4179
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4182
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 4195
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

    .line 4196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4198
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4187
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4188
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4190
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 4202
    if-nez p1, :cond_4

    .line 4203
    const/4 v0, 0x0

    .line 4206
    :goto_3
    return-object v0

    .line 4205
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4206
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 4211
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 4212
    :cond_4
    const/4 v0, 0x0

    .line 4215
    :goto_5
    return v0

    .line 4214
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4215
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4231
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4234
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 4220
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    if-nez p2, :cond_a

    .line 4223
    const/4 v0, 0x0

    .line 4226
    :goto_9
    return v0

    .line 4225
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache;->d(Ljava/lang/Object;)I

    move-result v0

    .line 4226
    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache;->a(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public size()I
    .registers 3

    .prologue
    .line 3938
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->y:Ljava/util/Collection;

    .line 4266
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/cache/ah;

    invoke-direct {v0, p0}, Lcom/google/common/cache/ah;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->y:Ljava/util/Collection;

    goto :goto_4
.end method

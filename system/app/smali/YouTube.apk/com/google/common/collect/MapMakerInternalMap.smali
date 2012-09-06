.class Lcom/google/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final CLEANUP_EXECUTOR_DELAY_SECS:J = 0x3cL

.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue; = null

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lcom/google/common/collect/gs; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

.field entrySet:Ljava/util/Set;

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;

.field keySet:Ljava/util/Set;

.field final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lcom/google/common/collect/fr;

.field final removalNotificationQueue:Ljava/util/Queue;

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field final ticker:Lcom/google/common/base/an;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;

.field final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    .line 630
    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0}, Lcom/google/common/collect/fs;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/gs;

    .line 920
    new-instance v0, Lcom/google/common/collect/ft;

    invoke-direct {v0}, Lcom/google/common/collect/ft;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 199
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->e()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 200
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 202
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->e()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 203
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 205
    iget v0, p1, Lcom/google/common/collect/MapMaker;->e:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    .line 206
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_b7

    move-wide v0, v2

    :goto_50
    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 207
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_ba

    :goto_58
    iput-wide v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->getFactory(Lcom/google/common/collect/MapMakerInternalMap$Strength;ZZ)Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    .line 210
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->m:Lcom/google/common/base/an;

    invoke-static {}, Lcom/google/common/base/an;->b()Lcom/google/common/base/an;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/an;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/an;

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/fr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/fr;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/fr;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/GenericMapMaker$NullListener;

    if-ne v0, v1, :cond_bd

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    :goto_88
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 219
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_a0
    move v1, v4

    move v2, v5

    .line 228
    :goto_a2
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v3, :cond_c3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v3

    if-eqz v3, :cond_b2

    mul-int/lit8 v3, v1, 0x2

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    if-gt v3, v6, :cond_c3

    .line 229
    :cond_b2
    add-int/lit8 v2, v2, 0x1

    .line 230
    shl-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 206
    :cond_b7
    iget-wide v0, p1, Lcom/google/common/collect/MapMaker;->i:J

    goto :goto_50

    .line 207
    :cond_ba
    iget-wide v2, p1, Lcom/google/common/collect/MapMaker;->h:J

    goto :goto_58

    .line 213
    :cond_bd
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_88

    .line 232
    :cond_c3
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    .line 233
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 237
    div-int v2, v0, v1

    .line 238
    mul-int v3, v2, v1

    if-ge v3, v0, :cond_113

    .line 239
    add-int/lit8 v0, v2, 0x1

    .line 243
    :goto_d9
    if-ge v4, v0, :cond_de

    .line 244
    shl-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 247
    :cond_de
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 249
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    rem-int v1, v2, v1

    .line 251
    :goto_ed
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v2

    if-ge v5, v2, :cond_112

    .line 252
    if-ne v5, v1, :cond_f6

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :cond_f6
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0, v4, v0}, Lcom/google/common/collect/MapMakerInternalMap;->createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    aput-object v3, v2, v5

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_ed

    .line 259
    :cond_101
    :goto_101
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    if-ge v5, v0, :cond_112

    .line 260
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    const/4 v1, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/google/common/collect/MapMakerInternalMap;->createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, v0, v5

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_101

    .line 264
    :cond_112
    return-void

    :cond_113
    move v0, v2

    goto :goto_d9
.end method

.method static connectEvictables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2011
    invoke-interface {p0, p1}, Lcom/google/common/collect/gg;->setNextEvictable(Lcom/google/common/collect/gg;)V

    .line 2012
    invoke-interface {p1, p0}, Lcom/google/common/collect/gg;->setPreviousEvictable(Lcom/google/common/collect/gg;)V

    .line 2013
    return-void
.end method

.method static connectExpirables(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1979
    invoke-interface {p0, p1}, Lcom/google/common/collect/gg;->setNextExpirable(Lcom/google/common/collect/gg;)V

    .line 1980
    invoke-interface {p1, p0}, Lcom/google/common/collect/gg;->setPreviousExpirable(Lcom/google/common/collect/gg;)V

    .line 1981
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 952
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lcom/google/common/collect/gg;
    .registers 1

    .prologue
    .line 917
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static nullifyEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2017
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2018
    invoke-interface {p0, v0}, Lcom/google/common/collect/gg;->setNextEvictable(Lcom/google/common/collect/gg;)V

    .line 2019
    invoke-interface {p0, v0}, Lcom/google/common/collect/gg;->setPreviousEvictable(Lcom/google/common/collect/gg;)V

    .line 2020
    return-void
.end method

.method static nullifyExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 1986
    invoke-interface {p0, v0}, Lcom/google/common/collect/gg;->setNextExpirable(Lcom/google/common/collect/gg;)V

    .line 1987
    invoke-interface {p0, v0}, Lcom/google/common/collect/gg;->setPreviousExpirable(Lcom/google/common/collect/gg;)V

    .line 1988
    return-void
.end method

.method static rehash(I)I
    .registers 4
    .parameter

    .prologue
    .line 1863
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1864
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1865
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1866
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1867
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1868
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static unset()Lcom/google/common/collect/gs;
    .registers 1

    .prologue
    .line 666
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/gs;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 3615
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 3616
    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clear()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3618
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
    .line 3507
    if-nez p1, :cond_4

    .line 3508
    const/4 v0, 0x0

    .line 3511
    :goto_3
    return v0

    .line 3510
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3511
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 16
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3516
    if-nez p1, :cond_4

    .line 3517
    const/4 v0, 0x0

    .line 3550
    :goto_3
    return v0

    .line 3525
    :cond_4
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3526
    const-wide/16 v3, -0x1

    .line 3527
    const/4 v0, 0x0

    move v5, v0

    move-wide v6, v3

    :goto_b
    const/4 v0, 0x3

    if-ge v5, v0, :cond_56

    .line 3528
    const-wide/16 v1, 0x0

    .line 3529
    array-length v9, v8

    const/4 v0, 0x0

    move-wide v3, v1

    move v2, v0

    :goto_14
    if-ge v2, v9, :cond_4d

    aget-object v10, v8, v2

    .line 3532
    iget v0, v10, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3534
    iget-object v11, v10, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3535
    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 3536
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    :goto_2a
    if-eqz v0, :cond_41

    .line 3537
    invoke-virtual {v10, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;

    move-result-object v12

    .line 3538
    if-eqz v12, :cond_3c

    iget-object v13, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 3539
    const/4 v0, 0x1

    goto :goto_3

    .line 3536
    :cond_3c
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_2a

    .line 3535
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 3543
    :cond_45
    iget v0, v10, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 3529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 3545
    :cond_4d
    cmp-long v0, v3, v6

    if-eqz v0, :cond_56

    .line 3527
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v6, v3

    goto :goto_b

    .line 3550
    :cond_56
    const/4 v0, 0x0

    goto :goto_3
.end method

.method copyEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 4
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1886
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getHash()I

    move-result v0

    .line 1887
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    return-object v0
.end method

.method createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1937
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 3641
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/fw;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fw;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method evictsBySize()Z
    .registers 3

    .prologue
    .line 267
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method expires()Z
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

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

.method expiresAfterAccess()Z
    .registers 5

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

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

.method expiresAfterWrite()Z
    .registers 5

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3475
    if-nez p1, :cond_4

    .line 3476
    const/4 v0, 0x0

    .line 3479
    :goto_3
    return-object v0

    .line 3478
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3479
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method getEntry(Ljava/lang/Object;)Lcom/google/common/collect/gg;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3487
    if-nez p1, :cond_4

    .line 3488
    const/4 v0, 0x0

    .line 3491
    :goto_3
    return-object v0

    .line 3490
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3491
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_3
.end method

.method getLiveEntry(Ljava/lang/Object;)Lcom/google/common/collect/gg;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3498
    if-nez p1, :cond_4

    .line 3499
    const/4 v0, 0x0

    .line 3502
    :goto_3
    return-object v0

    .line 3501
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3502
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_3
.end method

.method getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1946
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1957
    :cond_7
    :goto_7
    return-object v0

    .line 1949
    :cond_8
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_7

    .line 1954
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1e
    move-object v0, v1

    .line 1957
    goto :goto_7
.end method

.method hash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1902
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3441
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3442
    :goto_7
    array-length v7, v6

    if-ge v0, v7, :cond_1a

    .line 3443
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_11

    .line 3460
    :cond_10
    :goto_10
    return v1

    .line 3446
    :cond_11
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3449
    :cond_1a
    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    move v0, v1

    .line 3450
    :goto_1f
    array-length v7, v6

    if-ge v0, v7, :cond_31

    .line 3451
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v7, :cond_10

    .line 3454
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3456
    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    .line 3460
    :cond_35
    const/4 v1, 0x1

    goto :goto_10
.end method

.method isExpired(Lcom/google/common/collect/gg;)Z
    .registers 4
    .parameter

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;J)Z

    move-result v0

    return v0
.end method

.method isExpired(Lcom/google/common/collect/gg;J)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1974
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getExpirationTime()J

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

.method isLive(Lcom/google/common/collect/gg;)Z
    .registers 3
    .parameter

    .prologue
    .line 1922
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 3625
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/gf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gf;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1877
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 3
    .parameter

    .prologue
    .line 2024
    new-array v0, p1, [Lcom/google/common/collect/MapMakerInternalMap$Segment;

    return-object v0
.end method

.method newValueReference(Lcom/google/common/collect/gg;Ljava/lang/Object;)Lcom/google/common/collect/gs;
    .registers 5
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1896
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getHash()I

    move-result v0

    .line 1897
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Ljava/lang/Object;)Lcom/google/common/collect/gs;

    move-result-object v0

    return-object v0
.end method

.method processPendingNotifications()V
    .registers 5

    .prologue
    .line 1999
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    if-eqz v0, :cond_1b

    .line 2001
    :try_start_a
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/fr;

    invoke-interface {v1, v0}, Lcom/google/common/collect/fr;->onRemoval(Lcom/google/common/collect/MapMaker$RemovalNotification;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_0

    .line 2002
    :catch_10
    move-exception v0

    .line 2003
    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2006
    :cond_1b
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3555
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3558
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 3571
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

    .line 3572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3574
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3563
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3566
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method reclaimKey(Lcom/google/common/collect/gg;)V
    .registers 4
    .parameter

    .prologue
    .line 1912
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getHash()I

    move-result v0

    .line 1913
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimKey(Lcom/google/common/collect/gg;I)Z

    .line 1914
    return-void
.end method

.method reclaimValue(Lcom/google/common/collect/gs;)V
    .registers 5
    .parameter

    .prologue
    .line 1906
    invoke-interface {p1}, Lcom/google/common/collect/gs;->a()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    .line 1908
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/gs;)Z

    .line 1909
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3578
    if-nez p1, :cond_4

    .line 3579
    const/4 v0, 0x0

    .line 3582
    :goto_3
    return-object v0

    .line 3581
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

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
    .line 3587
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 3588
    :cond_4
    const/4 v0, 0x0

    .line 3591
    :goto_5
    return v0

    .line 3590
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3591
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3607
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3610
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 3596
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    if-nez p2, :cond_a

    .line 3599
    const/4 v0, 0x0

    .line 3602
    :goto_9
    return v0

    .line 3601
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3602
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 5
    .parameter

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 7

    .prologue
    .line 3465
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3466
    const-wide/16 v1, 0x0

    .line 3467
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 3468
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3467
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3470
    :cond_11
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method usesKeyReferences()Z
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method usesValueReferences()Z
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 3633
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/gt;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gt;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 14

    .prologue
    .line 3938
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v5, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap;->maximumSize:I

    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    iget-object v11, p0, Lcom/google/common/collect/MapMakerInternalMap;->removalListener:Lcom/google/common/collect/fr;

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/fr;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

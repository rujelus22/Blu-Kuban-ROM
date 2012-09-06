.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/an;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DISTINCT_AGGREGATE:Lcom/google/common/collect/bk; = null

.field private static final NODE_FACTORY:Lcom/google/common/collect/by; = null

.field private static final SIZE_AGGREGATE:Lcom/google/common/collect/bk; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient range:Lcom/google/common/collect/GeneralRange;

.field private final transient rootReference:Lcom/google/common/collect/mq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 412
    new-instance v0, Lcom/google/common/collect/mj;

    invoke-direct {v0}, Lcom/google/common/collect/mj;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/bk;

    .line 430
    new-instance v0, Lcom/google/common/collect/mk;

    invoke-direct {v0}, Lcom/google/common/collect/mk;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/bk;

    .line 448
    new-instance v0, Lcom/google/common/collect/ml;

    invoke-direct {v0}, Lcom/google/common/collect/ml;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/by;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/mq;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/an;-><init>(Ljava/util/Comparator;)V

    .line 134
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 135
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    .line 136
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/google/common/collect/an;-><init>(Ljava/util/Comparator;)V

    .line 128
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 129
    new-instance v0, Lcom/google/common/collect/mq;

    invoke-direct {v0}, Lcom/google/common/collect/mq;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    .line 130
    return-void
.end method

.method static synthetic access$1200(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mq;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/TreeMultiset$Node;)J
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method private static countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 404
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v0

    goto :goto_3
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .registers 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .parameter

    .prologue
    .line 112
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 113
    invoke-static {v0, p0}, Lcom/google/common/collect/eb;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 114
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 94
    if-nez p0, :cond_c

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_b
.end method

.method private distinctAggregate()Lcom/google/common/collect/bk;
    .registers 2

    .prologue
    .line 409
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/bk;

    return-object v0
.end method

.method private static distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 400
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    #getter for: Lcom/google/common/collect/TreeMultiset$Node;->distinct:I
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$1000(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    goto :goto_3
.end method

.method private iteratorInDirection(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 271
    new-instance v0, Lcom/google/common/collect/mh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/mh;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)V

    .line 283
    new-instance v1, Lcom/google/common/collect/mi;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/mi;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method private mutate(Ljava/lang/Object;Lcom/google/common/collect/mp;)I
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/bk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bm;->a(Lcom/google/common/collect/bk;)Lcom/google/common/collect/bl;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/by;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/common/collect/bv;->a(Lcom/google/common/collect/bs;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;)Lcom/google/common/collect/bv;

    move-result-object v1

    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/bw;

    invoke-static {v2, v1, v0, p1}, Lcom/google/common/collect/bz;->a(Ljava/util/Comparator;Lcom/google/common/collect/bv;Lcom/google/common/collect/bw;Ljava/lang/Object;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/bt;->a()Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/bt;->b()Lcom/google/common/collect/bw;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/mq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 203
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 205
    :cond_34
    invoke-virtual {v0}, Lcom/google/common/collect/bt;->c()Lcom/google/common/collect/bw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 206
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method private nodeFactory()Lcom/google/common/collect/by;
    .registers 2

    .prologue
    .line 445
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/by;

    return-object v0
.end method

.method private pathFactory()Lcom/google/common/collect/cc;
    .registers 2

    .prologue
    .line 250
    invoke-static {}, Lcom/google/common/collect/bp;->a()Lcom/google/common/collect/cc;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 560
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 561
    const-class v1, Lcom/google/common/collect/an;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/mq;

    invoke-direct {v1}, Lcom/google/common/collect/mq;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/iq;Ljava/io/ObjectInputStream;)V

    .line 567
    return-void
.end method

.method private sizeAggregate()Lcom/google/common/collect/bk;
    .registers 2

    .prologue
    .line 427
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/bk;

    return-object v0
.end method

.method private static sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 396
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    #getter for: Lcom/google/common/collect/TreeMultiset$Node;->size:J
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$900(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 550
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 551
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 552
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/iq;Ljava/io/ObjectOutputStream;)V

    .line 553
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-nez p2, :cond_a

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 216
    :goto_9
    return v0

    .line 215
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 216
    new-instance v0, Lcom/google/common/collect/mm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/mm;-><init>(Lcom/google/common/collect/TreeMultiset;IB)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/mp;)I

    move-result v0

    goto :goto_9
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method final checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 140
    return-object p1
.end method

.method public final clear()V
    .registers 6

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 338
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/bk;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/bm;->a(Lcom/google/common/collect/bk;)Lcom/google/common/collect/bl;

    move-result-object v3

    new-instance v4, Lcom/google/common/collect/bo;

    invoke-direct {v4, v3, v2}, Lcom/google/common/collect/bo;-><init>(Lcom/google/common/collect/bl;Lcom/google/common/collect/bk;)V

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/by;

    move-result-object v2

    invoke-static {v1, v4, v2, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$Node;

    .line 341
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/mq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 342
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 344
    :cond_30
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 367
    invoke-super {p0}, Lcom/google/common/collect/an;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 182
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/bw;

    invoke-static {v3, v0, v2}, Lcom/google/common/collect/bz;->a(Ljava/util/Comparator;Lcom/google/common/collect/bw;Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 183
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_20} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_20} :catch_27

    move-result v0

    .line 189
    :goto_21
    return v0

    :cond_22
    move v0, v1

    .line 185
    goto :goto_21

    .line 187
    :catch_24
    move-exception v0

    move v0, v1

    goto :goto_21

    .line 189
    :catch_27
    move-exception v0

    move v0, v1

    goto :goto_21
.end method

.method final descendingEntryIterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 264
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/cc;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/bw;)Lcom/google/common/collect/cb;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    .line 266
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 168
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 256
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/cc;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/bw;)Lcom/google/common/collect/cb;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    .line 258
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->firstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->hashCode()I

    move-result v0

    return v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->comparator:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/mq;)V

    return-object v0
.end method

.method public final bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/common/collect/an;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->lastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic pollFirstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->pollFirstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic pollLastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->pollLastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    if-nez p1, :cond_4

    .line 230
    :cond_3
    :goto_3
    return v0

    .line 223
    :cond_4
    if-nez p2, :cond_b

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3

    .line 227
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/common/collect/mr;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/common/collect/mr;-><init>(Lcom/google/common/collect/TreeMultiset;IB)V

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/mp;)I
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_20} :catch_22

    move-result v0

    goto :goto_3

    .line 230
    :catch_22
    move-exception v1

    goto :goto_3
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/common/collect/an;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 246
    new-instance v0, Lcom/google/common/collect/ms;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/ms;-><init>(Lcom/google/common/collect/TreeMultiset;IB)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/mp;)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/ag;->a(Z)V

    .line 238
    new-instance v1, Lcom/google/common/collect/mn;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/google/common/collect/mn;-><init>(Lcom/google/common/collect/TreeMultiset;IIB)V

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/mp;)I

    move-result v1

    if-ne v1, p2, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public final size()I
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 174
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->sizeAggregate()Lcom/google/common/collect/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/an;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->comparator:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/mq;)V

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/common/collect/an;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

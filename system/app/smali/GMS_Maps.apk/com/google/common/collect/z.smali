.class abstract Lcom/google/common/collect/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cL;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 119
    iput-object p1, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/z;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/z;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/z;Ljava/lang/Object;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/collect/z;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 212
    if-nez v0, :cond_13

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_13
    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 363
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_d

    .line 364
    new-instance v0, Lcom/google/common/collect/N;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/I;)V

    .line 370
    :goto_c
    return-object v0

    .line 365
    :cond_d
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_19

    .line 366
    new-instance v0, Lcom/google/common/collect/M;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/M;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_c

    .line 367
    :cond_19
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_24

    .line 368
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 370
    :cond_24
    new-instance v0, Lcom/google/common/collect/I;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/I;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/I;)V

    goto :goto_c
.end method

.method static synthetic a(Lcom/google/common/collect/z;Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/common/collect/z;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 639
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/F;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/F;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/K;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/K;-><init>(Lcom/google/common/collect/z;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/I;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/common/collect/z;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a()Ljava/util/Set;
    .registers 3

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/common/collect/H;

    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/H;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/common/collect/D;

    iget-object v1, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/z;Ljava/util/Map;)V

    goto :goto_10
.end method

.method static synthetic b(Lcom/google/common/collect/z;)I
    .registers 3
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/z;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/z;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/z;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/z;)I
    .registers 3
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/z;->b:I

    return v0
.end method

.method private d(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1108
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_1a

    .line 1116
    if-eqz v0, :cond_17

    .line 1117
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1118
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1119
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/z;->b:I

    :cond_17
    move v0, v1

    move v1, v0

    .line 1121
    :goto_19
    return v1

    .line 1111
    :catch_1a
    move-exception v0

    goto :goto_19

    .line 1109
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method private g()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/common/collect/G;

    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/G;-><init>(Lcom/google/common/collect/z;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/common/collect/A;

    iget-object v1, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/A;-><init>(Lcom/google/common/collect/z;Ljava/util/Map;)V

    goto :goto_10
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 257
    :goto_b
    return v0

    .line 243
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 247
    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_2b

    .line 248
    invoke-static {p2}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 249
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 256
    :cond_20
    iget v3, p0, Lcom/google/common/collect/z;->b:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/z;->b:I

    goto :goto_b

    .line 251
    :cond_2b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 252
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_2f
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 202
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 203
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/z;->b:I

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 350
    if-nez v0, :cond_e

    .line 351
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 353
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/google/common/collect/z;->d:Ljava/util/Map;

    .line 1362
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/z;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z;->d:Ljava/util/Map;

    :cond_a
    return-object v0
.end method

.method abstract c()Ljava/util/Collection;
.end method

.method c(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/z;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/common/collect/z;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 334
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_a

    .line 336
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/z;->b:I

    .line 338
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1540
    if-ne p1, p0, :cond_4

    .line 1541
    const/4 v0, 0x1

    .line 1547
    :goto_3
    return v0

    .line 1543
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/cL;

    if-eqz v0, :cond_15

    .line 1544
    check-cast p1, Lcom/google/common/collect/cL;

    .line 1545
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/common/collect/cL;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 1547
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Ljava/util/Set;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/common/collect/z;->c:Ljava/util/Set;

    .line 866
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/z;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z;->c:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

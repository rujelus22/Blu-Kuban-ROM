.class public Lcom/google/common/collect/bK;
.super Lcom/google/common/collect/bQ;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final c:Ljava/util/Comparator;

.field private static final d:Lcom/google/common/collect/bK;

.field private static final serialVersionUID:J


# instance fields
.field final transient a:Lcom/google/common/collect/ImmutableList;

.field final transient b:Lcom/google/common/base/D;

.field private final transient e:Ljava/util/Comparator;

.field private transient f:Lcom/google/common/collect/ImmutableSet;

.field private transient g:Lcom/google/common/collect/bR;

.field private transient h:Lcom/google/common/collect/br;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    invoke-static {}, Lcom/google/common/collect/cV;->a()Lcom/google/common/collect/cV;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bK;->c:Ljava/util/Comparator;

    .line 72
    new-instance v0, Lcom/google/common/collect/bK;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/bK;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/bK;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/bK;->d:Lcom/google/common/collect/bK;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/common/collect/bQ;-><init>()V

    .line 411
    new-instance v0, Lcom/google/common/collect/bL;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bL;-><init>(Lcom/google/common/collect/bK;)V

    iput-object v0, p0, Lcom/google/common/collect/bK;->b:Lcom/google/common/base/D;

    .line 402
    iput-object p1, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    .line 403
    iput-object p2, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    .line 404
    return-void
.end method

.method private a(II)Lcom/google/common/collect/bK;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 694
    if-ge p1, p2, :cond_10

    .line 695
    new-instance v0, Lcom/google/common/collect/bK;

    iget-object v1, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/bK;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 698
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/bK;->a(Ljava/util/Comparator;)Lcom/google/common/collect/bK;

    move-result-object v0

    goto :goto_f
.end method

.method private static a(Ljava/util/Comparator;)Lcom/google/common/collect/bK;
    .registers 3
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/google/common/collect/bK;->c:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Lcom/google/common/collect/bK;->d:Lcom/google/common/collect/bK;

    .line 92
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/bK;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/bK;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method private c(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/bK;->b:Lcom/google/common/base/D;

    invoke-static {v0, v1}, Lcom/google/common/collect/cx;->a(Ljava/util/List;Lcom/google/common/base/D;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    sget-object v2, Lcom/google/common/collect/dv;->d:Lcom/google/common/collect/dv;

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/common/collect/dt;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/dv;Z)I

    move-result v0

    return v0
.end method

.method private j()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/bO;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bO;-><init>(Lcom/google/common/collect/bK;)V

    goto :goto_a
.end method

.method private k()Lcom/google/common/collect/bR;
    .registers 4

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;)Lcom/google/common/collect/bR;

    move-result-object v0

    .line 530
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/collect/dk;

    new-instance v1, Lcom/google/common/collect/bM;

    iget-object v2, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/bM;-><init>(Lcom/google/common/collect/bK;Lcom/google/common/collect/ImmutableList;)V

    iget-object v2, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_c
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/common/collect/bK;->f:Lcom/google/common/collect/ImmutableSet;

    .line 460
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/bK;->j()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bK;->f:Lcom/google/common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/bK;
    .registers 4
    .parameter

    .prologue
    .line 644
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bK;->c(Ljava/lang/Object;)I

    move-result v0

    .line 645
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/bK;->a(II)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/bK;
    .registers 4
    .parameter

    .prologue
    .line 683
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/bK;->c(Ljava/lang/Object;)I

    move-result v0

    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/bK;->a(II)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bK;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 663
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 666
    invoke-direct {p0, p1}, Lcom/google/common/collect/bK;->c(Ljava/lang/Object;)I

    move-result v0

    .line 667
    invoke-direct {p0, p2}, Lcom/google/common/collect/bK;->c(Ljava/lang/Object;)I

    move-result v1

    .line 668
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/bK;->a(II)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0

    .line 665
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c()Lcom/google/common/collect/br;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/collect/bK;->h:Lcom/google/common/collect/br;

    .line 547
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/bP;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bP;-><init>(Lcom/google/common/collect/bK;)V

    iput-object v0, p0, Lcom/google/common/collect/bK;->h:Lcom/google/common/collect/br;

    :cond_b
    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 442
    if-nez p1, :cond_4

    .line 443
    const/4 v0, 0x0

    .line 445
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->g()Lcom/google/common/collect/dE;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method d()Z
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method e()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/common/collect/bK;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/common/collect/bR;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/bK;->g:Lcom/google/common/collect/bR;

    .line 521
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/bK;->k()Lcom/google/common/collect/bR;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bK;->g:Lcom/google/common/collect/bR;

    :cond_a
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 619
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 621
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/google/common/collect/dE;
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/google/common/collect/bN;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/bN;-><init>(Lcom/google/common/collect/bK;Lcom/google/common/collect/dE;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p1, :cond_4

    .line 438
    :cond_3
    :goto_3
    return-object v0

    .line 433
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/bK;->b:Lcom/google/common/base/D;

    invoke-static {v1, v2}, Lcom/google/common/collect/cx;->a(Ljava/util/List;Lcom/google/common/base/D;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/bK;->e()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/dv;->c:Lcom/google/common/collect/dv;

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/common/collect/dt;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/dv;Z)I
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_16} :catch_26

    move-result v1

    .line 438
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 435
    :catch_26
    move-exception v1

    goto :goto_3
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bK;->a(Ljava/lang/Object;)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->f()Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 627
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 629
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/bK;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/common/collect/bK;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/bK;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bK;->b(Ljava/lang/Object;)Lcom/google/common/collect/bK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->c()Lcom/google/common/collect/br;

    move-result-object v0

    return-object v0
.end method

.method public synthetic x_()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/bK;->f()Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

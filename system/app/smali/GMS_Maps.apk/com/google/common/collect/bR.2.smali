.class public abstract Lcom/google/common/collect/bR;
.super Lcom/google/common/collect/bS;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final b:Ljava/util/Comparator;

.field private static final d:Lcom/google/common/collect/bR;


# instance fields
.field final transient a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/common/collect/cV;->a()Lcom/google/common/collect/cV;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/bR;->b:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/google/common/collect/bf;

    sget-object v1, Lcom/google/common/collect/bR;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/bf;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/bR;->d:Lcom/google/common/collect/bR;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/common/collect/bS;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/google/common/collect/bR;->a:Ljava/util/Comparator;

    .line 691
    return-void
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    .line 684
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 456
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 457
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 467
    :goto_b
    return-object v0

    .line 459
    :cond_c
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v0

    .line 461
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 463
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_2c

    .line 464
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 461
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 467
    :cond_2f
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_b
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/common/collect/bR;
    .registers 2
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/google/common/collect/bR;->b:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    invoke-static {}, Lcom/google/common/collect/bR;->h()Lcom/google/common/collect/bR;

    move-result-object v0

    .line 113
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/collect/bf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bf;-><init>(Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private static a(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/bR;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    if-nez p2, :cond_8

    invoke-static {p1, p0}, Lcom/google/common/collect/bR;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_8
    const/4 v0, 0x1

    .line 418
    :goto_9
    if-eqz v0, :cond_2b

    instance-of v0, p1, Lcom/google/common/collect/bR;

    if-eqz v0, :cond_2b

    move-object v0, p1

    .line 420
    check-cast v0, Lcom/google/common/collect/bR;

    .line 421
    invoke-virtual {v0}, Lcom/google/common/collect/bR;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 437
    :cond_18
    :goto_18
    return-object v0

    .line 415
    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    .line 424
    :cond_1b
    invoke-virtual {v0}, Lcom/google/common/collect/bR;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 425
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 426
    if-eq v1, v2, :cond_18

    .line 429
    new-instance v0, Lcom/google/common/collect/dk;

    invoke-direct {v0, v2, p0}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_18

    .line 432
    :cond_2b
    invoke-static {p1}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 435
    invoke-static {p0}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;)Lcom/google/common/collect/bR;

    move-result-object v0

    goto :goto_18

    .line 437
    :cond_3e
    new-instance v0, Lcom/google/common/collect/dk;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_18
.end method

.method public static a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/bR;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 479
    instance-of v1, p0, Ljava/util/SortedSet;

    if-eqz v1, :cond_14

    .line 480
    check-cast p0, Ljava/util/SortedSet;

    .line 481
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 482
    if-nez v1, :cond_15

    invoke-static {}, Lcom/google/common/collect/cV;->a()Lcom/google/common/collect/cV;

    move-result-object v1

    if-ne p1, v1, :cond_14

    const/4 v0, 0x1

    .line 486
    :cond_14
    :goto_14
    return v0

    .line 482
    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method

.method private static h()Lcom/google/common/collect/bR;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/common/collect/bR;->d:Lcom/google/common/collect/bR;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Lcom/google/common/collect/bR;
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;
.end method

.method abstract b(Ljava/lang/Object;)Lcom/google/common/collect/bR;
.end method

.method abstract c(Ljava/lang/Object;)I
.end method

.method c(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/common/collect/bR;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/bR;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/common/collect/bR;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/google/common/collect/bR;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/bR;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0

    .line 738
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public e(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 3
    .parameter

    .prologue
    .line 718
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bR;->a(Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 3
    .parameter

    .prologue
    .line 755
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bR;->b(Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bR;->e(Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/bR;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bR;->f(Ljava/lang/Object;)Lcom/google/common/collect/bR;

    move-result-object v0

    return-object v0
.end method

.class public abstract LK/bD;
.super LK/bE;

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final b:Ljava/util/Comparator;

.field private static final d:LK/bD;


# instance fields
.field final transient a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, LK/cg;->a()LK/cg;

    move-result-object v0

    sput-object v0, LK/bD;->b:Ljava/util/Comparator;

    new-instance v0, LK/aX;

    sget-object v1, LK/bD;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, LK/aX;-><init>(Ljava/util/Comparator;)V

    sput-object v0, LK/bD;->d:LK/bD;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, LK/bE;-><init>()V

    iput-object p1, p0, LK/bD;->a:Ljava/util/Comparator;

    return-void
.end method

.method static a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/Comparator;)LK/bD;
    .registers 2

    sget-object v0, LK/bD;->b:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, LK/bD;->h()LK/bD;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, LK/aX;

    invoke-direct {v0, p0}, LK/aX;-><init>(Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private static a(Ljava/util/Comparator;Ljava/lang/Iterable;Z)LK/bD;
    .registers 6

    if-nez p2, :cond_8

    invoke-static {p1, p0}, LK/bD;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_2b

    instance-of v0, p1, LK/bD;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, LK/bD;

    invoke-virtual {v0}, LK/bD;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, LK/bD;->d()LK/bn;

    move-result-object v1

    invoke-static {p1}, LK/bn;->a(Ljava/lang/Iterable;)LK/bn;

    move-result-object v2

    if-eq v1, v2, :cond_18

    new-instance v0, LK/cu;

    invoke-direct {v0, v2, p0}, LK/cu;-><init>(LK/bn;Ljava/util/Comparator;)V

    goto :goto_18

    :cond_2b
    invoke-static {p1}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, LK/bD;->a(Ljava/util/Comparator;Ljava/util/List;)LK/bn;

    move-result-object v1

    invoke-virtual {v1}, LK/bn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {p0}, LK/bD;->a(Ljava/util/Comparator;)LK/bD;

    move-result-object v0

    goto :goto_18

    :cond_3e
    new-instance v0, LK/cu;

    invoke-direct {v0, v1, p0}, LK/cu;-><init>(LK/bn;Ljava/util/Comparator;)V

    goto :goto_18
.end method

.method public static a(Ljava/util/Comparator;Ljava/util/Collection;)LK/bD;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LK/bD;->a(Ljava/util/Comparator;Ljava/lang/Iterable;Z)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Comparator;Ljava/util/List;)LK/bn;
    .registers 6

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v0

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    goto :goto_b
.end method

.method static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/util/SortedSet;

    if-eqz v1, :cond_14

    check-cast p0, Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-static {}, LK/cg;->a()LK/cg;

    move-result-object v1

    if-ne p1, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method

.method private static h()LK/bD;
    .registers 1

    sget-object v0, LK/bD;->d:LK/bD;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)LK/bD;
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;
.end method

.method abstract b(Ljava/lang/Object;)LK/bD;
.end method

.method abstract c(Ljava/lang/Object;)I
.end method

.method c(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, LK/bD;->a:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, LK/bD;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, LK/bD;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LK/bD;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    invoke-virtual {p0, p1, p2}, LK/bD;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public e(Ljava/lang/Object;)LK/bD;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LK/bD;->a(Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)LK/bD;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LK/bD;->b(Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    invoke-virtual {p0, p1}, LK/bD;->e(Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    invoke-virtual {p0, p1, p2}, LK/bD;->d(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    invoke-virtual {p0, p1}, LK/bD;->f(Ljava/lang/Object;)LK/bD;

    move-result-object v0

    return-object v0
.end method

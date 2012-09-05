.class public final LK/bF;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/o;)Ljava/lang/Iterable;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LK/bG;

    invoke-direct {v0, p0, p1}, LK/bG;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/o;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bI;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Z
    .registers 3

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/w;

    invoke-static {p0, v0}, LK/bF;->a(Ljava/util/List;Lcom/google/common/base/w;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, LK/bI;->a(Ljava/util/Iterator;Lcom/google/common/base/w;)Z

    move-result v0

    goto :goto_14
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/w;)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    if-le v2, v0, :cond_18

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v0, v0, 0x1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eq v2, v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bI;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

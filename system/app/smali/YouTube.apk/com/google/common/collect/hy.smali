.class abstract Lcom/google/common/collect/hy;
.super Lcom/google/common/collect/ak;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1861
    invoke-direct {p0}, Lcom/google/common/collect/ak;-><init>()V

    .line 1900
    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/hu;
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->clear()V

    .line 2000
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 1954
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1955
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1956
    if-nez v0, :cond_1d

    move v0, v1

    .line 1962
    :goto_1c
    return v0

    .line 1956
    :cond_1d
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_20} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_20} :catch_27

    move-result v0

    goto :goto_1c

    :cond_22
    move v0, v1

    .line 1958
    goto :goto_1c

    .line 1960
    :catch_24
    move-exception v0

    move v0, v1

    goto :goto_1c

    .line 1962
    :catch_27
    move-exception v0

    move v0, v1

    goto :goto_1c
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1897
    new-instance v0, Lcom/google/common/collect/ic;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ic;-><init>(Lcom/google/common/collect/hy;)V

    return-object v0
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 1893
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1867
    new-instance v1, Lcom/google/common/collect/hz;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/hz;-><init>(Lcom/google/common/collect/hy;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ib;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ib;-><init>(Lcom/google/common/collect/hy;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 1967
    if-ltz p2, :cond_e

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 1968
    if-nez p2, :cond_10

    .line 1969
    invoke-virtual {p0, p1}, Lcom/google/common/collect/hy;->count(Ljava/lang/Object;)I

    move-result v1

    .line 1995
    :cond_d
    :goto_d
    return v1

    :cond_e
    move v0, v1

    .line 1967
    goto :goto_4

    .line 1974
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/google/common/collect/hy;->a()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_1e} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1e} :catch_3a

    .line 1981
    if-eqz v0, :cond_d

    .line 1985
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1986
    if-lt p2, v2, :cond_2b

    .line 1987
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_29
    move v1, v2

    .line 1995
    goto :goto_d

    .line 1989
    :cond_2b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1990
    :goto_2f
    if-ge v1, p2, :cond_29

    .line 1991
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1992
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1990
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1978
    :catch_3a
    move-exception v0

    goto :goto_d

    .line 1976
    :catch_3c
    move-exception v0

    goto :goto_d
.end method

.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/z;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1982
    sget-object v0, Lcom/google/common/collect/cf;->a:Lcom/google/common/base/x;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/x;->c(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->a:Lcom/google/common/base/z;

    return-void
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1991
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 1993
    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashMap;
    .registers 3
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 722
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 749
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Lcom/google/common/collect/ha;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ha;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/common/base/v;)Ljava/util/Map;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v1, Lcom/google/common/collect/hb;

    invoke-direct {v1, p1}, Lcom/google/common/collect/hb;-><init>(Lcom/google/common/base/v;)V

    .line 951
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_13

    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/common/collect/hk;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/hk;-><init>(Ljava/util/Map;Lcom/google/common/collect/he;)V

    goto :goto_12
.end method

.method static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 735
    new-instance v0, Lcom/google/common/collect/hr;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/hr;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedMap;Lcom/google/common/base/v;)Ljava/util/SortedMap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v0, Lcom/google/common/collect/hc;

    invoke-direct {v0, p1}, Lcom/google/common/collect/hc;-><init>(Lcom/google/common/base/v;)V

    .line 1004
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1123
    new-instance v0, Lcom/google/common/collect/ho;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ho;-><init>(Ljava/util/SortedMap;Lcom/google/common/collect/he;)V

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2085
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

    .line 2086
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2088
    :cond_20
    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2023
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 2024
    const/4 v0, 0x0

    .line 2026
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x3

    if-ge p0, v0, :cond_e

    .line 113
    if-ltz p0, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 114
    add-int/lit8 v0, p0, 0x1

    .line 119
    :goto_b
    return v0

    .line 113
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 116
    :cond_e
    const/high16 v0, 0x4000

    if-ge p0, v0, :cond_16

    .line 117
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_b

    .line 119
    :cond_16
    const v0, 0x7fffffff

    goto :goto_b
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2074
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cf;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2076
    sget-object v1, Lcom/google/common/collect/Maps;->a:Lcom/google/common/base/z;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 2077
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .registers 1

    .prologue
    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2043
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 2044
    const/4 v0, 0x0

    .line 2046
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2003
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 2005
    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method static c(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2053
    if-ne p0, p1, :cond_4

    .line 2054
    const/4 v0, 0x1

    .line 2060
    :goto_3
    return v0

    .line 2056
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 2057
    check-cast p1, Ljava/util/Map;

    .line 2058
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 2060
    :cond_17
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static d(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2094
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2095
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2096
    const/4 v0, 0x1

    .line 2099
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static e(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2106
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2108
    const/4 v0, 0x1

    .line 2111
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

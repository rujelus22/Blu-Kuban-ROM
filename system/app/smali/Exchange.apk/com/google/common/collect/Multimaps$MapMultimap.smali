.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapMultimap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,
        Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final joiner:Lcom/google/common/base/Joiner$MapJoiner; = null

.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1082
    const-string v0, "], "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "=["

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner$MapJoiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Multimaps$MapMultimap;->joiner:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1061
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_b

    .line 1062
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;

    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    .restart local v0       #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1064
    :cond_b
    return-object v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 975
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 949
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1068
    if-ne p1, p0, :cond_5

    .line 1075
    :cond_4
    :goto_4
    return v1

    .line 1071
    :cond_5
    instance-of v3, p1, Lcom/google/common/collect/Multimap;

    if-eqz v3, :cond_26

    move-object v0, p1

    .line 1072
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 1073
    .local v0, that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->size()I

    move-result v3

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v4

    if-ne v3, v4, :cond_24

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    .end local v0           #that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    :cond_26
    move v1, v2

    .line 1075
    goto :goto_4
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter "x0"

    .prologue
    .line 949
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1079
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1032
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1036
    :goto_e
    return-object v0

    .line 1035
    :cond_f
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 959
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1086
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1087
    const-string v1, "{}"

    .line 1091
    :goto_a
    return-object v1

    .line 1089
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1090
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/common/collect/Multimaps$MapMultimap;->joiner:Lcom/google/common/base/Joiner$MapJoiner;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jv;
.implements Ljava/io/Serializable;


# static fields
.field private static final JOINER:Lcom/google/common/base/z; = null

.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field transient asMap:Ljava/util/Map;

.field final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1181
    const-string v0, "], "

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    const-string v1, "=["

    invoke-virtual {v0, v1}, Lcom/google/common/base/x;->c(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/z;->a(Ljava/lang/String;)Lcom/google/common/base/z;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/z;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    .line 1034
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1160
    if-nez v0, :cond_b

    .line 1161
    new-instance v0, Lcom/google/common/collect/if;

    invoke-direct {v0, p0}, Lcom/google/common/collect/if;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1163
    :cond_b
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1135
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1167
    if-ne p1, p0, :cond_5

    .line 1174
    :cond_4
    :goto_4
    return v0

    .line 1170
    :cond_5
    instance-of v2, p1, Lcom/google/common/collect/hu;

    if-eqz v2, :cond_25

    .line 1171
    check-cast p1, Lcom/google/common/collect/hu;

    .line 1172
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->size()I

    move-result v2

    invoke-interface {p1}, Lcom/google/common/collect/hu;->size()I

    move-result v3

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    move v0, v1

    .line 1174
    goto :goto_4
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 1063
    new-instance v0, Lcom/google/common/collect/id;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/id;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Ljava/util/Set;)Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 3
    .parameter

    .prologue
    .line 1109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .parameter

    .prologue
    .line 1124
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1125
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1129
    :goto_e
    return-object v0

    .line 1128
    :cond_f
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1027
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$MapMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1186
    const-string v0, "{}"

    .line 1191
    :goto_a
    return-object v0

    .line 1188
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cf;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1190
    sget-object v1, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/z;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;
.super Ljava/lang/Object;
.source "GoogleAtom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method

.method public static computePatch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 6
    .parameter "patched"
    .parameter "original"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 165
    .local v0, fieldsMask:Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    invoke-static {v0, p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 166
    .local v1, result:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    if-eqz v2, :cond_18

    .line 167
    const-string v2, "@gd:fields"

    iget-object v3, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_18
    return-object v1
.end method

.method private static computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v4

    .line 175
    invoke-static {p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 176
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 177
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 178
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 179
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    if-eq v1, v3, :cond_23

    .line 186
    if-nez v1, :cond_56

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 187
    :goto_3f
    invoke-static {v2}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 188
    if-eqz v1, :cond_4d

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 191
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    .line 196
    if-eqz v3, :cond_23

    .line 197
    invoke-virtual {v4, v0, v3}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    .line 186
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_3f

    .line 199
    :cond_5b
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 200
    if-eqz v1, :cond_88

    if-eqz v3, :cond_88

    move-object v0, v1

    .line 202
    check-cast v0, Ljava/util/Collection;

    move-object v2, v3

    .line 204
    check-cast v2, Ljava/util/Collection;

    .line 205
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    .line 206
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v8, v0, :cond_88

    .line 208
    const/4 v0, 0x0

    :goto_78
    if-ge v0, v8, :cond_86

    .line 209
    new-instance v2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 210
    invoke-static {v2, v3, v1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    .line 211
    iget v2, v2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    if-eqz v2, :cond_90

    .line 215
    :cond_86
    if-eq v0, v8, :cond_23

    .line 221
    :cond_88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented: support for patching collections"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 224
    :cond_93
    if-nez v1, :cond_a0

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    .line 226
    invoke-static {v3}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    .line 227
    :cond_a0
    if-nez v3, :cond_a7

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 230
    :cond_a7
    new-instance v2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 231
    invoke-static {v2, v3, v1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 233
    iget v3, v2, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    .line 234
    if-eqz v3, :cond_23

    .line 235
    invoke-virtual {p0, v0, v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;)V

    .line 236
    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    .line 241
    :cond_bc
    return-object v4
.end method

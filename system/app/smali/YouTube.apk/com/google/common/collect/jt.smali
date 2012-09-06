.class final Lcom/google/common/collect/jt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/google/common/collect/ju;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ju;-><init>(Ljava/lang/reflect/Field;B)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 201
    :catch_b
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static a(Lcom/google/common/collect/hu;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 171
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectInputStream;I)V

    .line 172
    return-void
.end method

.method static a(Lcom/google/common/collect/hu;Ljava/io/ObjectInputStream;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move v2, v1

    .line 182
    :goto_2
    if-ge v2, p2, :cond_21

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-interface {p0, v0}, Lcom/google/common/collect/hu;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 186
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    move v0, v1

    .line 187
    :goto_11
    if-ge v0, v4, :cond_1d

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 190
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 182
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 193
    :cond_21
    return-void
.end method

.method static a(Lcom/google/common/collect/hu;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-interface {p0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 154
    invoke-interface {p0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_41

    .line 161
    :cond_4f
    return-void
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 122
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/iq;Ljava/io/ObjectInputStream;I)V

    .line 123
    return-void
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/io/ObjectInputStream;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 137
    invoke-interface {p0, v1, v2}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_11
    return-void
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 108
    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 109
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 110
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_13

    .line 112
    :cond_2e
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 77
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 78
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 89
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 92
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_11
    return-void
.end method

.method static a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 64
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_f

    .line 68
    :cond_2a
    return-void
.end method

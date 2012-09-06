.class public Lcom/google/api/client/util/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, data:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    .end local p0           #data:Ljava/lang/Object;,"TT;"
    :goto_6
    return-object p0

    .line 70
    .restart local p0       #data:Ljava/lang/Object;,"TT;"
    :cond_7
    instance-of v2, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v2, :cond_18

    move-object v2, p0

    .line 73
    check-cast v2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v2}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v1

    .line 74
    .local v1, copyTmp:Lcom/google/api/client/util/GenericData;,"TT;"
    move-object v0, v1

    .line 86
    .end local v1           #copyTmp:Lcom/google/api/client/util/GenericData;,"TT;"
    :goto_13
    invoke-static {p0, v0}, Lcom/google/api/client/util/DataUtil;->cloneInternal(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    .line 87
    goto :goto_6

    .line 75
    :cond_18
    instance-of v2, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v2, :cond_25

    move-object v2, p0

    .line 78
    check-cast v2, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 79
    .local v1, copyTmp:Lcom/google/api/client/util/ArrayMap;,"TT;"
    move-object v0, v1

    .line 80
    .local v0, copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    goto :goto_13

    .line 83
    .end local v0           #copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    .end local v1           #copyTmp:Lcom/google/api/client/util/ArrayMap;,"TT;"
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, copyTmp:Ljava/lang/Object;,"TT;"
    move-object v0, v1

    .local v0, copy:Ljava/lang/Object;,"TT;"
    goto :goto_13
.end method

.method static cloneInternal(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 95
    check-cast p0, Ljava/util/Collection;

    .line 96
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p1

    .line 98
    check-cast v0, Ljava/util/ArrayList;

    .line 99
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 102
    :cond_20
    check-cast p1, Ljava/util/Collection;

    .line 103
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 107
    :cond_38
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 108
    if-nez v1, :cond_48

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 109
    :cond_48
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/google/api/client/util/ClassInfo;->getKeyNames()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_54
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 113
    iget-boolean v4, v0, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    if-nez v4, :cond_54

    .line 115
    if-eqz v1, :cond_6e

    iget-boolean v4, v0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-nez v4, :cond_54

    .line 116
    :cond_6e
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_54

    .line 118
    invoke-static {v4}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_54

    .line 123
    :cond_7c
    const-class v1, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 125
    check-cast p1, Lcom/google/api/client/util/ArrayMap;

    .line 127
    check-cast p0, Lcom/google/api/client/util/ArrayMap;

    .line 128
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v1

    .line 129
    const/4 v0, 0x0

    :goto_8d
    if-ge v0, v1, :cond_cb

    .line 130
    invoke-virtual {p0, v0}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 132
    invoke-static {v2}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 137
    :cond_a3
    check-cast p1, Ljava/util/Map;

    .line 139
    check-cast p0, Ljava/util/Map;

    .line 140
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 146
    :cond_cb
    return-void
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 42
    if-nez p0, :cond_7

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 50
    :goto_6
    return-object v0

    .line 45
    :cond_7
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_f

    move-object v0, p0

    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 50
    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    new-instance v0, Lcom/google/api/client/util/ReflectionMap;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/ReflectionMap;-><init>(Ljava/lang/Object;)V

    goto :goto_6
.end method

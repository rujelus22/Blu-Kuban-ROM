.class public final Lcom/google/api/client/util/ArrayValueMap;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    }
.end annotation


# instance fields
.field private final destination:Ljava/lang/Object;

.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field

.field private final keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "destination"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .parameter "field"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, arrayComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .line 123
    .local v0, arrayValue:Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    if-nez v0, :cond_14

    .line 124
    new-instance v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .end local v0           #arrayValue:Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    invoke-direct {v0, p2}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;-><init>(Ljava/lang/Class;)V

    .line 125
    .restart local v0       #arrayValue:Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_14
    invoke-virtual {v0, p2, p3}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->addValue(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public setValues()V
    .registers 8

    .prologue
    .line 103
    iget-object v4, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 106
    .local v0, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 108
    .end local v0           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    :cond_2c
    iget-object v4, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    iget-object v6, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v5}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 111
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    :cond_58
    return-void
.end method

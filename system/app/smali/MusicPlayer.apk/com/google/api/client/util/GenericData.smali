.class public Lcom/google/api/client/util/GenericData;
.super Ljava/util/AbstractMap;
.source "GenericData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/GenericData$EntryIterator;,
        Lcom/google/api/client/util/GenericData$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final classInfo:Lcom/google/api/client/util/ClassInfo;

.field private entrySet:Lcom/google/api/client/util/GenericData$EntrySet;

.field public unknownFields:Lcom/google/api/client/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/google/api/client/util/GenericData;)Lcom/google/api/client/util/ClassInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/api/client/util/GenericData;
    .registers 4

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/GenericData;

    .line 132
    .local v1, result:Lcom/google/api/client/util/GenericData;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/api/client/util/GenericData;->entrySet:Lcom/google/api/client/util/GenericData$EntrySet;

    .line 133
    invoke-static {p0, v1}, Lcom/google/api/client/util/DataUtil;->cloneInternal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-static {v2}, Lcom/google/api/client/util/DataUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/ArrayMap;

    iput-object v2, v1, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    .line 135
    return-object v1

    .line 136
    .end local v1           #result:Lcom/google/api/client/util/GenericData;
    :catch_17
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->entrySet:Lcom/google/api/client/util/GenericData$EntrySet;

    .line 121
    .local v0, entrySet:Lcom/google/api/client/util/GenericData$EntrySet;
    if-nez v0, :cond_b

    .line 122
    new-instance v0, Lcom/google/api/client/util/GenericData$EntrySet;

    .end local v0           #entrySet:Lcom/google/api/client/util/GenericData$EntrySet;
    invoke-direct {v0, p0}, Lcom/google/api/client/util/GenericData$EntrySet;-><init>(Lcom/google/api/client/util/GenericData;)V

    iput-object v0, p0, Lcom/google/api/client/util/GenericData;->entrySet:Lcom/google/api/client/util/GenericData$EntrySet;

    .line 124
    .restart local v0       #entrySet:Lcom/google/api/client/util/GenericData$EntrySet;
    :cond_b
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "name"

    .prologue
    .line 61
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 62
    const/4 v2, 0x0

    .line 69
    :goto_5
    return-object v2

    :cond_6
    move-object v1, p1

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, fieldName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2, v1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 66
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_16

    .line 67
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .line 69
    :cond_16
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2, v1}, Lcom/google/api/client/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 75
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, oldValue:Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .end local v1           #oldValue:Ljava/lang/Object;
    :goto_f
    return-object v1

    :cond_10
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Lcom/google/api/client/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 103
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    :cond_22
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "name"

    .prologue
    .line 107
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1c

    move-object v1, p1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, fieldName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2, v1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 110
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_15

    .line 111
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 113
    :cond_15
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2, p1}, Lcom/google/api/client/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .end local v0           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v1           #fieldName:Ljava/lang/String;
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 91
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_c

    .line 92
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :goto_b
    return-void

    .line 95
    :cond_c
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/google/api/client/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public size()I
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v0}, Lcom/google/api/client/util/ClassInfo;->getKeyCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

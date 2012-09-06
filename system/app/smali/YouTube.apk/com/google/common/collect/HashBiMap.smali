.class public final Lcom/google/common/collect/HashBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method private constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0}, Lcom/google/common/collect/HashBiMap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 68
    invoke-super {v0, p0}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    .line 69
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 106
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 107
    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/HashBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 109
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 110
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 99
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final bridge synthetic clear()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/bj;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/bj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

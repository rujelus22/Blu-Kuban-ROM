.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 92
    return-void
.end method

.method private constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 96
    if-ltz p2, :cond_14

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 97
    iput p2, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 98
    return-void

    .line 96
    :cond_14
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private constructor <init>(Lcom/google/common/collect/hu;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-interface {p1}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    .line 104
    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultimap;
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/HashMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/hu;)Lcom/google/common/collect/HashMultimap;
    .registers 2
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashMultimap;-><init>(Lcom/google/common/collect/hu;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 135
    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashMultimap;->setMap(Ljava/util/Map;)V

    .line 137
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectInputStream;I)V

    .line 138
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 125
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 126
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectOutputStream;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final bridge synthetic asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final createCollection()Ljava/util/Set;
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keys()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Lcom/google/common/collect/hu;)Z
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic size()I
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

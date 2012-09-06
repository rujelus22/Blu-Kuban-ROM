.class final Lcom/google/common/collect/SingletonImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 117
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p1, p0, :cond_5

    .line 128
    :cond_4
    :goto_4
    return v1

    .line 124
    :cond_5
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_20

    move-object v0, p1

    .line 125
    check-cast v0, Ljava/util/List;

    .line 126
    .local v0, that:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1e

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4

    .end local v0           #that:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_20
    move v1, v2

    .line 128
    goto :goto_4
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 151
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 59
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .registers 3
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 64
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/SingletonImmutableList$1;-><init>(Lcom/google/common/collect/SingletonImmutableList;I)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SingletonImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 104
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 109
    if-ne p1, p2, :cond_a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .end local p0           #this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    :cond_a
    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/SingletonImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 155
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x1

    .line 159
    array-length v1, p1

    if-nez v1, :cond_f

    .line 160
    invoke-static {p1, v2}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 165
    :cond_8
    :goto_8
    move-object v0, p1

    .line 166
    .local v0, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 167
    return-object p1

    .line 161
    .end local v0           #objectArray:[Ljava/lang/Object;
    :cond_f
    array-length v1, p1

    if-le v1, v2, :cond_8

    .line 162
    const/4 v1, 0x0

    aput-object v1, p1, v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList;,"Lcom/google/common/collect/SingletonImmutableList<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, elementToString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

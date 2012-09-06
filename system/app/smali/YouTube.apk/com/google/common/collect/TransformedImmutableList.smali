.class abstract Lcom/google/common/collect/TransformedImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field private final transient backingList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p1, p0, :cond_5

    .line 106
    :cond_4
    :goto_4
    return v0

    .line 101
    :cond_5
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_25

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    move v0, v1

    .line 106
    goto :goto_4
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 110
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_16

    const/4 v0, 0x0

    :goto_14
    add-int/2addr v0, v3

    goto :goto_5

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    .line 114
    :cond_1b
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, -0x1

    .line 54
    if-nez p1, :cond_5

    move v0, v1

    .line 62
    :cond_4
    :goto_4
    return v0

    .line 57
    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    move v0, v1

    .line 62
    goto :goto_4
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, -0x1

    .line 66
    if-nez p1, :cond_4

    .line 74
    :cond_3
    :goto_3
    return v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_3

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v0, v1

    .line 71
    goto :goto_3

    .line 69
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method public listIterator(I)Lcom/google/common/collect/mu;
    .registers 4
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/collect/md;

    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/md;-><init>(Lcom/google/common/collect/TransformedImmutableList;II)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;

    iget-object v1, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TransformedImmutableList$TransformedView;-><init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/common/collect/jd;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/jd;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
.end method

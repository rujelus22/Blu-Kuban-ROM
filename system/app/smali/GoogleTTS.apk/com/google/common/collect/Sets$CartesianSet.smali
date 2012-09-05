.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$CartesianSet$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Sets$CartesianSet",
            "<TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final size:I


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    const/4 v4, 0x0

    .line 863
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_7

    move v3, v4

    .line 876
    :goto_6
    return v3

    :cond_7
    move-object v2, p1

    .line 866
    check-cast v2, Ljava/util/List;

    .line 867
    .local v2, tuple:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 868
    .local v0, dimensions:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v0, :cond_18

    move v3, v4

    .line 869
    goto :goto_6

    .line 871
    :cond_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_32

    .line 872
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    move v3, v4

    .line 873
    goto :goto_6

    .line 871
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 876
    :cond_32
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 882
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 883
    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    .line 884
    .local v0, that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 886
    .end local v0           #that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    :goto_f
    return v1

    :cond_10
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 894
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 895
    .local v0, adjust:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 896
    mul-int/lit8 v0, v0, 0x1f

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 898
    :cond_12
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 816
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    return v0
.end method

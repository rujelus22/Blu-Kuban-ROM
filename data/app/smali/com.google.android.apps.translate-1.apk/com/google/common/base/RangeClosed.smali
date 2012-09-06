.class final Lcom/google/common/base/RangeClosed;
.super Ljava/lang/Object;
.source "RangeClosed.java"

# interfaces
.implements Lcom/google/common/base/Range;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable",
        "<-TV;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Range",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final max:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final min:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, min:Ljava/lang/Comparable;,"TV;"
    .local p2, max:Ljava/lang/Comparable;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_d

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter \'min\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_d
    if-nez p2, :cond_17

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter \'max\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_17
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_25

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'min\' cannot be greater than Parameter \'max\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_25
    iput-object p1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    .line 58
    iput-object p2, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    .line 59
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Comparable;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, value:Ljava/lang/Comparable;,"TV;"
    const/4 v0, 0x1

    .line 63
    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v0, :cond_15

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_15

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public enclose(Ljava/lang/Comparable;)Lcom/google/common/base/Range;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, value:Ljava/lang/Comparable;,"TV;"
    if-nez p1, :cond_3

    .line 75
    .end local p0           #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    :cond_2
    :goto_2
    return-object p0

    .line 72
    .restart local p0       #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/base/RangeClosed;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    new-instance p0, Lcom/google/common/base/RangeClosed;

    .end local p0           #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    invoke-direct {p0, p1, p1}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_2

    .line 75
    .restart local p0       #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    :cond_f
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_20

    new-instance v0, Lcom/google/common/base/RangeClosed;

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-direct {v0, p1, v1}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object p0, v0

    goto :goto_2

    :cond_20
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Lcom/google/common/base/RangeClosed;

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object p0, v0

    goto :goto_2
.end method

.method public enclosure(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    invoke-interface {p1}, Lcom/google/common/base/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    .end local p0           #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .end local p1           #range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    :goto_6
    return-object p0

    .line 84
    .restart local p0       #this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .restart local p1       #range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/base/RangeClosed;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object p0, p1

    .line 85
    goto :goto_6

    .line 87
    :cond_f
    invoke-interface {p1}, Lcom/google/common/base/Range;->min()Ljava/lang/Comparable;

    move-result-object v1

    .line 88
    .local v1, oMin:Ljava/lang/Comparable;,"TV;"
    invoke-interface {p1}, Lcom/google/common/base/Range;->max()Ljava/lang/Comparable;

    move-result-object v0

    .line 89
    .local v0, oMax:Ljava/lang/Comparable;,"TV;"
    new-instance p1, Lcom/google/common/base/RangeClosed;

    .end local p1           #range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    iget-object v2, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2e

    .end local v1           #oMin:Ljava/lang/Comparable;,"TV;"
    :goto_21
    iget-object v2, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_31

    .end local v0           #oMax:Ljava/lang/Comparable;,"TV;"
    :goto_29
    invoke-direct {p1, v1, v0}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object p0, p1

    goto :goto_6

    .restart local v0       #oMax:Ljava/lang/Comparable;,"TV;"
    .restart local v1       #oMin:Ljava/lang/Comparable;,"TV;"
    :cond_2e
    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    goto :goto_21

    .end local v1           #oMin:Ljava/lang/Comparable;,"TV;"
    :cond_31
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    goto :goto_29
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    const/4 v2, 0x0

    .line 101
    instance-of v3, p1, Lcom/google/common/base/Range;

    if-eqz v3, :cond_e

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/google/common/base/Range;

    .line 104
    .local v0, c:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<*>;"
    :try_start_8
    invoke-interface {v0}, Lcom/google/common/base/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 113
    .end local v0           #c:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<*>;"
    :cond_e
    :goto_e
    return v2

    .line 107
    .restart local v0       #c:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<*>;"
    :cond_f
    invoke-interface {v0}, Lcom/google/common/base/Range;->min()Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Lcom/google/common/base/Range;->max()Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_24} :catch_29

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    .line 109
    :catch_29
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x87a25

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/base/RangeClosed;->intersects(Lcom/google/common/base/Range;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 124
    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v2

    .line 128
    :goto_a
    return-object v2

    .line 126
    :cond_b
    invoke-interface {p1}, Lcom/google/common/base/Range;->min()Ljava/lang/Comparable;

    move-result-object v1

    .line 127
    .local v1, oMin:Ljava/lang/Comparable;,"TV;"
    invoke-interface {p1}, Lcom/google/common/base/Range;->max()Ljava/lang/Comparable;

    move-result-object v0

    .line 128
    .local v0, oMax:Ljava/lang/Comparable;,"TV;"
    new-instance v2, Lcom/google/common/base/RangeClosed;

    iget-object v3, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_29

    .end local v1           #oMin:Ljava/lang/Comparable;,"TV;"
    :goto_1d
    iget-object v3, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2c

    .end local v0           #oMax:Ljava/lang/Comparable;,"TV;"
    :goto_25
    invoke-direct {v2, v1, v0}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_a

    .restart local v0       #oMax:Ljava/lang/Comparable;,"TV;"
    .restart local v1       #oMin:Ljava/lang/Comparable;,"TV;"
    :cond_29
    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    goto :goto_1d

    .end local v1           #oMin:Ljava/lang/Comparable;,"TV;"
    :cond_2c
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    goto :goto_25
.end method

.method public intersects(Lcom/google/common/base/Range;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    .local p1, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-interface {p1}, Lcom/google/common/base/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 138
    :goto_8
    return v1

    :cond_9
    iget-object v2, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-interface {p1}, Lcom/google/common/base/Range;->min()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_24

    iget-object v2, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-interface {p1}, Lcom/google/common/base/Range;->max()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v0, :cond_24

    :goto_22
    move v1, v0

    goto :goto_8

    :cond_24
    move v0, v1

    goto :goto_22
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 145
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public max()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    return-object v0
.end method

.method public min()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    iget-object v0, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/base/RangeClosed;,"Lcom/google/common/base/RangeClosed<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->min:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/RangeClosed;->max:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

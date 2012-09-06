.class public final Lcom/google/common/base/Ranges;
.super Ljava/lang/Object;
.source "Ranges.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Ranges$EmptyRange;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyRange()Lcom/google/common/base/Range;
    .registers 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>()",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/common/base/Ranges$EmptyRange;->access$000()Lcom/google/common/base/Ranges$EmptyRange;

    move-result-object v0

    return-object v0
.end method

.method public static varargs enclose(Lcom/google/common/base/Range;[Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>(",
            "Lcom/google/common/base/Range",
            "<TV;>;[",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    .local p0, aRange:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    .local p1, moreRanges:[Lcom/google/common/base/Range;,"[Lcom/google/common/base/Range<TV;>;"
    move-object v4, p0

    .line 124
    .local v4, result:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/common/base/Range;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 125
    .local v3, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    invoke-interface {v4, v3}, Lcom/google/common/base/Range;->enclosure(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;

    move-result-object v4

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 127
    .end local v3           #range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    :cond_f
    return-object v4
.end method

.method public static varargs encloseDoubles([D)Lcom/google/common/base/Range;
    .registers 12
    .parameter "values"
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lcom/google/common/base/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 227
    array-length v9, p0

    if-nez v9, :cond_9

    .line 228
    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v9

    .line 240
    :goto_8
    return-object v9

    .line 230
    :cond_9
    aget-wide v5, p0, v10

    .line 231
    .local v5, min:D
    aget-wide v3, p0, v10

    .line 232
    .local v3, max:D
    move-object v0, p0

    .local v0, arr$:[D
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_21

    aget-wide v7, v0, v1

    .line 233
    .local v7, value:D
    cmpl-double v9, v5, v7

    if-lez v9, :cond_19

    .line 234
    move-wide v5, v7

    .line 236
    :cond_19
    cmpg-double v9, v3, v7

    if-gez v9, :cond_1e

    .line 237
    move-wide v3, v7

    .line 232
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 240
    .end local v7           #value:D
    :cond_21
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/common/base/Ranges;->newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;

    move-result-object v9

    goto :goto_8
.end method

.method public static varargs encloseInts([I)Lcom/google/common/base/Range;
    .registers 9
    .parameter "values"
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/google/common/base/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 175
    array-length v6, p0

    if-nez v6, :cond_9

    .line 176
    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v6

    .line 188
    :goto_8
    return-object v6

    .line 178
    :cond_9
    aget v4, p0, v7

    .line 179
    .local v4, min:I
    aget v3, p0, v7

    .line 180
    .local v3, max:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_1d

    aget v5, v0, v1

    .line 181
    .local v5, value:I
    if-le v4, v5, :cond_17

    .line 182
    move v4, v5

    .line 184
    :cond_17
    if-ge v3, v5, :cond_1a

    .line 185
    move v3, v5

    .line 180
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 188
    .end local v5           #value:I
    :cond_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/base/Ranges;->newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;

    move-result-object v6

    goto :goto_8
.end method

.method public static varargs encloseLongs([J)Lcom/google/common/base/Range;
    .registers 12
    .parameter "values"
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcom/google/common/base/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 201
    array-length v9, p0

    if-nez v9, :cond_9

    .line 202
    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v9

    .line 214
    :goto_8
    return-object v9

    .line 204
    :cond_9
    aget-wide v5, p0, v10

    .line 205
    .local v5, min:J
    aget-wide v3, p0, v10

    .line 206
    .local v3, max:J
    move-object v0, p0

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_21

    aget-wide v7, v0, v1

    .line 207
    .local v7, value:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_19

    .line 208
    move-wide v5, v7

    .line 210
    :cond_19
    cmp-long v9, v3, v7

    if-gez v9, :cond_1e

    .line 211
    move-wide v3, v7

    .line 206
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 214
    .end local v7           #value:J
    :cond_21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/common/base/Ranges;->newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;

    move-result-object v9

    goto :goto_8
.end method

.method public static varargs intersect(Lcom/google/common/base/Range;[Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>(",
            "Lcom/google/common/base/Range",
            "<TV;>;[",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    .local p0, aRange:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    .local p1, moreRanges:[Lcom/google/common/base/Range;,"[Lcom/google/common/base/Range<TV;>;"
    move-object v4, p0

    .line 103
    .local v4, result:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/common/base/Range;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 104
    .local v3, range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    invoke-interface {v4, v3}, Lcom/google/common/base/Range;->intersection(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;

    move-result-object v4

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 106
    .end local v3           #range:Lcom/google/common/base/Range;,"Lcom/google/common/base/Range<TV;>;"
    :cond_f
    return-object v4
.end method

.method public static newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;
    .registers 4
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>(TV;TV;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    .local p0, min:Ljava/lang/Comparable;,"TV;"
    .local p1, max:Ljava/lang/Comparable;,"TV;"
    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_d

    .line 59
    new-instance v0, Lcom/google/common/base/RangeClosed;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/RangeClosed;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 61
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v0

    goto :goto_c
.end method

.method public static varargs rangeOf([Ljava/lang/Comparable;)Lcom/google/common/base/Range;
    .registers 9
    .parameter
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>([TV;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    .local p0, values:[Ljava/lang/Comparable;,"[TV;"
    const/4 v5, 0x0

    .line 144
    .local v5, min:Ljava/lang/Comparable;,"TV;"
    const/4 v4, 0x0

    .line 145
    .local v4, max:Ljava/lang/Comparable;,"TV;"
    const/4 v2, 0x1

    .line 146
    .local v2, isEmpty:Z
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Comparable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_23

    aget-object v6, v0, v1

    .line 147
    .local v6, value:Ljava/lang/Comparable;,"TV;"
    if-eqz v6, :cond_11

    .line 148
    if-eqz v2, :cond_14

    .line 149
    const/4 v2, 0x0

    .line 150
    move-object v5, v6

    .line 151
    move-object v4, v6

    .line 146
    :cond_11
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 153
    :cond_14
    invoke-interface {v6, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1b

    .line 154
    move-object v5, v6

    .line 156
    :cond_1b
    invoke-interface {v6, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_11

    .line 157
    move-object v4, v6

    goto :goto_11

    .line 162
    .end local v6           #value:Ljava/lang/Comparable;,"TV;"
    :cond_23
    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/google/common/base/Ranges;->emptyRange()Lcom/google/common/base/Range;

    move-result-object v7

    :goto_29
    return-object v7

    :cond_2a
    invoke-static {v5, v4}, Lcom/google/common/base/Ranges;->newRange(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/base/Range;

    move-result-object v7

    goto :goto_29
.end method

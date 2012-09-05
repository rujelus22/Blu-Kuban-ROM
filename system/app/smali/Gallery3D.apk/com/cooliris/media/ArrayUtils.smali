.class public final Lcom/cooliris/media/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 95
    const/4 p1, 0x0

    .line 105
    .end local p1
    :cond_6
    :goto_6
    return-object p1

    .line 96
    .restart local p1
    :cond_7
    if-eqz p0, :cond_6

    .line 98
    if-nez p1, :cond_d

    move-object p1, p0

    .line 99
    goto :goto_6

    .line 100
    :cond_d
    array-length v1, p0

    .line 101
    .local v1, numFirst:I
    array-length v2, p1

    .line 102
    .local v2, numSecond:I
    add-int v3, v1, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 103
    .local v0, newArray:[Ljava/lang/String;
    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 105
    goto :goto_6
.end method

.method public static final contains(Ljava/util/ArrayList;Lcom/cooliris/media/MediaItem;)Z
    .registers 9
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;",
            "Lcom/cooliris/media/MediaItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    const/4 v2, 0x0

    .line 83
    iget-wide v3, p1, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 90
    :cond_9
    :goto_9
    return v2

    .line 85
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 86
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaItem;

    .line 87
    .local v1, thisItem:Lcom/cooliris/media/MediaItem;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_23

    .line 88
    const/4 v2, 0x1

    goto :goto_9

    .line 85
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static final contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "array"
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_4

    .line 71
    :cond_3
    :goto_3
    return v2

    .line 65
    :cond_4
    array-length v1, p0

    .line 66
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_3

    .line 67
    aget-object v3, p0, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 68
    const/4 v2, 0x1

    goto :goto_3

    .line 66
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

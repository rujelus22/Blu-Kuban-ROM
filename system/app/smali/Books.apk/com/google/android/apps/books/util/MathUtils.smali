.class public Lcom/google/android/apps/books/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(FFF)F
    .registers 4
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 35
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1
    :goto_4
    return p1

    .restart local p1
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method public static constrain(III)I
    .registers 3
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 31
    if-ge p0, p1, :cond_3

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static getBoundingRect(Ljava/util/List;)Landroid/graphics/Rect;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_a

    .line 44
    :cond_8
    const/4 v2, 0x0

    .line 50
    :cond_9
    return-object v2

    .line 46
    :cond_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v2, result:Landroid/graphics/Rect;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 48
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_13
.end method

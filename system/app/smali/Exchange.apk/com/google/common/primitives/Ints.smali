.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static compare(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 106
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-le p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static hashCode(I)I
    .registers 1
    .parameter "value"

    .prologue
    .line 61
    return p0
.end method

.method private static indexOf([IIII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 143
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 144
    aget v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 148
    .end local v0           #i:I
    :goto_7
    return v0

    .line 143
    .restart local v0       #i:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method private static lastIndexOf([IIII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 197
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 198
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 202
    .end local v0           #i:I
    :goto_8
    return v0

    .line 197
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 202
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

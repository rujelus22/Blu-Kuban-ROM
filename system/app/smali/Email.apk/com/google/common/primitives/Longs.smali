.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;
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

.method static synthetic access$000([JJII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static compare(JJ)I
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 74
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static hashCode(J)I
    .registers 4
    .parameter "value"

    .prologue
    .line 61
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static indexOf([JJII)I
    .registers 8
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 111
    move v0, p3

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 112
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_a

    .line 116
    .end local v0           #i:I
    :goto_9
    return v0

    .line 111
    .restart local v0       #i:I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private static lastIndexOf([JJII)I
    .registers 8
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 165
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 166
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_b

    .line 170
    .end local v0           #i:I
    :goto_a
    return v0

    .line 165
    .restart local v0       #i:I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 170
    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method

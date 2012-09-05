.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideArrayByInt([I[III)I
    .registers 25
    .parameter "quotient"
    .parameter "dividend"
    .parameter "dividendLength"
    .parameter "divisor"

    .prologue
    .line 52
    const-wide/16 v11, 0x0

    .line 53
    .local v11, rem:J
    move/from16 v0, p3

    int-to-long v15, v0

    const-wide v17, 0xffffffffL

    and-long v4, v15, v17

    .line 55
    .local v4, bLong:J
    add-int/lit8 v8, p2, -0x1

    .local v8, i:I
    :goto_e
    if-ltz v8, :cond_6d

    .line 56
    const/16 v15, 0x20

    shl-long v15, v11, v15

    aget v17, p1, v8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0xffffffffL

    and-long v17, v17, v19

    or-long v13, v15, v17

    .line 58
    .local v13, temp:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_3a

    .line 59
    div-long v9, v13, v4

    .line 60
    .local v9, quot:J
    rem-long v11, v13, v4

    .line 87
    :cond_2e
    :goto_2e
    const-wide v15, 0xffffffffL

    and-long/2addr v15, v9

    long-to-int v15, v15

    aput v15, p0, v8

    .line 55
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 66
    .end local v9           #quot:J
    :cond_3a
    const/4 v15, 0x1

    ushr-long v2, v13, v15

    .line 67
    .local v2, aPos:J
    ushr-int/lit8 v15, p3, 0x1

    int-to-long v6, v15

    .line 68
    .local v6, bPos:J
    div-long v9, v2, v6

    .line 69
    .restart local v9       #quot:J
    rem-long v11, v2, v6

    .line 71
    const/4 v15, 0x1

    shl-long v15, v11, v15

    const-wide/16 v17, 0x1

    and-long v17, v17, v13

    add-long v11, v15, v17

    .line 72
    and-int/lit8 v15, p3, 0x1

    if-eqz v15, :cond_2e

    .line 74
    cmp-long v15, v9, v11

    if-gtz v15, :cond_57

    .line 75
    sub-long/2addr v11, v9

    goto :goto_2e

    .line 77
    :cond_57
    sub-long v15, v9, v11

    cmp-long v15, v15, v4

    if-gtz v15, :cond_64

    .line 78
    sub-long v15, v4, v9

    add-long/2addr v11, v15

    .line 79
    const-wide/16 v15, 0x1

    sub-long/2addr v9, v15

    goto :goto_2e

    .line 81
    :cond_64
    const/4 v15, 0x1

    shl-long v15, v4, v15

    sub-long/2addr v15, v9

    add-long/2addr v11, v15

    .line 82
    const-wide/16 v15, 0x2

    sub-long/2addr v9, v15

    goto :goto_2e

    .line 89
    .end local v2           #aPos:J
    .end local v6           #bPos:J
    .end local v9           #quot:J
    .end local v13           #temp:J
    :cond_6d
    long-to-int v15, v11

    return v15
.end method

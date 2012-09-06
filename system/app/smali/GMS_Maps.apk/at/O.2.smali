.class public Lat/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I

.field public static final b:[[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 36
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lat/O;->c:[I

    .line 37
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lat/O;->d:[I

    .line 39
    new-array v1, v3, [I

    fill-array-data v1, :array_5a

    sput-object v1, Lat/O;->a:[I

    .line 42
    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_8a

    aput-object v2, v1, v8

    sput-object v1, Lat/O;->b:[[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 50
    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    .line 51
    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    .line 52
    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    .line 53
    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    .line 54
    return-void

    .line 39
    nop

    :array_5a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_66
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_72
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a(D)D
    .registers 8
    .parameter

    .prologue
    const-wide/high16 v4, 0x4008

    const-wide/high16 v2, 0x3ff0

    .line 188
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    .line 189
    mul-double v0, v4, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    .line 191
    :goto_12
    return-wide v0

    :cond_13
    mul-double v0, v4, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    goto :goto_12
.end method

.method private static a(DDD)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 85
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 86
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 87
    cmpl-double v6, v0, v2

    if-lez v6, :cond_28

    .line 88
    cmpl-double v0, v0, v4

    if-lez v0, :cond_1e

    .line 89
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1c

    .line 90
    const/4 v0, 0x3

    .line 112
    :goto_1b
    return v0

    .line 92
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b

    .line 95
    :cond_1e
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_26

    .line 96
    const/4 v0, 0x5

    goto :goto_1b

    .line 98
    :cond_26
    const/4 v0, 0x2

    goto :goto_1b

    .line 102
    :cond_28
    cmpl-double v0, v2, v4

    if-lez v0, :cond_36

    .line 103
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_34

    .line 104
    const/4 v0, 0x4

    goto :goto_1b

    .line 106
    :cond_34
    const/4 v0, 0x1

    goto :goto_1b

    .line 109
    :cond_36
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_3e

    .line 110
    const/4 v0, 0x5

    goto :goto_1b

    .line 112
    :cond_3e
    const/4 v0, 0x2

    goto :goto_1b
.end method

.method private static a([JIIII)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    .line 210
    mul-int/lit8 v0, p3, 0x4

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v0, p4

    .line 211
    mul-int/lit8 v1, p3, 0x4

    shr-int v1, p2, v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 212
    sget-object v1, Lat/O;->c:[I

    aget v0, v1, v0

    .line 213
    shr-int/lit8 v1, p3, 0x2

    aget-wide v2, p0, v1

    int-to-long v4, v0

    const/4 v6, 0x2

    shr-long/2addr v4, v6

    and-int/lit8 v6, p3, 0x3

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x4

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 214
    and-int/lit8 v0, v0, 0x3

    .line 215
    return v0
.end method

.method public static a(J)J
    .registers 4
    .parameter

    .prologue
    .line 368
    const-wide/high16 v0, -0x8000

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(Lat/B;)J
    .registers 16
    .parameter

    .prologue
    const-wide v2, 0x412e848000000000L

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 226
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 227
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 228
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 230
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    .line 231
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 232
    invoke-static/range {v0 .. v5}, Lat/O;->a(DDD)I

    move-result v6

    move-wide v7, v0

    move-wide v9, v2

    move-wide v11, v4

    .line 233
    invoke-static/range {v6 .. v12}, Lat/O;->a(IDDD)[D

    move-result-object v0

    .line 234
    aget-wide v1, v0, v14

    invoke-static {v1, v2}, Lat/O;->a(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lat/O;->b(D)I

    move-result v2

    .line 235
    aget-wide v0, v0, v13

    invoke-static {v0, v1}, Lat/O;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lat/O;->b(D)I

    move-result v3

    .line 239
    const/4 v0, 0x2

    new-array v4, v0, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v4, v14

    shl-int/lit8 v0, v6, 0x1c

    int-to-long v0, v0

    aput-wide v0, v4, v13

    .line 244
    and-int/lit8 v1, v6, 0x1

    .line 251
    const/4 v0, 0x7

    :goto_5b
    if-ltz v0, :cond_64

    .line 252
    invoke-static {v4, v2, v3, v0, v1}, Lat/O;->a([JIIII)I

    move-result v1

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    .line 254
    :cond_64
    aget-wide v0, v4, v13

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    aget-wide v2, v4, v14

    add-long/2addr v0, v2

    shl-long/2addr v0, v13

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(IIIIII)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x4

    if-ne p0, v0, :cond_20

    .line 63
    shl-int/lit8 v0, p1, 0x4

    add-int v0, v0, p2

    .line 64
    sget-object v1, Lat/O;->c:[I

    shl-int/lit8 v2, v0, 0x2

    add-int v2, v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int v3, v3, p5

    aput v3, v1, v2

    .line 65
    sget-object v1, Lat/O;->d:[I

    shl-int/lit8 v2, p4, 0x2

    add-int v2, v2, p3

    shl-int/lit8 v0, v0, 0x2

    add-int v0, v0, p5

    aput v0, v1, v2

    .line 81
    :goto_1f
    return-void

    .line 67
    :cond_20
    add-int/lit8 v0, p0, 0x1

    .line 68
    shl-int/lit8 v11, p1, 0x1

    .line 69
    shl-int/lit8 v12, p2, 0x1

    .line 70
    shl-int/lit8 v4, p4, 0x2

    .line 71
    sget-object v1, Lat/O;->b:[[I

    aget-object v13, v1, p5

    .line 72
    const/4 v1, 0x0

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    const/4 v2, 0x0

    aget v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v12

    sget-object v3, Lat/O;->a:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    xor-int v5, p5, v3

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    .line 74
    const/4 v1, 0x1

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int v6, v11, v1

    const/4 v1, 0x1

    aget v1, v13, v1

    and-int/lit8 v1, v1, 0x1

    add-int v7, v12, v1

    add-int/lit8 v9, v4, 0x1

    sget-object v1, Lat/O;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int v10, p5, v1

    move v5, v0

    move/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lat/O;->a(IIIIII)V

    .line 76
    const/4 v1, 0x2

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int v6, v11, v1

    const/4 v1, 0x2

    aget v1, v13, v1

    and-int/lit8 v1, v1, 0x1

    add-int v7, v12, v1

    add-int/lit8 v9, v4, 0x2

    sget-object v1, Lat/O;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int v10, p5, v1

    move v5, v0

    move/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lat/O;->a(IIIIII)V

    .line 78
    const/4 v1, 0x3

    aget v1, v13, v1

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v11

    const/4 v2, 0x3

    aget v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v12

    add-int/lit8 v4, v4, 0x3

    sget-object v3, Lat/O;->a:[I

    const/4 v5, 0x3

    aget v3, v3, v5

    xor-int v5, p5, v3

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lat/O;->a(IIIIII)V

    goto :goto_1f
.end method

.method private static a(IDDD)[D
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 120
    packed-switch p0, :pswitch_data_3e

    .line 142
    neg-double v1, p3

    div-double/2addr v1, p5

    aput-wide v1, v0, v3

    .line 143
    neg-double v1, p1

    div-double/2addr v1, p5

    aput-wide v1, v0, v4

    .line 146
    :goto_10
    return-object v0

    .line 122
    :pswitch_11
    div-double v1, p3, p1

    aput-wide v1, v0, v3

    .line 123
    div-double v1, p5, p1

    aput-wide v1, v0, v4

    goto :goto_10

    .line 126
    :pswitch_1a
    neg-double v1, p1

    div-double/2addr v1, p3

    aput-wide v1, v0, v3

    .line 127
    div-double v1, p5, p3

    aput-wide v1, v0, v4

    goto :goto_10

    .line 130
    :pswitch_23
    neg-double v1, p1

    div-double/2addr v1, p5

    aput-wide v1, v0, v3

    .line 131
    neg-double v1, p3

    div-double/2addr v1, p5

    aput-wide v1, v0, v4

    goto :goto_10

    .line 134
    :pswitch_2c
    div-double v1, p5, p1

    aput-wide v1, v0, v3

    .line 135
    div-double v1, p3, p1

    aput-wide v1, v0, v4

    goto :goto_10

    .line 138
    :pswitch_35
    div-double v1, p5, p3

    aput-wide v1, v0, v3

    .line 139
    neg-double v1, p1

    div-double/2addr v1, p3

    aput-wide v1, v0, v4

    goto :goto_10

    .line 120
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1a
        :pswitch_23
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method private static b(D)I
    .registers 8
    .parameter

    .prologue
    .line 204
    .line 205
    const/4 v0, 0x0

    const v1, 0x3fffffff

    const-wide/high16 v2, 0x41c0

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v4, p0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static b(J)J
    .registers 4
    .parameter

    .prologue
    .line 378
    const-wide/high16 v0, -0x8000

    sub-long v0, p0, v0

    return-wide v0
.end method

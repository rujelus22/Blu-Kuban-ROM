.class public Ln/S;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)D
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    .line 40
    iget v1, p1, Ln/Q;->a:I

    iget v2, p0, Ln/Q;->a:I

    sub-int/2addr v1, v2

    .line 41
    iget v2, p0, Ln/Q;->a:I

    iget v3, p2, Ln/Q;->a:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v4, p0, Ln/Q;->b:I

    iget v5, p2, Ln/Q;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-double v2, v2

    iget v4, p3, Ln/Q;->a:I

    iget v5, p2, Ln/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    iget v0, p3, Ln/Q;->b:I

    iget v6, p2, Ln/Q;->b:I

    sub-int/2addr v0, v6

    int-to-long v6, v0

    int-to-long v0, v1

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(FF)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 296
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 297
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    .line 298
    const/high16 v1, 0x43b4

    sub-float v0, v1, v0

    .line 300
    :cond_10
    return v0
.end method

.method public static a(II)F
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 258
    const/high16 v0, 0x42b4

    int-to-double v1, p1

    int-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    sub-float/2addr v0, v1

    .line 259
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1e

    .line 260
    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    .line 262
    :cond_1e
    return v0
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iget v0, p2, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p2, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p2, Ln/Q;->b:I

    iget v3, p0, Ln/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p2, Ln/Q;->a:I

    iget v5, p1, Ln/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long v1, v0, v2

    .line 26
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_23
    int-to-long v3, v0

    const/16 v0, 0x3f

    shr-long v0, v1, v0

    or-long/2addr v0, v3

    long-to-int v0, v0

    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static a(Ln/Q;FLn/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iget v0, p0, Ln/Q;->a:I

    int-to-double v0, v0

    iget v2, p0, Ln/Q;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 225
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_17

    .line 227
    float-to-int v0, p1

    iput v0, p2, Ln/Q;->a:I

    .line 228
    const/4 v0, 0x0

    iput v0, p2, Ln/Q;->b:I

    .line 234
    :goto_16
    return-void

    .line 230
    :cond_17
    div-float v0, p1, v0

    .line 231
    iget v1, p0, Ln/Q;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, Ln/Q;->a:I

    .line 232
    iget v1, p0, Ln/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Ln/Q;->b:I

    goto :goto_16
.end method

.method public static a(Ln/Q;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iget v0, p0, Ln/Q;->b:I

    neg-int v0, v0

    iput v0, p1, Ln/Q;->a:I

    .line 242
    iget v0, p0, Ln/Q;->a:I

    iput v0, p1, Ln/Q;->b:I

    .line 243
    return-void
.end method

.method public static a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 131
    iget v2, p0, Ln/Q;->b:I

    iget v3, p1, Ln/Q;->b:I

    sub-int/2addr v2, v3

    .line 132
    iget v3, p1, Ln/Q;->a:I

    iget v4, p0, Ln/Q;->a:I

    sub-int/2addr v3, v4

    .line 133
    iget v4, p3, Ln/Q;->a:I

    iget v5, p2, Ln/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget v6, p3, Ln/Q;->b:I

    iget v7, p2, Ln/Q;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 136
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_39

    .line 137
    invoke-static {p0, p1, p2}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;)I

    move-result v2

    if-nez v2, :cond_2d

    .line 138
    invoke-virtual {p4, p2}, Ln/Q;->b(Ln/Q;)V

    .line 155
    :goto_2c
    return v0

    .line 140
    :cond_2d
    invoke-static {p0, p1, p3}, Ln/S;->a(Ln/Q;Ln/Q;Ln/Q;)I

    move-result v2

    if-nez v2, :cond_37

    .line 141
    invoke-virtual {p4, p3}, Ln/Q;->b(Ln/Q;)V

    goto :goto_2c

    :cond_37
    move v0, v1

    .line 144
    goto :goto_2c

    .line 147
    :cond_39
    iget v6, p0, Ln/Q;->a:I

    iget v7, p2, Ln/Q;->a:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    iget v2, p0, Ln/Q;->b:I

    iget v8, p2, Ln/Q;->b:I

    sub-int/2addr v2, v8

    int-to-long v8, v2

    int-to-long v2, v3

    mul-long/2addr v2, v8

    add-long/2addr v2, v6

    long-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 150
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_59

    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5b

    :cond_59
    move v0, v1

    .line 151
    goto :goto_2c

    .line 153
    :cond_5b
    iget v1, p2, Ln/Q;->a:I

    int-to-double v4, v1

    iget v1, p3, Ln/Q;->a:I

    iget v6, p2, Ln/Q;->a:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p4, Ln/Q;->a:I

    .line 154
    iget v1, p2, Ln/Q;->b:I

    int-to-double v4, v1

    iget v1, p3, Ln/Q;->b:I

    iget v6, p2, Ln/Q;->b:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double v1, v6, v2

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p4, Ln/Q;->b:I

    goto :goto_2c
.end method

.method public static b(FF)F
    .registers 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x43b4

    .line 309
    sub-float v0, p1, p0

    .line 310
    :goto_4
    const/high16 v1, 0x4334

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    .line 311
    sub-float/2addr v0, v2

    goto :goto_4

    .line 313
    :cond_c
    :goto_c
    const/high16 v1, -0x3ccc

    cmpg-float v1, v0, v1

    if-gez v1, :cond_14

    .line 314
    add-float/2addr v0, v2

    goto :goto_c

    .line 316
    :cond_14
    return v0
.end method

.method public static b(Ln/Q;Ln/Q;)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Ln/Q;->b:I

    iget v2, p0, Ln/Q;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ln/S;->a(II)F

    move-result v0

    return v0
.end method

.method public static b(Ln/Q;Ln/Q;Ln/Q;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget v2, p0, Ln/Q;->a:I

    .line 167
    iget v3, p0, Ln/Q;->b:I

    .line 168
    iget v4, p1, Ln/Q;->a:I

    .line 169
    iget v5, p1, Ln/Q;->b:I

    .line 170
    iget v6, p2, Ln/Q;->a:I

    .line 171
    iget v7, p2, Ln/Q;->b:I

    .line 174
    if-gt v3, v7, :cond_13

    if-gt v5, v7, :cond_13

    .line 186
    :cond_12
    :goto_12
    return v1

    .line 177
    :cond_13
    if-lt v6, v2, :cond_17

    if-ge v6, v4, :cond_12

    .line 180
    :cond_17
    if-ge v6, v2, :cond_1b

    if-lt v6, v4, :cond_12

    .line 183
    :cond_1b
    if-lt v4, v2, :cond_31

    .line 184
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-lez v2, :cond_2f

    :goto_2d
    move v1, v0

    goto :goto_12

    :cond_2f
    move v0, v1

    goto :goto_2d

    .line 186
    :cond_31
    sub-int/2addr v6, v2

    int-to-long v8, v6

    sub-int/2addr v5, v3

    int-to-long v5, v5

    mul-long/2addr v5, v8

    sub-int v3, v7, v3

    int-to-long v7, v3

    sub-int v2, v4, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-gez v2, :cond_43

    :goto_41
    move v1, v0

    goto :goto_12

    :cond_43
    move v0, v1

    goto :goto_41
.end method

.method public static b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    .line 80
    iget v1, p1, Ln/Q;->b:I

    iget v2, p0, Ln/Q;->b:I

    sub-int/2addr v1, v2

    .line 81
    iget v2, p3, Ln/Q;->a:I

    iget v3, p2, Ln/Q;->a:I

    sub-int/2addr v2, v3

    .line 82
    iget v3, p3, Ln/Q;->b:I

    iget v4, p2, Ln/Q;->b:I

    sub-int/2addr v3, v4

    .line 83
    iget v4, p2, Ln/Q;->a:I

    iget v5, p0, Ln/Q;->a:I

    sub-int/2addr v4, v5

    .line 84
    iget v5, p2, Ln/Q;->b:I

    iget v6, p0, Ln/Q;->b:I

    sub-int/2addr v5, v6

    .line 86
    int-to-long v6, v2

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v3

    int-to-long v10, v0

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 87
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_6f

    .line 89
    if-nez v4, :cond_31

    if-nez v5, :cond_31

    .line 91
    const/4 v0, 0x1

    .line 118
    :goto_30
    return v0

    .line 92
    :cond_31
    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v4, v5

    int-to-long v8, v0

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    .line 94
    const/4 v0, 0x0

    goto :goto_30

    .line 95
    :cond_41
    if-nez v0, :cond_4a

    if-nez v1, :cond_4a

    .line 97
    invoke-static {p2, p3, p0}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    goto :goto_30

    .line 98
    :cond_4a
    if-nez v2, :cond_53

    if-nez v3, :cond_53

    .line 100
    invoke-static {p0, p1, p2}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    goto :goto_30

    .line 103
    :cond_53
    invoke-static {p0, p1, p2}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0, p1, p3}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p2, p3, p0}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p2, p3, p1}, Ln/S;->f(Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_6b
    const/4 v0, 0x1

    goto :goto_30

    :cond_6d
    const/4 v0, 0x0

    goto :goto_30

    .line 109
    :cond_6f
    neg-int v8, v4

    int-to-long v8, v8

    int-to-long v10, v1

    mul-long/2addr v8, v10

    int-to-long v10, v5

    int-to-long v0, v0

    mul-long/2addr v0, v10

    add-long/2addr v0, v8

    long-to-double v0, v0

    long-to-double v8, v6

    div-double/2addr v0, v8

    .line 111
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_86

    const-wide/high16 v8, 0x3ff0

    cmpg-double v0, v0, v8

    if-lez v0, :cond_88

    .line 112
    :cond_86
    const/4 v0, 0x0

    goto :goto_30

    .line 116
    :cond_88
    int-to-long v0, v4

    int-to-long v3, v3

    mul-long/2addr v0, v3

    int-to-long v3, v5

    int-to-long v8, v2

    mul-long v2, v3, v8

    sub-long/2addr v0, v2

    long-to-double v0, v0

    neg-long v2, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 118
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_a2

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_a2

    const/4 v0, 0x1

    goto :goto_30

    :cond_a2
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static c(Ln/Q;Ln/Q;)J
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 269
    iget v0, p0, Ln/Q;->a:I

    int-to-long v0, v0

    iget v2, p1, Ln/Q;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Ln/Q;->b:I

    int-to-long v2, v2

    iget v4, p1, Ln/Q;->a:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->a:I

    .line 193
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->b:I

    .line 194
    return-void
.end method

.method public static d(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Ln/Q;->a:I

    .line 199
    iget v0, p0, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, Ln/Q;->b:I

    .line 200
    return-void
.end method

.method public static e(Ln/Q;Ln/Q;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iget v0, p0, Ln/Q;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Ln/Q;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->a:I

    .line 205
    iget v0, p0, Ln/Q;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Ln/Q;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p2, Ln/Q;->b:I

    .line 206
    return-void
.end method

.method private static f(Ln/Q;Ln/Q;Ln/Q;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iget v0, p1, Ln/Q;->a:I

    iget v1, p0, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 282
    iget v2, p1, Ln/Q;->b:I

    iget v3, p0, Ln/Q;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 283
    iget v4, p2, Ln/Q;->a:I

    iget v5, p0, Ln/Q;->a:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    .line 284
    iget v6, p2, Ln/Q;->b:I

    iget v7, p0, Ln/Q;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    .line 285
    mul-long/2addr v4, v0

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    .line 286
    mul-long/2addr v0, v0

    mul-long/2addr v2, v2

    add-long/2addr v0, v2

    .line 288
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2a

    cmp-long v0, v4, v0

    if-gtz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

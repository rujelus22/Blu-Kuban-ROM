.class public final Lcom/google/zxing/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/common/a/a;->a:Lcom/google/zxing/common/b;

    .line 51
    iget v0, p1, Lcom/google/zxing/common/b;->b:I

    iput v0, p0, Lcom/google/zxing/common/a/a;->b:I

    .line 52
    iget v0, p1, Lcom/google/zxing/common/b;->a:I

    iput v0, p0, Lcom/google/zxing/common/a/a;->c:I

    .line 53
    iget v0, p0, Lcom/google/zxing/common/a/a;->c:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/a/a;->d:I

    .line 54
    iget v0, p0, Lcom/google/zxing/common/a/a;->c:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/a/a;->e:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/a/a;->b:I

    add-int/lit8 v0, v0, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/a/a;->g:I

    .line 56
    iget v0, p0, Lcom/google/zxing/common/a/a;->b:I

    add-int/lit8 v0, v0, 0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/a/a;->f:I

    .line 57
    iget v0, p0, Lcom/google/zxing/common/a/a;->g:I

    if-ltz v0, :cond_41

    iget v0, p0, Lcom/google/zxing/common/a/a;->d:I

    if-ltz v0, :cond_41

    iget v0, p0, Lcom/google/zxing/common/a/a;->f:I

    iget v1, p0, Lcom/google/zxing/common/a/a;->b:I

    if-ge v0, v1, :cond_41

    iget v0, p0, Lcom/google/zxing/common/a/a;->e:I

    iget v1, p0, Lcom/google/zxing/common/a/a;->c:I

    if-lt v0, v1, :cond_46

    .line 58
    :cond_41
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 60
    :cond_46
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/b;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/zxing/common/a/a;->a:Lcom/google/zxing/common/b;

    .line 67
    iget v0, p1, Lcom/google/zxing/common/b;->b:I

    iput v0, p0, Lcom/google/zxing/common/a/a;->b:I

    .line 68
    iget v0, p1, Lcom/google/zxing/common/b;->a:I

    iput v0, p0, Lcom/google/zxing/common/a/a;->c:I

    .line 69
    add-int/lit8 v0, p3, -0x7

    iput v0, p0, Lcom/google/zxing/common/a/a;->d:I

    .line 71
    add-int/lit8 v0, p3, 0x7

    iput v0, p0, Lcom/google/zxing/common/a/a;->e:I

    .line 72
    add-int/lit8 v0, p4, -0x7

    iput v0, p0, Lcom/google/zxing/common/a/a;->g:I

    .line 73
    add-int/lit8 v0, p4, 0x7

    iput v0, p0, Lcom/google/zxing/common/a/a;->f:I

    .line 74
    iget v0, p0, Lcom/google/zxing/common/a/a;->g:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/google/zxing/common/a/a;->d:I

    if-ltz v0, :cond_31

    iget v0, p0, Lcom/google/zxing/common/a/a;->f:I

    iget v1, p0, Lcom/google/zxing/common/a/a;->b:I

    if-ge v0, v1, :cond_31

    iget v0, p0, Lcom/google/zxing/common/a/a;->e:I

    iget v1, p0, Lcom/google/zxing/common/a/a;->c:I

    if-lt v0, v1, :cond_36

    .line 75
    :cond_31
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 77
    :cond_36
    return-void
.end method

.method private a(FFFF)Lcom/google/zxing/j;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f00

    .line 252
    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v7

    float-to-int v1, v0

    .line 253
    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    .line 254
    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    .line 256
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v1, :cond_3b

    .line 257
    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 258
    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 259
    iget-object v6, p0, Lcom/google/zxing/common/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 260
    new-instance v0, Lcom/google/zxing/j;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/j;-><init>(FF)V

    .line 263
    :goto_37
    return-object v0

    .line 256
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 263
    :cond_3b
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private a(IIIZ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 330
    if-eqz p4, :cond_13

    .line 331
    :goto_3
    if-gt p1, p2, :cond_1e

    .line 332
    iget-object v1, p0, Lcom/google/zxing/common/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 344
    :goto_d
    return v0

    .line 331
    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 337
    :cond_11
    add-int/lit8 p1, p1, 0x1

    :cond_13
    if-gt p1, p2, :cond_1e

    .line 338
    iget-object v1, p0, Lcom/google/zxing/common/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_d

    .line 344
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()[Lcom/google/zxing/j;
    .registers 14

    .prologue
    .line 95
    iget v5, p0, Lcom/google/zxing/common/a/a;->d:I

    .line 96
    iget v4, p0, Lcom/google/zxing/common/a/a;->e:I

    .line 97
    iget v3, p0, Lcom/google/zxing/common/a/a;->g:I

    .line 98
    iget v2, p0, Lcom/google/zxing/common/a/a;->f:I

    .line 99
    const/4 v1, 0x0

    .line 100
    const/4 v7, 0x1

    .line 101
    const/4 v0, 0x0

    .line 103
    :cond_b
    :goto_b
    if-eqz v7, :cond_1ad

    .line 105
    const/4 v7, 0x0

    .line 110
    const/4 v6, 0x1

    .line 111
    :cond_f
    :goto_f
    if-eqz v6, :cond_20

    iget v6, p0, Lcom/google/zxing/common/a/a;->c:I

    if-ge v4, v6, :cond_20

    .line 112
    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v4, v6}, Lcom/google/zxing/common/a/a;->a(IIIZ)Z

    move-result v6

    .line 113
    if-eqz v6, :cond_f

    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    const/4 v7, 0x1

    goto :goto_f

    .line 119
    :cond_20
    iget v6, p0, Lcom/google/zxing/common/a/a;->c:I

    if-lt v4, v6, :cond_48

    .line 120
    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    .line 181
    :goto_2a
    if-nez v1, :cond_1a8

    if-eqz v0, :cond_1a8

    .line 183
    sub-int v7, v6, v3

    .line 185
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_35
    if-ge v1, v7, :cond_9f

    .line 187
    int-to-float v0, v3

    sub-int v4, v5, v1

    int-to-float v4, v4

    add-int v8, v3, v1

    int-to-float v8, v8

    int-to-float v9, v5

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/google/zxing/common/a/a;->a(FFFF)Lcom/google/zxing/j;

    move-result-object v0

    .line 188
    if-nez v0, :cond_9f

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 127
    :cond_48
    const/4 v6, 0x1

    .line 128
    :cond_49
    :goto_49
    if-eqz v6, :cond_5a

    iget v6, p0, Lcom/google/zxing/common/a/a;->b:I

    if-ge v2, v6, :cond_5a

    .line 129
    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v2, v6}, Lcom/google/zxing/common/a/a;->a(IIIZ)Z

    move-result v6

    .line 130
    if-eqz v6, :cond_49

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    const/4 v7, 0x1

    goto :goto_49

    .line 136
    :cond_5a
    iget v6, p0, Lcom/google/zxing/common/a/a;->b:I

    if-lt v2, v6, :cond_65

    .line 137
    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    .line 138
    goto :goto_2a

    .line 144
    :cond_65
    const/4 v6, 0x1

    .line 145
    :cond_66
    :goto_66
    if-eqz v6, :cond_75

    if-ltz v5, :cond_75

    .line 146
    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v5, v6}, Lcom/google/zxing/common/a/a;->a(IIIZ)Z

    move-result v6

    .line 147
    if-eqz v6, :cond_66

    .line 148
    add-int/lit8 v5, v5, -0x1

    .line 149
    const/4 v7, 0x1

    goto :goto_66

    .line 153
    :cond_75
    if-gez v5, :cond_7e

    .line 154
    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    .line 155
    goto :goto_2a

    .line 161
    :cond_7e
    const/4 v6, 0x1

    .line 162
    :cond_7f
    :goto_7f
    if-eqz v6, :cond_91

    if-ltz v3, :cond_91

    .line 163
    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v3, v6}, Lcom/google/zxing/common/a/a;->a(IIIZ)Z

    move-result v6

    .line 164
    if-eqz v6, :cond_7f

    .line 165
    add-int/lit8 v7, v3, -0x1

    .line 166
    const/4 v3, 0x1

    move v12, v3

    move v3, v7

    move v7, v12

    goto :goto_7f

    .line 170
    :cond_91
    if-gez v3, :cond_9a

    .line 171
    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    .line 172
    goto :goto_2a

    .line 175
    :cond_9a
    if-eqz v7, :cond_b

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_9f
    move-object v4, v0

    .line 193
    if-nez v4, :cond_a7

    .line 194
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 197
    :cond_a7
    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_ac
    if-ge v1, v7, :cond_bf

    .line 200
    int-to-float v0, v3

    add-int v8, v2, v1

    int-to-float v8, v8

    add-int v9, v3, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/a/a;->a(FFFF)Lcom/google/zxing/j;

    move-result-object v0

    .line 201
    if-nez v0, :cond_bf

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_bf
    move-object v3, v0

    .line 206
    if-nez v3, :cond_c7

    .line 207
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 210
    :cond_c7
    const/4 v0, 0x0

    .line 212
    const/4 v1, 0x1

    :goto_c9
    if-ge v1, v7, :cond_dc

    .line 213
    int-to-float v0, v6

    add-int v8, v2, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/a/a;->a(FFFF)Lcom/google/zxing/j;

    move-result-object v0

    .line 214
    if-nez v0, :cond_dc

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_dc
    move-object v2, v0

    .line 219
    if-nez v2, :cond_e4

    .line 220
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 223
    :cond_e4
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_e9
    if-ge v1, v7, :cond_fc

    .line 226
    int-to-float v0, v6

    sub-int v8, v5, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/a/a;->a(FFFF)Lcom/google/zxing/j;

    move-result-object v0

    .line 227
    if-nez v0, :cond_fc

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    .line 232
    :cond_fc
    if-nez v0, :cond_103

    .line 233
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 236
    :cond_103
    invoke-virtual {v0}, Lcom/google/zxing/j;->a()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/j;->b()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/j;->a()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/zxing/j;->b()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/j;->a()F

    move-result v7

    invoke-virtual {v2}, Lcom/google/zxing/j;->b()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/zxing/j;->a()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/j;->b()F

    move-result v3

    iget v0, p0, Lcom/google/zxing/common/a/a;->c:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_16a

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/j;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/j;

    const/high16 v11, 0x3f80

    sub-float/2addr v8, v11

    const/high16 v11, 0x3f80

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/j;

    const/high16 v9, 0x3f80

    add-float/2addr v6, v9

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/j;

    const/high16 v6, 0x3f80

    sub-float v6, v7, v6

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/j;

    const/high16 v4, 0x3f80

    add-float/2addr v1, v4

    const/high16 v4, 0x3f80

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v3, v0, v2

    :goto_169
    return-object v0

    :cond_16a
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/j;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/j;

    const/high16 v11, 0x3f80

    add-float/2addr v8, v11

    const/high16 v11, 0x3f80

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/j;

    const/high16 v9, 0x3f80

    add-float/2addr v6, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/j;

    const/high16 v6, 0x3f80

    sub-float v6, v7, v6

    const/high16 v7, 0x3f80

    add-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/j;

    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    const/high16 v4, 0x3f80

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v3, v0, v2

    goto :goto_169

    .line 239
    :cond_1a8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1ad
    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_2a
.end method

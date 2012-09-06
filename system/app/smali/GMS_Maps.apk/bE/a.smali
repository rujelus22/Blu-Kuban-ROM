.class public Lbe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:D

.field public g:F

.field public h:F

.field public i:[Lbe/b;

.field private j:Ljava/util/Random;

.field private k:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x12c

    iput v0, p0, Lbe/a;->a:I

    .line 20
    iput v2, p0, Lbe/a;->b:F

    .line 21
    iput v2, p0, Lbe/a;->c:F

    .line 22
    iput v2, p0, Lbe/a;->d:F

    .line 23
    iput v2, p0, Lbe/a;->e:F

    .line 24
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lbe/a;->f:D

    .line 25
    iput v2, p0, Lbe/a;->g:F

    .line 26
    iput v2, p0, Lbe/a;->h:F

    .line 30
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lbe/a;->j:Ljava/util/Random;

    .line 34
    const v0, 0x3f666666

    iput v0, p0, Lbe/a;->k:F

    .line 37
    invoke-direct {p0}, Lbe/a;->c()V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFFDI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x12c

    iput v0, p0, Lbe/a;->a:I

    .line 20
    iput v2, p0, Lbe/a;->b:F

    .line 21
    iput v2, p0, Lbe/a;->c:F

    .line 22
    iput v2, p0, Lbe/a;->d:F

    .line 23
    iput v2, p0, Lbe/a;->e:F

    .line 24
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lbe/a;->f:D

    .line 25
    iput v2, p0, Lbe/a;->g:F

    .line 26
    iput v2, p0, Lbe/a;->h:F

    .line 30
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lbe/a;->j:Ljava/util/Random;

    .line 34
    const v0, 0x3f666666

    iput v0, p0, Lbe/a;->k:F

    .line 41
    iput p1, p0, Lbe/a;->b:F

    .line 42
    iput p2, p0, Lbe/a;->c:F

    .line 43
    iput p3, p0, Lbe/a;->d:F

    .line 44
    iput p4, p0, Lbe/a;->e:F

    .line 45
    iput-wide p5, p0, Lbe/a;->f:D

    .line 46
    iput p7, p0, Lbe/a;->a:I

    .line 47
    invoke-direct {p0}, Lbe/a;->c()V

    .line 48
    return-void
.end method

.method private a(Lbe/b;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lbe/a;->b(Lbe/b;)Lbe/b;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lbe/a;->i:[Lbe/b;

    aget-object v1, v1, p2

    iget v2, v0, Lbe/b;->a:F

    iput v2, v1, Lbe/b;->a:F

    .line 220
    iget-object v1, p0, Lbe/a;->i:[Lbe/b;

    aget-object v1, v1, p2

    iget v2, v0, Lbe/b;->b:F

    iput v2, v1, Lbe/b;->b:F

    .line 221
    iget-object v1, p0, Lbe/a;->i:[Lbe/b;

    aget-object v1, v1, p2

    iget v0, v0, Lbe/b;->d:F

    iput v0, v1, Lbe/b;->d:F

    .line 222
    return-void
.end method

.method private b(Lbe/b;)Lbe/b;
    .registers 12
    .parameter

    .prologue
    const-wide v8, 0x401921fb54442d18L

    const-wide/high16 v6, 0x3fe0

    .line 199
    .line 200
    iget v0, p0, Lbe/a;->g:F

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 201
    iget v0, p1, Lbe/b;->a:F

    iget-object v1, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    sub-double/2addr v1, v6

    iget-wide v3, p0, Lbe/a;->f:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lbe/b;->a:F

    .line 202
    iget v0, p1, Lbe/b;->b:F

    iget-object v1, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    sub-double/2addr v1, v6

    iget-wide v3, p0, Lbe/a;->f:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lbe/b;->b:F

    .line 203
    iget v0, p1, Lbe/b;->d:F

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L

    iget-object v4, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, Lbe/b;->d:F

    .line 204
    :goto_44
    iget v0, p1, Lbe/b;->d:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_58

    .line 205
    iget v0, p1, Lbe/b;->d:F

    float-to-double v0, v0

    sub-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, p1, Lbe/b;->d:F

    goto :goto_44

    .line 207
    :cond_58
    :goto_58
    iget v0, p1, Lbe/b;->d:F

    float-to-double v0, v0

    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6c

    .line 208
    iget v0, p1, Lbe/b;->d:F

    float-to-double v0, v0

    add-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, p1, Lbe/b;->d:F

    goto :goto_58

    .line 210
    :cond_6c
    return-object p1
.end method

.method private c()V
    .registers 9

    .prologue
    const-wide v6, 0x400921fb54442d18L

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/a;->i:[Lbe/b;

    .line 53
    iget v0, p0, Lbe/a;->a:I

    new-array v0, v0, [Lbe/b;

    iput-object v0, p0, Lbe/a;->i:[Lbe/b;

    .line 55
    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lbe/a;->a:I

    if-ge v0, v1, :cond_55

    .line 56
    new-instance v1, Lbe/b;

    invoke-direct {v1}, Lbe/b;-><init>()V

    .line 57
    iget-object v2, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget v4, p0, Lbe/a;->c:F

    iget v5, p0, Lbe/a;->b:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lbe/a;->b:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbe/b;->a:F

    .line 58
    iget-object v2, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget v4, p0, Lbe/a;->e:F

    iget v5, p0, Lbe/a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lbe/a;->d:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lbe/b;->b:F

    .line 59
    iget-object v2, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    sub-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v1, Lbe/b;->d:F

    .line 60
    iget-object v2, p0, Lbe/a;->i:[Lbe/b;

    aput-object v1, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 62
    :cond_55
    return-void
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 229
    .line 230
    iget-object v2, p0, Lbe/a;->i:[Lbe/b;

    array-length v4, v2

    move v2, v0

    move v3, v1

    .line 231
    :goto_7
    if-ge v2, v4, :cond_13

    .line 232
    iget-object v5, p0, Lbe/a;->i:[Lbe/b;

    aget-object v5, v5, v2

    .line 233
    iget v5, v5, Lbe/b;->e:F

    add-float/2addr v3, v5

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 235
    :cond_13
    iput v3, p0, Lbe/a;->g:F

    .line 236
    cmpl-float v2, v3, v1

    if-lez v2, :cond_28

    move v2, v0

    .line 237
    :goto_1a
    if-ge v2, v4, :cond_3a

    .line 238
    iget-object v5, p0, Lbe/a;->i:[Lbe/b;

    aget-object v5, v5, v2

    .line 239
    iget v6, v5, Lbe/b;->e:F

    div-float/2addr v6, v3

    iput v6, v5, Lbe/b;->f:F

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_28
    move v2, v0

    .line 242
    :goto_29
    if-ge v2, v4, :cond_3a

    .line 243
    iget-object v3, p0, Lbe/a;->i:[Lbe/b;

    aget-object v3, v3, v2

    .line 244
    const/high16 v5, 0x3f80

    iget v6, p0, Lbe/a;->a:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lbe/b;->f:F

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 249
    :cond_3a
    :goto_3a
    if-ge v0, v4, :cond_4b

    .line 250
    iget-object v2, p0, Lbe/a;->i:[Lbe/b;

    aget-object v2, v2, v0

    .line 251
    iget v3, v2, Lbe/b;->f:F

    add-float/2addr v3, v1

    iput v3, v2, Lbe/b;->g:F

    .line 252
    iget v2, v2, Lbe/b;->f:F

    add-float/2addr v1, v2

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 254
    :cond_4b
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 260
    iget-object v0, p0, Lbe/a;->i:[Lbe/b;

    array-length v1, v0

    .line 261
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_10

    .line 262
    iget-object v2, p0, Lbe/a;->i:[Lbe/b;

    aget-object v2, v2, v0

    .line 263
    const/4 v3, 0x0

    iput v3, v2, Lbe/b;->e:F

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 265
    :cond_10
    return-void
.end method


# virtual methods
.method public a(Lbe/b;)I
    .registers 12
    .parameter

    .prologue
    const/16 v0, 0xbb8

    .line 272
    const-wide/16 v2, 0x0

    .line 273
    iget-object v1, p0, Lbe/a;->i:[Lbe/b;

    array-length v4, v1

    .line 274
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v4, :cond_2f

    .line 275
    iget-object v5, p0, Lbe/a;->i:[Lbe/b;

    aget-object v5, v5, v1

    .line 276
    iget v6, p1, Lbe/b;->a:F

    iget v7, v5, Lbe/b;->a:F

    sub-float/2addr v6, v7

    iget v7, p1, Lbe/b;->a:F

    iget v8, v5, Lbe/b;->a:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p1, Lbe/b;->b:F

    iget v8, v5, Lbe/b;->b:F

    sub-float/2addr v7, v8

    iget v8, p1, Lbe/b;->b:F

    iget v9, v5, Lbe/b;->b:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 278
    iget v5, v5, Lbe/b;->f:F

    float-to-double v8, v5

    mul-double v5, v8, v6

    add-double/2addr v2, v5

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 280
    :cond_2f
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 281
    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 285
    if-ge v1, v0, :cond_44

    .line 288
    :goto_43
    return v0

    :cond_44
    move v0, v1

    goto :goto_43
.end method

.method public a()Lbe/b;
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lbe/a;->k:F

    invoke-virtual {p0, v0}, Lbe/a;->a(F)Lbe/b;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lbe/b;
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 111
    cmpg-float v1, p1, v7

    if-gez v1, :cond_8

    .line 134
    :cond_7
    return-object v0

    .line 114
    :cond_8
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_7

    .line 117
    invoke-direct {p0}, Lbe/a;->d()V

    .line 119
    iget v0, p0, Lbe/a;->a:I

    new-array v2, v0, [Lbe/b;

    .line 120
    iget-object v0, p0, Lbe/a;->i:[Lbe/b;

    iget v1, p0, Lbe/a;->a:I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lbe/b;

    invoke-direct {v0}, Lbe/b;-><init>()V

    .line 124
    iget v1, p0, Lbe/a;->a:I

    add-int/lit8 v1, v1, -0x1

    :goto_28
    if-ltz v1, :cond_7

    .line 125
    aget-object v3, v2, v1

    .line 126
    iget v4, v3, Lbe/b;->f:F

    add-float/2addr v4, v7

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_7

    .line 127
    iget v4, v0, Lbe/b;->a:F

    iget v5, v3, Lbe/b;->a:F

    iget v6, v3, Lbe/b;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lbe/b;->a:F

    .line 128
    iget v4, v0, Lbe/b;->b:F

    iget v5, v3, Lbe/b;->b:F

    iget v6, v3, Lbe/b;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v0, Lbe/b;->b:F

    .line 129
    iget v4, v0, Lbe/b;->d:F

    iget v5, v3, Lbe/b;->d:F

    iget v3, v3, Lbe/b;->f:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, v0, Lbe/b;->d:F

    .line 124
    add-int/lit8 v1, v1, -0x1

    goto :goto_28
.end method

.method public b()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lbe/a;->d()V

    .line 158
    iget v0, p0, Lbe/a;->a:I

    new-array v7, v0, [Lbe/b;

    .line 159
    iget-object v0, p0, Lbe/a;->i:[Lbe/b;

    iget v2, p0, Lbe/a;->a:I

    invoke-static {v0, v1, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    iget v2, p0, Lbe/a;->a:I

    int-to-float v2, v2

    div-float v5, v0, v2

    .line 166
    const/high16 v0, 0x3f80

    iget v2, p0, Lbe/a;->a:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v5

    .line 170
    :goto_28
    iget v6, p0, Lbe/a;->a:I

    if-ge v0, v6, :cond_6d

    move v6, v2

    .line 171
    :goto_2d
    iget v8, p0, Lbe/a;->a:I

    if-ge v6, v8, :cond_73

    .line 172
    add-int/lit8 v8, v6, 0x1

    iget v9, p0, Lbe/a;->a:I

    if-ne v8, v9, :cond_4a

    .line 183
    :goto_37
    aget-object v3, v7, v6

    invoke-direct {p0, v3, v0}, Lbe/a;->a(Lbe/b;I)V

    .line 184
    add-float/2addr v4, v5

    .line 185
    float-to-double v8, v4

    const-wide/high16 v10, 0x3ff0

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_71

    .line 186
    const/4 v4, 0x0

    move v2, v1

    move v3, v1

    .line 170
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 176
    :cond_4a
    iget-object v8, p0, Lbe/a;->i:[Lbe/b;

    aget-object v8, v8, v6

    iget v8, v8, Lbe/b;->g:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6a

    iget-object v8, p0, Lbe/a;->i:[Lbe/b;

    add-int/lit8 v9, v6, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Lbe/b;->g:F

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_6a

    .line 178
    add-int/lit8 v3, v6, 0x1

    .line 179
    add-int/lit8 v2, v6, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v6, v3

    .line 180
    goto :goto_37

    .line 171
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 191
    :cond_6d
    invoke-direct {p0}, Lbe/a;->e()V

    .line 192
    return-void

    :cond_71
    move v3, v6

    goto :goto_47

    :cond_73
    move v6, v3

    goto :goto_37
.end method

.method public b(F)V
    .registers 13
    .parameter

    .prologue
    const-wide/high16 v9, 0x3fe0

    .line 141
    iget-object v0, p0, Lbe/a;->i:[Lbe/b;

    array-length v1, v0

    .line 142
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_3f

    .line 143
    iget-object v2, p0, Lbe/a;->i:[Lbe/b;

    aget-object v2, v2, v0

    .line 144
    iget v3, v2, Lbe/b;->d:F

    .line 145
    float-to-double v4, p1

    neg-float v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    sub-double/2addr v6, v9

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 146
    float-to-double v5, p1

    neg-float v3, v3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget-object v3, p0, Lbe/a;->j:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    sub-double/2addr v7, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v3, v5

    .line 147
    iget v5, v2, Lbe/b;->a:F

    add-float/2addr v4, v5

    iput v4, v2, Lbe/b;->a:F

    .line 148
    iget v4, v2, Lbe/b;->b:F

    add-float/2addr v3, v4

    iput v3, v2, Lbe/b;->b:F

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 150
    :cond_3f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    iget-object v0, p0, Lbe/a;->i:[Lbe/b;

    array-length v2, v0

    .line 295
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_19

    .line 296
    iget-object v3, p0, Lbe/a;->i:[Lbe/b;

    aget-object v3, v3, v0

    .line 297
    invoke-virtual {v3}, Lbe/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 299
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

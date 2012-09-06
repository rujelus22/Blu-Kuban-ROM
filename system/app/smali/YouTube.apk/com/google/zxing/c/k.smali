.class public abstract Lcom/google/zxing/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([I[II)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 257
    array-length v5, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 260
    :goto_8
    if-ge v2, v5, :cond_13

    .line 261
    aget v6, p0, v2

    add-int/2addr v4, v6

    .line 262
    aget v6, p1, v2

    add-int/2addr v3, v6

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 264
    :cond_13
    if-ge v4, v3, :cond_16

    .line 285
    :cond_15
    :goto_15
    return v0

    .line 272
    :cond_16
    shl-int/lit8 v2, v4, 0x8

    div-int v6, v2, v3

    .line 273
    mul-int v2, p2, v6

    shr-int/lit8 v7, v2, 0x8

    move v2, v1

    move v3, v1

    .line 276
    :goto_20
    if-ge v2, v5, :cond_36

    .line 277
    aget v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    .line 278
    aget v8, p1, v2

    mul-int/2addr v8, v6

    .line 279
    if-le v1, v8, :cond_33

    sub-int/2addr v1, v8

    .line 280
    :goto_2c
    if-gt v1, v7, :cond_15

    .line 283
    add-int/2addr v3, v1

    .line 276
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_20

    .line 279
    :cond_33
    sub-int v1, v8, v1

    goto :goto_2c

    .line 285
    :cond_36
    div-int v0, v3, v4

    goto :goto_15
.end method

.method protected static a(Lcom/google/zxing/common/a;I[I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    array-length v5, p2

    move v0, v2

    .line 194
    :goto_4
    if-ge v0, v5, :cond_b

    .line 195
    aput v2, p2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 197
    :cond_b
    iget v6, p0, Lcom/google/zxing/common/a;->b:I

    .line 198
    if-lt p1, v6, :cond_14

    .line 199
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 201
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_1b
    move v4, v0

    move v0, v2

    .line 204
    :goto_1d
    if-ge p1, v6, :cond_42

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    .line 206
    xor-int/2addr v3, v4

    if-eqz v3, :cond_33

    .line 207
    aget v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v0

    move v3, v4

    .line 217
    :goto_2d
    add-int/lit8 p1, p1, 0x1

    move v4, v3

    .line 218
    goto :goto_1d

    :cond_31
    move v0, v2

    .line 201
    goto :goto_1b

    .line 209
    :cond_33
    add-int/lit8 v3, v0, 0x1

    .line 210
    if-eq v3, v5, :cond_43

    .line 211
    aput v1, p2, v3

    .line 214
    if-nez v4, :cond_40

    move v0, v1

    :goto_3c
    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_2d

    :cond_40
    move v0, v2

    goto :goto_3c

    :cond_42
    move v3, v0

    .line 221
    :cond_43
    if-eq v3, v5, :cond_50

    add-int/lit8 v0, v5, -0x1

    if-ne v3, v0, :cond_4b

    if-eq p1, v6, :cond_50

    .line 222
    :cond_4b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 224
    :cond_50
    return-void
.end method

.method private b(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/c;->a()I

    move-result v8

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/c;->b()I

    move-result v2

    .line 104
    new-instance v4, Lcom/google/zxing/common/a;

    invoke-direct {v4, v8}, Lcom/google/zxing/common/a;-><init>(I)V

    .line 106
    shr-int/lit8 v9, v2, 0x1

    .line 107
    if-eqz p2, :cond_82

    sget-object v1, Lcom/google/zxing/d;->d:Lcom/google/zxing/d;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v1, 0x1

    move v3, v1

    .line 108
    :goto_1d
    const/4 v5, 0x1

    if-eqz v3, :cond_85

    const/16 v1, 0x8

    :goto_22
    shr-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 110
    if-eqz v3, :cond_87

    move v1, v2

    .line 116
    :goto_2b
    const/4 v3, 0x0

    move v7, v3

    move-object v3, v4

    move-object/from16 v4, p2

    :goto_30
    if-ge v7, v1, :cond_f5

    .line 119
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v5, v5, 0x1

    .line 120
    and-int/lit8 v6, v7, 0x1

    if-nez v6, :cond_8a

    const/4 v6, 0x1

    .line 121
    :goto_3b
    if-eqz v6, :cond_8c

    :goto_3d
    mul-int/2addr v5, v10

    add-int v11, v9, v5

    .line 122
    if-ltz v11, :cond_f5

    if-ge v11, v2, :cond_f5

    .line 124
    :try_start_44
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Lcom/google/zxing/c;->a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
    :try_end_49
    .catch Lcom/google/zxing/NotFoundException; {:try_start_44 .. :try_end_49} :catch_ef

    move-result-object v3

    .line 136
    const/4 v5, 0x0

    move v6, v5

    :goto_4c
    const/4 v5, 0x2

    if-ge v6, v5, :cond_f0

    .line 137
    const/4 v5, 0x1

    if-ne v6, v5, :cond_8f

    .line 138
    invoke-virtual {v3}, Lcom/google/zxing/common/a;->a()V

    .line 143
    if-eqz v4, :cond_8f

    sget-object v5, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 144
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 145
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v12

    .line 146
    :cond_68
    :goto_68
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 147
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    .line 148
    sget-object v14, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_68

    .line 149
    invoke-virtual {v4, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 107
    :cond_82
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1d

    .line 108
    :cond_85
    const/4 v1, 0x5

    goto :goto_22

    .line 113
    :cond_87
    const/16 v1, 0xf

    goto :goto_2b

    .line 120
    :cond_8a
    const/4 v6, 0x0

    goto :goto_3b

    .line 121
    :cond_8c
    neg-int v5, v5

    goto :goto_3d

    :cond_8e
    move-object v4, v5

    .line 157
    :cond_8f
    :try_start_8f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3, v4}, Lcom/google/zxing/c/k;->a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v5

    .line 159
    const/4 v12, 0x1

    if-ne v6, v12, :cond_e8

    .line 161
    sget-object v12, Lcom/google/zxing/i;->b:Lcom/google/zxing/i;

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0xb4

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v12, v13}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v5}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v12

    .line 164
    if-eqz v12, :cond_e8

    .line 165
    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/j;

    int-to-float v15, v8

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->a()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x3f80

    sub-float v15, v15, v16

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->b()F

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v14, v12, v13

    .line 166
    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/j;

    int-to-float v15, v8

    const/16 v16, 0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->a()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x3f80

    sub-float v15, v15, v16

    const/16 v16, 0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/j;->b()F

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v14, v12, v13
    :try_end_e8
    .catch Lcom/google/zxing/ReaderException; {:try_start_8f .. :try_end_e8} :catch_e9

    .line 169
    :cond_e8
    return-object v5

    .line 136
    :catch_e9
    move-exception v5

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_4c

    .line 131
    :catch_ef
    move-exception v5

    .line 116
    :cond_f0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_30

    .line 176
    :cond_f5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method protected static b(Lcom/google/zxing/common/a;I[I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    array-length v1, p2

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    .line 231
    :cond_5
    :goto_5
    if-lez p1, :cond_19

    if-ltz v1, :cond_19

    .line 232
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-eq v2, v0, :cond_5

    .line 233
    add-int/lit8 v1, v1, -0x1

    .line 234
    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_5

    :cond_17
    const/4 v0, 0x0

    goto :goto_5

    .line 237
    :cond_19
    if-ltz v1, :cond_20

    .line 238
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 240
    :cond_20
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/google/zxing/c/k;->a(Lcom/google/zxing/common/a;I[I)V

    .line 241
    return-void
.end method


# virtual methods
.method public abstract a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
.end method

.method public a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/c/k;->b(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    :try_end_4
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 76
    :goto_5
    return-object v0

    .line 54
    :catch_6
    move-exception v2

    .line 55
    if-eqz p2, :cond_75

    sget-object v0, Lcom/google/zxing/d;->d:Lcom/google/zxing/d;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x1

    .line 56
    :goto_12
    if-eqz v0, :cond_79

    invoke-virtual {p1}, Lcom/google/zxing/c;->d()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/c;->e()Lcom/google/zxing/c;

    move-result-object v3

    .line 58
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/c/k;->b(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/zxing/h;->d()Ljava/util/Hashtable;

    move-result-object v4

    .line 61
    const/16 v0, 0x10e

    .line 62
    if-eqz v4, :cond_42

    sget-object v5, Lcom/google/zxing/i;->b:Lcom/google/zxing/i;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 64
    sget-object v0, Lcom/google/zxing/i;->b:Lcom/google/zxing/i;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    .line 67
    :cond_42
    sget-object v4, Lcom/google/zxing/i;->b:Lcom/google/zxing/i;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Lcom/google/zxing/h;->a(Lcom/google/zxing/i;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v2}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_77

    .line 71
    invoke-virtual {v3}, Lcom/google/zxing/c;->b()I

    move-result v3

    move v0, v1

    .line 72
    :goto_57
    array-length v1, v4

    if-ge v0, v1, :cond_77

    .line 73
    new-instance v1, Lcom/google/zxing/j;

    int-to-float v5, v3

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/google/zxing/j;->b()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/google/zxing/j;->a()F

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v1, v4, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_75
    move v0, v1

    .line 55
    goto :goto_12

    :cond_77
    move-object v0, v2

    .line 76
    goto :goto_5

    .line 78
    :cond_79
    throw v2
.end method

.method public a()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

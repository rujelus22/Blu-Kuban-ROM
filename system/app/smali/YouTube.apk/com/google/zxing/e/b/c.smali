.class public final Lcom/google/zxing/e/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private b:Lcom/google/zxing/k;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    .line 45
    return-void
.end method

.method private a(IIII)F
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/e/b/c;->b(IIII)F

    move-result v4

    .line 263
    sub-int v0, p3, p1

    sub-int v0, p1, v0

    .line 264
    if-gez v0, :cond_31

    .line 265
    int-to-float v3, p1

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v3, v0

    move v3, v2

    .line 271
    :goto_14
    int-to-float v5, p2

    sub-int v6, p4, p2

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    float-to-int v0, v0

    .line 274
    if-gez v0, :cond_4a

    .line 275
    int-to-float v5, p2

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float v0, v5, v0

    .line 281
    :goto_24
    int-to-float v5, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 283
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/zxing/e/b/c;->b(IIII)F

    move-result v0

    add-float/2addr v0, v4

    .line 286
    sub-float/2addr v0, v1

    return v0

    .line 267
    :cond_31
    iget-object v3, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v3, v3, Lcom/google/zxing/common/b;->a:I

    if-lt v0, v3, :cond_66

    .line 268
    iget-object v3, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v3, v3, Lcom/google/zxing/common/b;->a:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 269
    iget-object v3, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v3, v3, Lcom/google/zxing/common/b;->a:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 277
    :cond_4a
    iget-object v2, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v2, v2, Lcom/google/zxing/common/b;->b:I

    if-lt v0, v2, :cond_63

    .line 278
    iget-object v2, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v2, v2, Lcom/google/zxing/common/b;->b:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 279
    iget-object v2, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v2, v2, Lcom/google/zxing/common/b;->b:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :cond_63
    move v2, v0

    move v0, v1

    goto :goto_24

    :cond_66
    move v3, v0

    move v0, v1

    goto :goto_14
.end method

.method private a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x40e0

    .line 233
    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/j;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/j;->b()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/e/b/c;->a(IIII)F

    move-result v0

    .line 237
    invoke-virtual {p2}, Lcom/google/zxing/j;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/j;->b()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/j;->a()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/zxing/j;->b()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/zxing/e/b/c;->a(IIII)F

    move-result v1

    .line 241
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 242
    div-float v0, v1, v5

    .line 249
    :goto_3a
    return v0

    .line 244
    :cond_3b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 245
    div-float/2addr v0, v5

    goto :goto_3a

    .line 249
    :cond_43
    add-float/2addr v0, v1

    const/high16 v1, 0x4160

    div-float/2addr v0, v1

    goto :goto_3a
.end method

.method private a(Lcom/google/zxing/e/b/h;)Lcom/google/zxing/common/i;
    .registers 26
    .parameter

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/e/b/h;->b()Lcom/google/zxing/e/b/d;

    move-result-object v21

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/e/b/h;->c()Lcom/google/zxing/e/b/d;

    move-result-object v22

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/e/b/h;->a()Lcom/google/zxing/e/b/d;

    move-result-object v23

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v9, v3, v4

    .line 92
    const/high16 v3, 0x3f80

    cmpg-float v3, v9, v3

    if-gez v3, :cond_30

    .line 93
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 95
    :cond_30
    invoke-static/range {v21 .. v22}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v3

    div-float/2addr v3, v9

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v4

    div-float/2addr v4, v9

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, v3, 0x3

    packed-switch v4, :pswitch_data_1b0

    :pswitch_50
    move/from16 v19, v3

    .line 96
    :goto_52
    invoke-static/range {v19 .. v19}, Lcom/google/zxing/e/a/q;->a(I)Lcom/google/zxing/e/a/q;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/google/zxing/e/a/q;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    .line 99
    const/4 v11, 0x0

    .line 101
    invoke-virtual {v3}, Lcom/google/zxing/e/a/q;->b()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1ac

    .line 104
    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/e/b/d;->a()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->a()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/e/b/d;->a()F

    move-result v5

    add-float/2addr v3, v5

    .line 105
    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/e/b/d;->b()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->b()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/e/b/d;->b()F

    move-result v6

    add-float/2addr v5, v6

    .line 109
    const/high16 v6, 0x3f80

    const/high16 v7, 0x4040

    int-to-float v4, v4

    div-float v4, v7, v4

    sub-float v4, v6, v4

    .line 110
    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->a()F

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->a()F

    move-result v7

    sub-float/2addr v3, v7

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v13, v3

    .line 111
    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->b()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/e/b/d;->b()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v14, v3

    .line 114
    const/4 v3, 0x4

    move v12, v3

    :goto_a3
    const/16 v3, 0x10

    if-gt v12, v3, :cond_1ac

    .line 116
    int-to-float v3, v12

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v4, 0x0

    sub-int v5, v13, v3

    :try_start_ad
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v4, v4, Lcom/google/zxing/common/b;->a:I

    add-int/lit8 v4, v4, -0x1

    add-int v6, v13, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v4, v7, v5

    int-to-float v4, v4

    const/high16 v6, 0x4040

    mul-float/2addr v6, v9

    cmpg-float v4, v4, v6

    if-gez v4, :cond_e4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
    :try_end_ce
    .catch Lcom/google/zxing/NotFoundException; {:try_start_ad .. :try_end_ce} :catch_ce

    .line 114
    :catch_ce
    move-exception v3

    shl-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_a3

    .line 95
    :pswitch_d3
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v3

    goto/16 :goto_52

    :pswitch_d9
    add-int/lit8 v3, v3, -0x1

    move/from16 v19, v3

    goto/16 :goto_52

    :pswitch_df
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 116
    :cond_e4
    const/4 v4, 0x0

    sub-int v6, v14, v3

    :try_start_e7
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget v4, v4, Lcom/google/zxing/common/b;->b:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v14

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v3, v8, v6

    int-to-float v3, v3

    const/high16 v4, 0x4040

    mul-float/2addr v4, v9

    cmpg-float v3, v3, v4

    if-gez v3, :cond_107

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    :cond_107
    new-instance v3, Lcom/google/zxing/e/b/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    sub-int/2addr v7, v5

    sub-int/2addr v8, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/zxing/e/b/c;->b:Lcom/google/zxing/k;

    invoke-direct/range {v3 .. v10}, Lcom/google/zxing/e/b/b;-><init>(Lcom/google/zxing/common/b;IIIIFLcom/google/zxing/k;)V

    invoke-virtual {v3}, Lcom/google/zxing/e/b/b;->a()Lcom/google/zxing/e/b/a;
    :try_end_119
    .catch Lcom/google/zxing/NotFoundException; {:try_start_e7 .. :try_end_119} :catch_ce

    move-result-object v3

    move-object/from16 v20, v3

    .line 128
    :goto_11c
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4060

    sub-float v5, v3, v4

    if-eqz v20, :cond_17b

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/j;->a()F

    move-result v15

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/j;->b()F

    move-result v16

    const/high16 v3, 0x4040

    sub-float v7, v5, v3

    move v8, v7

    :goto_132
    const/high16 v3, 0x4060

    const/high16 v4, 0x4060

    const/high16 v6, 0x4060

    const/high16 v9, 0x4060

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/j;->a()F

    move-result v11

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/j;->b()F

    move-result v12

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/j;->a()F

    move-result v13

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/j;->b()F

    move-result v14

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/j;->a()F

    move-result v17

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/j;->b()F

    move-result v18

    move v10, v5

    invoke-static/range {v3 .. v18}, Lcom/google/zxing/common/n;->a(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/n;

    move-result-object v3

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    invoke-static {}, Lcom/google/zxing/common/l;->a()Lcom/google/zxing/common/l;

    move-result-object v5

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v5, v4, v0, v1, v3}, Lcom/google/zxing/common/l;->a(Lcom/google/zxing/common/b;IILcom/google/zxing/common/n;)Lcom/google/zxing/common/b;

    move-result-object v4

    .line 134
    if-nez v20, :cond_19c

    .line 135
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/zxing/j;

    const/4 v5, 0x0

    aput-object v23, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v22, v3, v5

    .line 139
    :goto_175
    new-instance v5, Lcom/google/zxing/common/i;

    invoke-direct {v5, v4, v3}, Lcom/google/zxing/common/i;-><init>(Lcom/google/zxing/common/b;[Lcom/google/zxing/j;)V

    return-object v5

    .line 128
    :cond_17b
    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/j;->a()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/j;->a()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/j;->a()F

    move-result v4

    add-float v15, v3, v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/j;->b()F

    move-result v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/j;->b()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/j;->b()F

    move-result v4

    add-float v16, v3, v4

    move v7, v5

    move v8, v5

    goto :goto_132

    .line 137
    :cond_19c
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/google/zxing/j;

    const/4 v5, 0x0

    aput-object v23, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v22, v3, v5

    const/4 v5, 0x3

    aput-object v20, v3, v5

    goto :goto_175

    :cond_1ac
    move-object/from16 v20, v11

    goto/16 :goto_11c

    .line 95
    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_50
        :pswitch_d9
        :pswitch_df
    .end packed-switch
.end method

.method private b(IIII)F
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_60

    const/4 v2, 0x1

    move v11, v2

    .line 301
    :goto_10
    if-eqz v11, :cond_9f

    .line 310
    :goto_12
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 311
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 312
    neg-int v2, v12

    shr-int/lit8 v4, v2, 0x1

    .line 313
    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_63

    const/4 v2, 0x1

    move v10, v2

    .line 314
    :goto_29
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_66

    const/4 v2, 0x1

    .line 317
    :goto_30
    const/4 v5, 0x0

    .line 319
    add-int v14, p4, v10

    move/from16 v7, p2

    move v9, v4

    move/from16 v4, p1

    .line 320
    :goto_38
    if-eq v7, v14, :cond_9d

    .line 321
    if-eqz v11, :cond_68

    move v8, v4

    .line 322
    :goto_3d
    if-eqz v11, :cond_6a

    move v6, v7

    .line 325
    :goto_40
    const/4 v3, 0x1

    if-ne v5, v3, :cond_6c

    const/4 v3, 0x1

    :goto_44
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v15, v8, v6}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v6

    xor-int/2addr v3, v6

    if-nez v3, :cond_9b

    .line 326
    const/4 v3, 0x2

    if-ne v5, v3, :cond_6e

    .line 327
    sub-int v2, v7, p2

    .line 328
    sub-int v3, v4, p1

    .line 329
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 352
    :goto_5f
    return v2

    .line 300
    :cond_60
    const/4 v2, 0x0

    move v11, v2

    goto :goto_10

    .line 313
    :cond_63
    const/4 v2, -0x1

    move v10, v2

    goto :goto_29

    .line 314
    :cond_66
    const/4 v2, -0x1

    goto :goto_30

    :cond_68
    move v8, v7

    .line 321
    goto :goto_3d

    :cond_6a
    move v6, v4

    .line 322
    goto :goto_40

    .line 325
    :cond_6c
    const/4 v3, 0x0

    goto :goto_44

    .line 331
    :cond_6e
    add-int/lit8 v6, v5, 0x1

    .line 334
    :goto_70
    add-int v5, v9, v13

    .line 335
    if-lez v5, :cond_98

    .line 336
    move/from16 v0, p3

    if-eq v4, v0, :cond_81

    .line 337
    add-int v3, v4, v2

    .line 340
    sub-int v4, v5, v12

    .line 320
    :goto_7c
    add-int/2addr v7, v10

    move v5, v6

    move v9, v4

    move v4, v3

    goto :goto_38

    :cond_81
    move v2, v6

    .line 346
    :goto_82
    const/4 v3, 0x2

    if-ne v2, v3, :cond_95

    .line 347
    add-int v2, p4, v10

    sub-int v2, v2, p2

    .line 348
    sub-int v3, p3, p1

    .line 349
    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_5f

    .line 352
    :cond_95
    const/high16 v2, 0x7fc0

    goto :goto_5f

    :cond_98
    move v3, v4

    move v4, v5

    goto :goto_7c

    :cond_9b
    move v6, v5

    goto :goto_70

    :cond_9d
    move v2, v5

    goto :goto_82

    :cond_9f
    move/from16 v16, p4

    move/from16 p4, p3

    move/from16 p3, v16

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    goto/16 :goto_12
.end method


# virtual methods
.method public final a(Ljava/util/Hashtable;)Lcom/google/zxing/common/i;
    .registers 5
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_17

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/zxing/e/b/c;->b:Lcom/google/zxing/k;

    .line 78
    new-instance v0, Lcom/google/zxing/e/b/e;

    iget-object v1, p0, Lcom/google/zxing/e/b/c;->a:Lcom/google/zxing/common/b;

    iget-object v2, p0, Lcom/google/zxing/e/b/c;->b:Lcom/google/zxing/k;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/e/b/e;-><init>(Lcom/google/zxing/common/b;Lcom/google/zxing/k;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/google/zxing/e/b/e;->a(Ljava/util/Hashtable;)Lcom/google/zxing/e/b/h;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/b/h;)Lcom/google/zxing/common/i;

    move-result-object v0

    return-object v0

    .line 75
    :cond_17
    sget-object v0, Lcom/google/zxing/d;->h:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/k;

    goto :goto_3
.end method

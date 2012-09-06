.class public LS/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([IIIII)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    if-gez p3, :cond_d

    move p3, v0

    .line 52
    :cond_4
    :goto_4
    if-gez p4, :cond_12

    move p4, v0

    .line 57
    :cond_7
    :goto_7
    mul-int v0, p4, p1

    add-int/2addr v0, p3

    aget v0, p0, v0

    return v0

    .line 49
    :cond_d
    if-lt p3, p1, :cond_4

    .line 50
    add-int/lit8 p3, p1, -0x1

    goto :goto_4

    .line 54
    :cond_12
    if-lt p4, p2, :cond_7

    .line 55
    add-int/lit8 p4, p2, -0x1

    goto :goto_7
.end method

.method public static a(LS/f;)LS/f;
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-interface {p0}, LS/f;->a()I

    move-result v6

    .line 342
    invoke-interface {p0}, LS/f;->b()I

    move-result v7

    .line 345
    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v7, 0x1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 348
    shl-int/lit8 v3, v6, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    .line 352
    shl-int/lit8 v5, v6, 0x1

    .line 353
    shl-int/lit8 v6, v7, 0x1

    move v3, v2

    move v4, v2

    .line 357
    :goto_1e
    if-ge v3, v6, :cond_40

    .line 360
    add-int/lit8 v0, v5, -0x1

    :goto_22
    if-ltz v0, :cond_34

    .line 361
    add-int v7, v4, v0

    .line 362
    shr-int/lit8 v8, v0, 0x1

    add-int/2addr v8, v4

    aget v8, v1, v8

    .line 364
    add-int/lit8 v9, v7, -0x1

    aput v8, v1, v7

    .line 365
    aput v8, v1, v9

    .line 360
    add-int/lit8 v0, v0, -0x2

    goto :goto_22

    .line 369
    :cond_34
    add-int v0, v4, v5

    invoke-static {v1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v4, v0

    .line 357
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_1e

    .line 375
    :cond_40
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6, v2}, LS/h;->a([IIIZ)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(LS/f;F)LS/f;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 743
    invoke-interface {p0}, LS/f;->a()I

    move-result v0

    invoke-interface {p0}, LS/f;->b()I

    move-result v1

    mul-int v8, v0, v1

    .line 744
    new-array v1, v8, [I

    .line 745
    invoke-interface {p0}, LS/f;->a()I

    move-result v3

    invoke-interface {p0}, LS/f;->a()I

    move-result v6

    invoke-interface {p0}, LS/f;->b()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    .line 746
    :goto_1f
    if-ge v2, v8, :cond_46

    .line 747
    aget v0, v1, v2

    ushr-int/lit8 v0, v0, 0x18

    .line 748
    const/high16 v3, 0x437f

    const/4 v4, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v3, 0x3f00

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 749
    aget v3, v1, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    aput v0, v1, v2

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 751
    :cond_46
    const/4 v0, 0x1

    .line 752
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v2

    invoke-interface {p0}, LS/f;->a()I

    move-result v3

    invoke-interface {p0}, LS/f;->b()I

    move-result v4

    invoke-interface {v2, v1, v3, v4, v0}, LS/h;->a([IIIZ)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(LS/f;II)LS/f;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 451
    if-lez p1, :cond_6

    if-gtz p2, :cond_e

    .line 452
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal target width or height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_e
    invoke-interface {p0}, LS/f;->a()I

    move-result v1

    .line 456
    invoke-interface {p0}, LS/f;->b()I

    move-result v4

    .line 458
    if-ne p1, v1, :cond_1b

    if-ne p2, v4, :cond_1b

    .line 497
    :cond_1a
    :goto_1a
    return-object p0

    .line 462
    :cond_1b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v5

    .line 466
    if-eq p1, v1, :cond_45

    .line 467
    invoke-interface {v5, p1, v4}, LS/h;->a(II)LS/f;

    move-result-object v0

    .line 468
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v6

    .line 469
    shl-int/lit8 v1, v1, 0x10

    div-int v7, v1, p1

    .line 470
    div-int/lit8 v1, v7, 0x2

    move v3, v1

    move v1, v2

    .line 473
    :goto_35
    if-ge v1, p1, :cond_46

    .line 474
    invoke-interface {v6, v1, v2, v9, v4}, LS/e;->a(IIII)V

    .line 475
    shr-int/lit8 v8, v3, 0x10

    sub-int v8, v1, v8

    invoke-interface {v6, p0, v8, v2}, LS/e;->a(LS/f;II)V

    .line 476
    add-int/2addr v3, v7

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_45
    move-object v0, p0

    .line 482
    :cond_46
    if-eq p2, v4, :cond_68

    .line 483
    invoke-interface {v5, p1, p2}, LS/h;->a(II)LS/f;

    move-result-object p0

    .line 485
    invoke-interface {p0}, LS/f;->c()LS/e;

    move-result-object v5

    .line 486
    shl-int/lit8 v1, v4, 0x10

    div-int v4, v1, p2

    .line 487
    div-int/lit8 v1, v4, 0x2

    move v3, v1

    move v1, v2

    .line 490
    :goto_58
    if-ge v1, p2, :cond_1a

    .line 491
    invoke-interface {v5, v2, v1, p1, v9}, LS/e;->a(IIII)V

    .line 492
    shr-int/lit8 v6, v3, 0x10

    sub-int v6, v1, v6

    invoke-interface {v5, v0, v2, v6}, LS/e;->a(LS/f;II)V

    .line 493
    add-int/2addr v3, v4

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_68
    move-object p0, v0

    .line 497
    goto :goto_1a
.end method

.method public static a(LS/f;IIIIIII)LS/f;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    if-nez p1, :cond_3d

    if-nez p2, :cond_3d

    invoke-interface {p0}, LS/f;->b()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_3d

    invoke-interface {p0}, LS/f;->a()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3d

    .line 257
    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_2a

    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_2a

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_2a

    .line 258
    invoke-static {p0}, LS/j;->b(LS/f;)LS/f;

    move-result-object v2

    .line 281
    :goto_29
    return-object v2

    .line 260
    :cond_2a
    mul-int/lit8 v2, p3, 0x2

    move/from16 v0, p5

    if-ne v2, v0, :cond_3d

    mul-int/lit8 v2, p4, 0x2

    move/from16 v0, p6

    if-ne v2, v0, :cond_3d

    if-nez p7, :cond_3d

    .line 261
    invoke-static {p0}, LS/j;->a(LS/f;)LS/f;

    move-result-object v2

    goto :goto_29

    .line 265
    :cond_3d
    mul-int v2, p5, p6

    new-array v10, v2, [I

    .line 266
    mul-int v2, p3, p4

    new-array v3, v2, [I

    .line 268
    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, LS/f;->a([IIIIIII)V

    .line 270
    const/4 v7, 0x0

    .line 272
    shl-int/lit8 v2, p3, 0x10

    div-int v8, v2, p5

    .line 273
    shl-int/lit8 v2, p4, 0x10

    div-int v14, v2, p6

    .line 275
    const/4 v2, 0x0

    :goto_5e
    move/from16 v0, p6

    if-ge v2, v0, :cond_75

    .line 276
    const/4 v6, 0x0

    const/4 v9, 0x0

    mul-int v11, v2, p5

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v3 .. v13}, LS/j;->a([IIIIIII[IIII)V

    .line 278
    add-int/2addr v7, v14

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 281
    :cond_75
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v3

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_8b

    const/4 v2, 0x1

    :goto_82
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v3, v10, v0, v1, v2}, LS/h;->a([IIIZ)LS/f;

    move-result-object v2

    goto :goto_29

    :cond_8b
    const/4 v2, 0x0

    goto :goto_82
.end method

.method public static a([IIIIIII[IIII)V
    .registers 54
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_166

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 139
    :goto_7
    and-int/lit8 v5, p10, 0x1

    if-eqz v5, :cond_1d0

    .line 141
    shr-int/lit8 v5, p5, 0x10

    add-int/lit8 v17, v5, 0x1

    .line 142
    shr-int/lit8 v5, p6, 0x10

    add-int/lit8 v18, v5, 0x1

    .line 144
    div-int v19, p5, v17

    .line 145
    div-int v20, p6, v18

    .line 147
    mul-int v21, v17, v18

    move/from16 v14, p4

    move/from16 v11, p3

    .line 149
    :goto_1d
    add-int/lit8 v15, p9, -0x1

    if-lez p9, :cond_1cd

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v6, 0x0

    .line 157
    const/4 v5, 0x0

    move v12, v5

    move v13, v14

    :goto_28
    move/from16 v0, v18

    if-ge v12, v0, :cond_177

    .line 159
    const/4 v5, 0x0

    move v10, v11

    move/from16 v42, v6

    move v6, v5

    move v5, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v42

    :goto_36
    move/from16 v0, v17

    if-ge v6, v0, :cond_16b

    .line 160
    shr-int/lit8 v22, v10, 0x10

    .line 161
    shr-int/lit8 v23, v13, 0x10

    .line 163
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, LS/j;->a([IIIII)I

    move-result v24

    .line 164
    add-int/lit8 v25, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, LS/j;->a([IIIII)I

    move-result v25

    .line 165
    add-int/lit8 v26, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, LS/j;->a([IIIII)I

    move-result v26

    .line 166
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, LS/j;->a([IIIII)I

    move-result v22

    .line 168
    const v23, 0xffff

    and-int v23, v23, v10

    shr-int/lit8 v23, v23, 0x8

    .line 169
    const v27, 0xffff

    and-int v27, v27, v13

    shr-int/lit8 v27, v27, 0x8

    .line 171
    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v28, v0

    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v28, v28, v29

    .line 172
    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v29, v29, v23

    .line 173
    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v30, v0

    mul-int v30, v30, v27

    .line 174
    mul-int v23, v23, v27

    .line 176
    shr-int/lit8 v27, v24, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    .line 177
    shr-int/lit8 v31, v24, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 178
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    .line 180
    shr-int/lit8 v33, v25, 0x10

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    .line 181
    shr-int/lit8 v34, v25, 0x8

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    .line 182
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    .line 184
    shr-int/lit8 v36, v26, 0x10

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    .line 185
    shr-int/lit8 v37, v26, 0x8

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    .line 186
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 188
    shr-int/lit8 v39, v22, 0x10

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    .line 189
    shr-int/lit8 v40, v22, 0x8

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    .line 190
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v41, v0

    .line 194
    mul-int v27, v27, v28

    mul-int v36, v36, v30

    add-int v27, v27, v36

    mul-int v33, v33, v29

    add-int v27, v27, v33

    mul-int v33, v39, v23

    add-int v27, v27, v33

    add-int v9, v9, v27

    .line 195
    mul-int v27, v31, v28

    mul-int v31, v37, v30

    add-int v27, v27, v31

    mul-int v31, v34, v29

    add-int v27, v27, v31

    mul-int v31, v40, v23

    add-int v27, v27, v31

    add-int v8, v8, v27

    .line 196
    mul-int v27, v32, v28

    mul-int v31, v38, v30

    add-int v27, v27, v31

    mul-int v31, v35, v29

    add-int v27, v27, v31

    mul-int v31, v41, v23

    add-int v27, v27, v31

    add-int v7, v7, v27

    .line 198
    if-eqz v16, :cond_160

    .line 199
    shr-int/lit8 v5, v24, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 200
    shr-int/lit8 v24, v25, 0x18

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 201
    shr-int/lit8 v25, v26, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 202
    shr-int/lit8 v22, v22, 0x18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 203
    mul-int v5, v5, v28

    mul-int v25, v25, v30

    add-int v5, v5, v25

    mul-int v24, v24, v29

    add-int v5, v5, v24

    mul-int v22, v22, v23

    add-int v5, v5, v22

    .line 206
    :cond_160
    add-int v10, v10, v19

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_36

    .line 137
    :cond_166
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_7

    .line 209
    :cond_16b
    add-int v10, v13, v20

    .line 157
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v13, v10

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v5

    goto/16 :goto_28

    .line 211
    :cond_177
    div-int v5, v8, v21

    const/high16 v8, 0xff

    and-int/2addr v5, v8

    div-int v7, v7, v21

    shr-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    div-int v6, v6, v21

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int v7, v5, v6

    .line 215
    add-int/lit8 v6, p8, 0x1

    if-eqz v16, :cond_1a5

    div-int v5, v9, v21

    shl-int/lit8 v5, v5, 0x8

    const/high16 v8, -0x100

    and-int/2addr v5, v8

    :goto_198
    or-int/2addr v5, v7

    aput v5, p7, p8

    .line 218
    add-int v11, v11, p5

    .line 219
    add-int v14, v14, p6

    move/from16 p9, v15

    move/from16 p8, v6

    .line 220
    goto/16 :goto_1d

    .line 215
    :cond_1a5
    const/high16 v5, -0x100

    goto :goto_198

    .line 222
    :goto_1a8
    add-int/lit8 v7, p9, -0x1

    if-lez p9, :cond_1cd

    .line 223
    shr-int/lit8 v8, p3, 0x10

    .line 224
    shr-int/lit8 v9, p4, 0x10

    .line 227
    if-ltz v8, :cond_1ce

    if-ltz v9, :cond_1ce

    move/from16 v0, p1

    if-ge v8, v0, :cond_1ce

    move/from16 v0, p2

    if-ge v9, v0, :cond_1ce

    .line 228
    add-int/lit8 v5, v6, 0x1

    mul-int v9, v9, p1

    add-int/2addr v8, v9

    aget v8, p0, v8

    aput v8, p7, v6

    .line 231
    :goto_1c5
    add-int p3, p3, p5

    .line 232
    add-int p4, p4, p6

    move/from16 p9, v7

    move v6, v5

    .line 233
    goto :goto_1a8

    .line 235
    :cond_1cd
    return-void

    :cond_1ce
    move v5, v6

    goto :goto_1c5

    :cond_1d0
    move/from16 v6, p8

    goto :goto_1a8
.end method

.method public static b(LS/f;)LS/f;
    .registers 17
    .parameter

    .prologue
    .line 386
    invoke-interface/range {p0 .. p0}, LS/f;->a()I

    move-result v3

    .line 387
    invoke-interface/range {p0 .. p0}, LS/f;->b()I

    move-result v7

    .line 390
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 393
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    .line 398
    shr-int/lit8 v6, v3, 0x1

    .line 399
    shr-int/lit8 v7, v7, 0x1

    .line 402
    mul-int v0, v6, v7

    new-array v8, v0, [I

    .line 406
    const/4 v4, 0x0

    .line 407
    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x0

    move v5, v4

    move v4, v2

    move v2, v0

    :goto_23
    if-ge v2, v7, :cond_84

    .line 409
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v6, :cond_7c

    .line 410
    add-int v9, v4, v0

    .line 412
    aget v10, v1, v9

    .line 413
    add-int/lit8 v11, v9, 0x1

    aget v11, v1, v11

    .line 414
    add-int v12, v9, v3

    aget v12, v1, v12

    .line 415
    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    .line 417
    const/high16 v13, 0xff

    and-int/2addr v13, v10

    const/high16 v14, 0xff

    and-int/2addr v14, v11

    add-int/2addr v13, v14

    const/high16 v14, 0xff

    and-int/2addr v14, v12

    add-int/2addr v13, v14

    const/high16 v14, 0xff

    and-int/2addr v14, v9

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x2

    .line 418
    const v14, 0xff00

    and-int/2addr v14, v10

    const v15, 0xff00

    and-int/2addr v15, v11

    add-int/2addr v14, v15

    const v15, 0xff00

    and-int/2addr v15, v12

    add-int/2addr v14, v15

    const v15, 0xff00

    and-int/2addr v15, v9

    add-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x2

    .line 419
    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v11, v12, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x2

    .line 421
    add-int v10, v5, v0

    const/high16 v11, 0xff

    and-int/2addr v11, v13

    const v12, 0xff00

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    or-int/2addr v9, v11

    aput v9, v8, v10

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 425
    :cond_7c
    add-int/2addr v5, v6

    .line 426
    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v4, v0

    .line 408
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    .line 432
    :cond_84
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v8, v6, v7, v1}, LS/h;->a([IIIZ)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public static c(LS/f;)[B
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-interface {p0}, LS/f;->a()I

    move-result v3

    .line 612
    invoke-interface {p0}, LS/f;->b()I

    move-result v7

    .line 614
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 615
    invoke-interface/range {v0 .. v7}, LS/f;->a([IIIIIII)V

    .line 622
    mul-int v0, v3, v7

    new-array v8, v0, [I

    move v4, v2

    .line 623
    :goto_19
    if-ge v4, v7, :cond_31

    move v0, v2

    .line 624
    :goto_1c
    if-ge v0, v3, :cond_2d

    .line 625
    mul-int v5, v4, v3

    add-int/2addr v5, v0

    .line 626
    add-int/lit8 v6, v7, -0x1

    sub-int/2addr v6, v4

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    .line 627
    aget v5, v1, v5

    aput v5, v8, v6

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 623
    :cond_2d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 632
    :cond_31
    const/16 v0, 0x36

    new-array v1, v0, [B

    fill-array-data v1, :array_f0

    .line 642
    const/16 v0, 0x15

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 643
    const/16 v0, 0x14

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 644
    const/16 v0, 0x13

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 645
    const/16 v0, 0x12

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 648
    const/16 v0, 0x19

    shr-int/lit8 v4, v7, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 649
    const/16 v0, 0x18

    shr-int/lit8 v4, v7, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 650
    const/16 v0, 0x17

    shr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 651
    const/16 v0, 0x16

    and-int/lit16 v4, v7, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 655
    mul-int/lit8 v0, v3, 0x3

    .line 656
    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_e6

    move v0, v2

    .line 659
    :goto_83
    array-length v4, v1

    mul-int/lit8 v5, v3, 0x3

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    mul-int v5, v0, v7

    add-int/2addr v4, v5

    .line 660
    const/4 v5, 0x5

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 661
    const/4 v5, 0x4

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 662
    const/4 v5, 0x3

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 663
    const/4 v5, 0x2

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 666
    new-array v7, v4, [B

    .line 667
    array-length v4, v1

    invoke-static {v1, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    array-length v1, v1

    move v4, v2

    move v5, v1

    move v1, v2

    .line 671
    :goto_b3
    array-length v6, v8

    if-ge v1, v6, :cond_ef

    .line 673
    aget v6, v8, v1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 674
    aget v9, v8, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 675
    aget v10, v8, v1

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 677
    add-int/lit8 v11, v5, 0x1

    aput-byte v10, v7, v5

    .line 678
    add-int/lit8 v10, v11, 0x1

    aput-byte v9, v7, v11

    .line 679
    add-int/lit8 v5, v10, 0x1

    aput-byte v6, v7, v10

    .line 683
    add-int/lit8 v4, v4, 0x1

    .line 684
    if-ne v4, v3, :cond_ec

    if-eqz v0, :cond_ec

    move v4, v2

    .line 686
    :goto_dc
    if-ge v4, v0, :cond_eb

    .line 687
    add-int/lit8 v6, v5, 0x1

    aput-byte v2, v7, v5

    .line 686
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_dc

    .line 656
    :cond_e6
    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_83

    :cond_eb
    move v4, v2

    .line 671
    :cond_ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 692
    :cond_ef
    return-object v7

    .line 632
    :array_f0
    .array-data 0x1
        0x42t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x36t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static d(LS/f;)LS/f;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 729
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    invoke-interface {p0}, LS/f;->a()I

    move-result v1

    invoke-interface {p0}, LS/f;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, LS/h;->a(II)LS/f;

    move-result-object v0

    .line 731
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v1

    invoke-interface {v1, p0, v3, v3}, LS/e;->a(LS/f;II)V

    .line 732
    return-object v0
.end method

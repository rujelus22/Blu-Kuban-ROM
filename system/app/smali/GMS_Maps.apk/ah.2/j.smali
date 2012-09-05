.class public Lah/j;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([IIIII)I
    .registers 6

    const/4 v0, 0x0

    if-gez p3, :cond_d

    move p3, v0

    :cond_4
    :goto_4
    if-gez p4, :cond_12

    move p4, v0

    :cond_7
    :goto_7
    mul-int v0, p4, p1

    add-int/2addr v0, p3

    aget v0, p0, v0

    return v0

    :cond_d
    if-lt p3, p1, :cond_4

    add-int/lit8 p3, p1, -0x1

    goto :goto_4

    :cond_12
    if-lt p4, p2, :cond_7

    add-int/lit8 p4, p2, -0x1

    goto :goto_7
.end method

.method public static a(Lah/f;)Lah/f;
    .registers 11

    const/4 v2, 0x0

    invoke-interface {p0}, Lah/f;->a()I

    move-result v6

    invoke-interface {p0}, Lah/f;->b()I

    move-result v7

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v7, 0x1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    shl-int/lit8 v3, v6, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lah/f;->a([IIIIIII)V

    shl-int/lit8 v5, v6, 0x1

    shl-int/lit8 v6, v7, 0x1

    move v3, v2

    move v4, v2

    :goto_1e
    if-ge v3, v6, :cond_40

    add-int/lit8 v0, v5, -0x1

    :goto_22
    if-ltz v0, :cond_34

    add-int v7, v4, v0

    shr-int/lit8 v8, v0, 0x1

    add-int/2addr v8, v4

    aget v8, v1, v8

    add-int/lit8 v9, v7, -0x1

    aput v8, v1, v7

    aput v8, v1, v9

    add-int/lit8 v0, v0, -0x2

    goto :goto_22

    :cond_34
    add-int v0, v4, v5

    invoke-static {v1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_1e

    :cond_40
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6, v2}, Lah/h;->a([IIIZ)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lah/f;F)Lah/f;
    .registers 11

    const/4 v2, 0x0

    invoke-interface {p0}, Lah/f;->a()I

    move-result v0

    invoke-interface {p0}, Lah/f;->b()I

    move-result v1

    mul-int v8, v0, v1

    new-array v1, v8, [I

    invoke-interface {p0}, Lah/f;->a()I

    move-result v3

    invoke-interface {p0}, Lah/f;->a()I

    move-result v6

    invoke-interface {p0}, Lah/f;->b()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lah/f;->a([IIIIIII)V

    :goto_1f
    if-ge v2, v8, :cond_46

    aget v0, v1, v2

    ushr-int/lit8 v0, v0, 0x18

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

    aget v3, v1, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_46
    const/4 v0, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->o()Lah/h;

    move-result-object v2

    invoke-interface {p0}, Lah/f;->a()I

    move-result v3

    invoke-interface {p0}, Lah/f;->b()I

    move-result v4

    invoke-interface {v2, v1, v3, v4, v0}, Lah/h;->a([IIIZ)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lah/f;IIIIIII)Lah/f;
    .registers 23

    if-nez p1, :cond_3d

    if-nez p2, :cond_3d

    invoke-interface {p0}, Lah/f;->b()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_3d

    invoke-interface {p0}, Lah/f;->a()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_3d

    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_2a

    mul-int/lit8 v2, p5, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_2a

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_2a

    invoke-static {p0}, Lah/j;->b(Lah/f;)Lah/f;

    move-result-object v2

    :goto_29
    return-object v2

    :cond_2a
    mul-int/lit8 v2, p3, 0x2

    move/from16 v0, p5

    if-ne v2, v0, :cond_3d

    mul-int/lit8 v2, p4, 0x2

    move/from16 v0, p6

    if-ne v2, v0, :cond_3d

    if-nez p7, :cond_3d

    invoke-static {p0}, Lah/j;->a(Lah/f;)Lah/f;

    move-result-object v2

    goto :goto_29

    :cond_3d
    mul-int v2, p5, p6

    new-array v10, v2, [I

    mul-int v2, p3, p4

    new-array v3, v2, [I

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lah/f;->a([IIIIIII)V

    const/4 v7, 0x0

    shl-int/lit8 v2, p3, 0x10

    div-int v8, v2, p5

    shl-int/lit8 v2, p4, 0x10

    div-int v14, v2, p6

    const/4 v2, 0x0

    :goto_5e
    move/from16 v0, p6

    if-ge v2, v0, :cond_75

    const/4 v6, 0x0

    const/4 v9, 0x0

    mul-int v11, v2, p5

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v3 .. v13}, Lah/j;->a([IIIIIII[IIII)V

    add-int/2addr v7, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_75
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->o()Lah/h;

    move-result-object v3

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_8b

    const/4 v2, 0x1

    :goto_82
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v3, v10, v0, v1, v2}, Lah/h;->a([IIIZ)Lah/f;

    move-result-object v2

    goto :goto_29

    :cond_8b
    const/4 v2, 0x0

    goto :goto_82
.end method

.method public static a([IIIIIII[IIII)V
    .registers 54

    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_166

    const/4 v5, 0x1

    move/from16 v16, v5

    :goto_7
    and-int/lit8 v5, p10, 0x1

    if-eqz v5, :cond_1d0

    shr-int/lit8 v5, p5, 0x10

    add-int/lit8 v17, v5, 0x1

    shr-int/lit8 v5, p6, 0x10

    add-int/lit8 v18, v5, 0x1

    div-int v19, p5, v17

    div-int v20, p6, v18

    mul-int v21, v17, v18

    move/from16 v14, p4

    move/from16 v11, p3

    :goto_1d
    add-int/lit8 v15, p9, -0x1

    if-lez p9, :cond_1cd

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v12, v5

    move v13, v14

    :goto_28
    move/from16 v0, v18

    if-ge v12, v0, :cond_177

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

    shr-int/lit8 v22, v10, 0x10

    shr-int/lit8 v23, v13, 0x10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lah/j;->a([IIIII)I

    move-result v24

    add-int/lit8 v25, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lah/j;->a([IIIII)I

    move-result v25

    add-int/lit8 v26, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lah/j;->a([IIIII)I

    move-result v26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lah/j;->a([IIIII)I

    move-result v22

    const v23, 0xffff

    and-int v23, v23, v10

    shr-int/lit8 v23, v23, 0x8

    const v27, 0xffff

    and-int v27, v27, v13

    shr-int/lit8 v27, v27, 0x8

    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v28, v0

    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v28, v28, v29

    move/from16 v0, v27

    rsub-int v0, v0, 0x100

    move/from16 v29, v0

    mul-int v29, v29, v23

    move/from16 v0, v23

    rsub-int v0, v0, 0x100

    move/from16 v30, v0

    mul-int v30, v30, v27

    mul-int v23, v23, v27

    shr-int/lit8 v27, v24, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shr-int/lit8 v31, v24, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    shr-int/lit8 v33, v25, 0x10

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shr-int/lit8 v34, v25, 0x8

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    shr-int/lit8 v36, v26, 0x10

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    shr-int/lit8 v37, v26, 0x8

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    shr-int/lit8 v39, v22, 0x10

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    shr-int/lit8 v40, v22, 0x8

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v41, v0

    mul-int v27, v27, v28

    mul-int v36, v36, v30

    add-int v27, v27, v36

    mul-int v33, v33, v29

    add-int v27, v27, v33

    mul-int v33, v39, v23

    add-int v27, v27, v33

    add-int v9, v9, v27

    mul-int v27, v31, v28

    mul-int v31, v37, v30

    add-int v27, v27, v31

    mul-int v31, v34, v29

    add-int v27, v27, v31

    mul-int v31, v40, v23

    add-int v27, v27, v31

    add-int v8, v8, v27

    mul-int v27, v32, v28

    mul-int v31, v38, v30

    add-int v27, v27, v31

    mul-int v31, v35, v29

    add-int v27, v27, v31

    mul-int v31, v41, v23

    add-int v27, v27, v31

    add-int v7, v7, v27

    if-eqz v16, :cond_160

    shr-int/lit8 v5, v24, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v24, v25, 0x18

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shr-int/lit8 v25, v26, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shr-int/lit8 v22, v22, 0x18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    mul-int v5, v5, v28

    mul-int v25, v25, v30

    add-int v5, v5, v25

    mul-int v24, v24, v29

    add-int v5, v5, v24

    mul-int v22, v22, v23

    add-int v5, v5, v22

    :cond_160
    add-int v10, v10, v19

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_36

    :cond_166
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_7

    :cond_16b
    add-int v10, v13, v20

    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v13, v10

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v5

    goto/16 :goto_28

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

    add-int/lit8 v6, p8, 0x1

    if-eqz v16, :cond_1a5

    div-int v5, v9, v21

    shl-int/lit8 v5, v5, 0x8

    const/high16 v8, -0x100

    and-int/2addr v5, v8

    :goto_198
    or-int/2addr v5, v7

    aput v5, p7, p8

    add-int v11, v11, p5

    add-int v14, v14, p6

    move/from16 p9, v15

    move/from16 p8, v6

    goto/16 :goto_1d

    :cond_1a5
    const/high16 v5, -0x100

    goto :goto_198

    :goto_1a8
    add-int/lit8 v7, p9, -0x1

    if-lez p9, :cond_1cd

    shr-int/lit8 v8, p3, 0x10

    shr-int/lit8 v9, p4, 0x10

    if-ltz v8, :cond_1ce

    if-ltz v9, :cond_1ce

    move/from16 v0, p1

    if-ge v8, v0, :cond_1ce

    move/from16 v0, p2

    if-ge v9, v0, :cond_1ce

    add-int/lit8 v5, v6, 0x1

    mul-int v9, v9, p1

    add-int/2addr v8, v9

    aget v8, p0, v8

    aput v8, p7, v6

    :goto_1c5
    add-int p3, p3, p5

    add-int p4, p4, p6

    move/from16 p9, v7

    move v6, v5

    goto :goto_1a8

    :cond_1cd
    return-void

    :cond_1ce
    move v5, v6

    goto :goto_1c5

    :cond_1d0
    move/from16 v6, p8

    goto :goto_1a8
.end method

.method public static b(Lah/f;)Lah/f;
    .registers 17

    invoke-interface/range {p0 .. p0}, Lah/f;->a()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lah/f;->b()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lah/f;->a([IIIIIII)V

    shr-int/lit8 v6, v3, 0x1

    shr-int/lit8 v7, v7, 0x1

    mul-int v0, v6, v7

    new-array v8, v0, [I

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v5, v4

    move v4, v2

    move v2, v0

    :goto_23
    if-ge v2, v7, :cond_84

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v6, :cond_7c

    add-int v9, v4, v0

    aget v10, v1, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v1, v11

    add-int v12, v9, v3

    aget v12, v1, v12

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

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

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v11, v12, 0xff

    add-int/2addr v10, v11

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x2

    add-int v10, v5, v0

    const/high16 v11, 0xff

    and-int/2addr v11, v13

    const v12, 0xff00

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    or-int/2addr v9, v11

    aput v9, v8, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_7c
    add-int/2addr v5, v6

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_84
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v8, v6, v7, v1}, Lah/h;->a([IIIZ)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lah/f;)[B
    .registers 13

    const/4 v2, 0x0

    invoke-interface {p0}, Lah/f;->a()I

    move-result v3

    invoke-interface {p0}, Lah/f;->b()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lah/f;->a([IIIIIII)V

    mul-int v0, v3, v7

    new-array v8, v0, [I

    move v4, v2

    :goto_19
    if-ge v4, v7, :cond_31

    move v0, v2

    :goto_1c
    if-ge v0, v3, :cond_2d

    mul-int v5, v4, v3

    add-int/2addr v5, v0

    add-int/lit8 v6, v7, -0x1

    sub-int/2addr v6, v4

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    aget v5, v1, v5

    aput v5, v8, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    :cond_31
    const/16 v0, 0x36

    new-array v1, v0, [B

    fill-array-data v1, :array_f0

    const/16 v0, 0x15

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x14

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x13

    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x12

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x19

    shr-int/lit8 v4, v7, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x18

    shr-int/lit8 v4, v7, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x17

    shr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/16 v0, 0x16

    and-int/lit16 v4, v7, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    mul-int/lit8 v0, v3, 0x3

    rem-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_e6

    move v0, v2

    :goto_83
    array-length v4, v1

    mul-int/lit8 v5, v3, 0x3

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    mul-int v5, v0, v7

    add-int/2addr v4, v5

    const/4 v5, 0x5

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x4

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x2

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    new-array v7, v4, [B

    array-length v4, v1

    invoke-static {v1, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    move v4, v2

    move v5, v1

    move v1, v2

    :goto_b3
    array-length v6, v8

    if-ge v1, v6, :cond_ef

    aget v6, v8, v1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aget v9, v8, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aget v10, v8, v1

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    add-int/lit8 v11, v5, 0x1

    aput-byte v10, v7, v5

    add-int/lit8 v10, v11, 0x1

    aput-byte v9, v7, v11

    add-int/lit8 v5, v10, 0x1

    aput-byte v6, v7, v10

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_ec

    if-eqz v0, :cond_ec

    move v4, v2

    :goto_dc
    if-ge v4, v0, :cond_eb

    add-int/lit8 v6, v5, 0x1

    aput-byte v2, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_dc

    :cond_e6
    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_83

    :cond_eb
    move v4, v2

    :cond_ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_ef
    return-object v7

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

.method public static d(Lah/f;)Lah/f;
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    invoke-interface {p0}, Lah/f;->a()I

    move-result v1

    invoke-interface {p0}, Lah/f;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lah/h;->a(II)Lah/f;

    move-result-object v0

    invoke-interface {v0}, Lah/f;->c()Lah/e;

    move-result-object v1

    invoke-interface {v1, p0, v3, v3}, Lah/e;->a(Lah/f;II)V

    return-object v0
.end method

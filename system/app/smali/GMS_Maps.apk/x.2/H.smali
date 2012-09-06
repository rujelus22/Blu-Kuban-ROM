.class public Lx/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lx/u;Lx/d;ILjava/util/List;Lx/l;)Lx/l;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    if-nez p4, :cond_ea

    .line 353
    new-instance v0, Lx/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/l;-><init>(Lx/i;)V

    .line 355
    :goto_8
    invoke-virtual {p0}, Lx/u;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1c

    .line 356
    sget-object v1, Lx/m;->a:Lx/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    .line 431
    :goto_1b
    return-object v0

    .line 361
    :cond_1c
    :goto_1c
    iget v1, p0, Lx/u;->d:I

    if-ge p2, v1, :cond_dc

    .line 362
    invoke-virtual {p0, p2}, Lx/u;->j(I)I

    move-result v4

    .line 363
    invoke-virtual {p0, v4}, Lx/u;->d(I)I

    move-result v1

    .line 364
    invoke-virtual {p0, v4}, Lx/u;->e(I)I

    move-result v2

    .line 366
    invoke-virtual {p0, v4}, Lx/u;->f(I)Lx/c;

    move-result-object v6

    .line 372
    sget-object v3, Lx/i;->a:[I

    invoke-virtual {v6}, Lx/c;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_ee

    .line 361
    :cond_3b
    :goto_3b
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 374
    :pswitch_3e
    invoke-virtual {p1, v1, v4, v2}, Lx/d;->a(III)V

    goto :goto_3b

    .line 377
    :pswitch_42
    invoke-virtual {p1, v1, v4, v6}, Lx/d;->a(IILx/c;)I

    move-result v5

    .line 378
    const/4 v1, -0x1

    if-eq v5, v1, :cond_53

    .line 379
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto :goto_1b

    .line 382
    :cond_53
    invoke-virtual {p1, v4, v2, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 383
    const/4 v1, -0x1

    if-eq v5, v1, :cond_3b

    .line 384
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto :goto_1b

    .line 389
    :pswitch_64
    invoke-virtual {p1, v4, v2, v6}, Lx/d;->a(IILx/c;)I

    move-result v5

    .line 390
    const/4 v2, -0x1

    if-eq v5, v2, :cond_75

    .line 391
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto :goto_1b

    .line 394
    :cond_75
    invoke-virtual {p1, v1, v4, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 395
    const/4 v1, -0x1

    if-eq v5, v1, :cond_3b

    .line 396
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto :goto_1b

    .line 401
    :pswitch_86
    invoke-virtual {p1, v4}, Lx/d;->b(I)I

    move-result v5

    .line 402
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto :goto_1b

    .line 405
    :pswitch_94
    invoke-virtual {p1, v4, v2, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 406
    const/4 v2, -0x1

    if-eq v5, v2, :cond_a6

    .line 407
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto/16 :goto_1b

    .line 410
    :cond_a6
    invoke-virtual {p1, v1, v4, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 411
    const/4 v1, -0x1

    if-eq v5, v1, :cond_3b

    .line 412
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto/16 :goto_1b

    .line 417
    :pswitch_b8
    invoke-virtual {p1, v1, v4, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 418
    const/4 v1, -0x1

    if-eq v5, v1, :cond_ca

    .line 419
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto/16 :goto_1b

    .line 422
    :cond_ca
    invoke-virtual {p1, v4, v2, v6}, Lx/d;->b(IILx/c;)I

    move-result v5

    .line 423
    const/4 v1, -0x1

    if-eq v5, v1, :cond_3b

    .line 424
    sget-object v1, Lx/m;->c:Lx/m;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto/16 :goto_1b

    .line 431
    :cond_dc
    sget-object v1, Lx/m;->b:Lx/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lx/l;->a(Lx/m;Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/l;

    move-result-object v0

    goto/16 :goto_1b

    :cond_ea
    move-object v0, p4

    goto/16 :goto_8

    .line 372
    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_42
        :pswitch_64
        :pswitch_86
        :pswitch_94
        :pswitch_3e
        :pswitch_b8
    .end packed-switch
.end method

.method private static a(Lx/f;Ljava/util/List;)Lx/u;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Lx/f;->d()I

    move-result v2

    .line 220
    if-nez v2, :cond_8

    .line 260
    :goto_7
    return-object p0

    .line 224
    :cond_8
    new-instance v3, Lx/d;

    invoke-direct {v3, p0}, Lx/d;-><init>(Lx/z;)V

    .line 227
    mul-int/lit8 v1, v2, 0x2

    new-array v4, v1, [I

    move v1, v0

    .line 233
    :goto_12
    iget v5, p0, Lx/f;->d:I

    if-ge v0, v5, :cond_78

    .line 235
    invoke-virtual {p0, v0}, Lx/f;->j(I)I

    move-result v5

    .line 236
    invoke-virtual {p0, v5}, Lx/f;->d(I)I

    move-result v6

    .line 237
    invoke-virtual {p0, v5}, Lx/f;->e(I)I

    move-result v7

    .line 239
    invoke-virtual {p0, v5}, Lx/f;->f(I)Lx/c;

    move-result-object v8

    .line 241
    sget-object v9, Lx/i;->a:[I

    invoke-virtual {v8}, Lx/c;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_80

    .line 233
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 243
    :pswitch_34
    invoke-virtual {v3, v6, v5, v8}, Lx/d;->a(IILx/c;)I

    .line 244
    invoke-virtual {v3, v5, v7, v8}, Lx/d;->b(IILx/c;)I

    goto :goto_31

    .line 247
    :pswitch_3b
    invoke-virtual {v3, v5, v7, v8}, Lx/d;->a(IILx/c;)I

    .line 248
    invoke-virtual {v3, v6, v5, v8}, Lx/d;->b(IILx/c;)I

    goto :goto_31

    .line 251
    :pswitch_42
    invoke-virtual {v3, v5}, Lx/d;->a(I)I

    move-result v8

    .line 252
    invoke-virtual {p0, v5, v8}, Lx/f;->a(II)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 253
    aput v5, v4, v1

    .line 254
    add-int/lit8 v9, v1, 0x1

    aput v8, v4, v9

    .line 255
    add-int/lit8 v1, v1, 0x2

    .line 256
    mul-int/lit8 v8, v2, 0x2

    if-ne v1, v8, :cond_62

    .line 257
    if-eqz p1, :cond_5d

    .line 258
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_5d
    invoke-virtual {p0, v4}, Lx/f;->a([I)Lx/u;

    move-result-object p0

    goto :goto_7

    .line 263
    :cond_62
    invoke-virtual {v3, v6, v5, v7}, Lx/d;->b(III)V

    goto :goto_31

    .line 266
    :pswitch_66
    invoke-virtual {v3, v5, v7, v8}, Lx/d;->b(IILx/c;)I

    .line 267
    invoke-virtual {v3, v6, v5, v8}, Lx/d;->b(IILx/c;)I

    goto :goto_31

    .line 270
    :pswitch_6d
    invoke-virtual {v3, v6, v5, v7}, Lx/d;->a(III)V

    goto :goto_31

    .line 273
    :pswitch_71
    invoke-virtual {v3, v6, v5, v8}, Lx/d;->b(IILx/c;)I

    .line 274
    invoke-virtual {v3, v5, v7, v8}, Lx/d;->b(IILx/c;)I

    goto :goto_31

    .line 279
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tesselation could not cut all holes open."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_66
        :pswitch_6d
        :pswitch_71
    .end packed-switch
.end method

.method public static a(Lx/g;)Lx/v;
    .registers 8
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    .line 134
    :try_start_3
    invoke-virtual {p0}, Lx/g;->f()Lx/r;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lx/r;->a()I

    move-result v0

    if-nez v0, :cond_90

    .line 136
    iget v0, v1, Lx/r;->a:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_86

    .line 137
    iget v0, v1, Lx/r;->a:I

    if-lt v0, v4, :cond_1e

    invoke-virtual {v1}, Lx/r;->e()D

    move-result-wide v2

    cmpl-double v0, v2, v5

    if-nez v0, :cond_23

    .line 138
    :cond_1e
    invoke-static {}, Lx/v;->a()Lx/v;

    move-result-object v0

    .line 157
    :goto_22
    return-object v0

    .line 140
    :cond_23
    invoke-virtual {v1}, Lx/r;->b()Lx/z;

    move-result-object v0

    invoke-static {v0}, Lx/v;->a(Lx/z;)Lx/v;

    move-result-object v0

    .line 142
    iget v2, v1, Lx/r;->a:I

    if-ne v2, v4, :cond_38

    .line 143
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lx/v;->a(III)Z
    :try_end_35
    .catch Lx/k; {:try_start_3 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_5b

    goto :goto_22

    .line 159
    :catch_36
    move-exception v0

    .line 160
    throw v0

    .line 144
    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_3b
    invoke-virtual {v1, v2, v3, v4}, Lx/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v5

    if-gez v2, :cond_79

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lx/r;->a(III)D

    move-result-wide v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_79

    .line 145
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lx/v;->a(III)Z

    .line 146
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lx/v;->a(III)Z
    :try_end_5a
    .catch Lx/k; {:try_start_3b .. :try_end_5a} :catch_36
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5a} :catch_5b

    goto :goto_22

    .line 161
    :catch_5b
    move-exception v0

    .line 162
    new-instance v1, Lx/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when tessellating polygon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lx/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :cond_79
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_7c
    invoke-virtual {v0, v1, v2, v3}, Lx/v;->a(III)Z

    .line 149
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lx/v;->a(III)Z

    goto :goto_22

    .line 154
    :cond_86
    invoke-virtual {v1}, Lx/r;->c()Lx/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx/h;->a(Lx/u;Ljava/util/List;)Lx/v;

    move-result-object v0

    goto :goto_22

    .line 157
    :cond_90
    invoke-virtual {v1}, Lx/r;->d()Lx/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx/h;->a(Lx/f;Ljava/util/List;)Lx/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx/h;->a(Lx/u;Ljava/util/List;)Lx/v;
    :try_end_9d
    .catch Lx/k; {:try_start_7c .. :try_end_9d} :catch_36
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9d} :catch_5b

    move-result-object v0

    goto :goto_22
.end method

.method private static a(Lx/u;Ljava/util/List;)Lx/v;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 321
    new-instance v0, Lx/d;

    invoke-direct {v0, p0}, Lx/d;-><init>(Lx/z;)V

    invoke-static {p0, v0, v2, p1, v3}, Lx/h;->a(Lx/u;Lx/d;ILjava/util/List;Lx/l;)Lx/l;

    move-result-object v5

    .line 324
    sget-object v0, Lx/i;->b:[I

    iget-object v1, v5, Lx/l;->a:Lx/m;

    invoke-virtual {v1}, Lx/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 337
    new-instance v0, Lx/j;

    const-string v1, "Unknown subdivide result in tessellation"

    invoke-direct {v0, v1}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_20
    invoke-static {}, Lx/v;->a()Lx/v;

    move-result-object v0

    .line 339
    :goto_24
    return-object v0

    .line 329
    :pswitch_25
    iget-object v0, v5, Lx/l;->b:Lx/u;

    invoke-static {v0}, Lx/v;->a(Lx/z;)Lx/v;

    move-result-object v0

    .line 330
    iget-object v1, v5, Lx/l;->b:Lx/u;

    invoke-static {v1, v0, v3, v2}, Lx/h;->a(Lx/u;Lx/v;[II)V

    goto :goto_24

    .line 333
    :pswitch_31
    iget-object v0, v5, Lx/l;->b:Lx/u;

    iget-object v1, v5, Lx/l;->c:Lx/d;

    iget v2, v5, Lx/l;->d:I

    iget v3, v5, Lx/l;->e:I

    iget-object v4, v5, Lx/l;->f:Lx/c;

    iget-object v5, v5, Lx/l;->g:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lx/h;->a(Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/v;

    move-result-object v0

    goto :goto_24

    .line 324
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_31
    .end packed-switch
.end method

.method private static a(Lx/u;Lx/d;IILx/c;Ljava/util/List;)Lx/v;
    .registers 40
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-static/range {p0 .. p0}, Lx/v;->a(Lx/z;)Lx/v;

    move-result-object v27

    .line 456
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v28

    .line 458
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 461
    const/4 v5, 0x0

    .line 462
    const/4 v4, 0x0

    .line 464
    const/4 v3, 0x0

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p3

    move/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, p0

    .line 466
    :goto_1d
    if-nez v3, :cond_45d

    .line 467
    if-eqz v6, :cond_43

    .line 468
    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v12, 0x0

    invoke-virtual {v11, v9}, Lx/u;->b(I)D

    move-result-wide v13

    aput-wide v13, v2, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v9}, Lx/u;->c(I)D

    move-result-wide v13

    aput-wide v13, v2, v12

    const/4 v12, 0x2

    invoke-virtual {v11, v8}, Lx/u;->b(I)D

    move-result-wide v13

    aput-wide v13, v2, v12

    const/4 v12, 0x3

    invoke-virtual {v11, v8}, Lx/u;->c(I)D

    move-result-wide v13

    aput-wide v13, v2, v12

    .line 470
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_43
    if-le v9, v8, :cond_b4

    move/from16 v22, v8

    .line 475
    :goto_47
    if-le v9, v8, :cond_b7

    move v2, v9

    .line 476
    :goto_4a
    const/16 v16, 0x0

    .line 477
    const/4 v15, 0x0

    .line 482
    const/4 v12, 0x0

    .line 490
    move/from16 v0, v22

    invoke-virtual {v11, v0, v2}, Lx/u;->g(II)I

    move-result v13

    if-nez v13, :cond_b9

    .line 491
    const/4 v12, 0x1

    .line 492
    invoke-virtual {v11, v2}, Lx/u;->d(I)I

    move-result v14

    .line 493
    invoke-virtual {v11, v2}, Lx/u;->e(I)I

    move-result v13

    move/from16 v21, v22

    move/from16 v23, v13

    move/from16 v24, v22

    move v13, v14

    .line 507
    :goto_66
    if-eqz v12, :cond_123

    .line 508
    move/from16 v0, v24

    invoke-virtual {v11, v0, v13}, Lx/u;->b(II)Lx/u;

    move-result-object v14

    .line 509
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lx/u;->b(II)Lx/u;

    move-result-object v13

    .line 510
    new-instance v12, Lx/d;

    invoke-direct {v12, v14}, Lx/d;-><init>(Lx/z;)V

    .line 511
    new-instance v2, Lx/d;

    invoke-direct {v2, v13}, Lx/d;-><init>(Lx/z;)V

    .line 513
    invoke-virtual/range {v27 .. v27}, Lx/v;->b()V

    .line 683
    :goto_83
    move/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v14, v12, v0, v6, v1}, Lx/h;->a(Lx/u;Lx/d;ILjava/util/List;Lx/l;)Lx/l;

    move-result-object v12

    .line 684
    move-object/from16 v0, v25

    invoke-static {v13, v2, v15, v6, v0}, Lx/h;->a(Lx/u;Lx/d;ILjava/util/List;Lx/l;)Lx/l;

    move-result-object v2

    .line 687
    if-eqz v5, :cond_35a

    .line 688
    invoke-virtual {v14}, Lx/u;->e()I

    move-result v15

    .line 689
    iget-object v14, v12, Lx/l;->h:[I

    if-eqz v14, :cond_a0

    iget-object v14, v12, Lx/l;->h:[I

    array-length v14, v14

    if-ge v14, v15, :cond_a4

    .line 690
    :cond_a0
    new-array v14, v15, [I

    iput-object v14, v12, Lx/l;->h:[I

    .line 692
    :cond_a4
    const/4 v14, 0x0

    :goto_a5
    if-ge v14, v15, :cond_361

    .line 693
    iget-object v0, v12, Lx/l;->h:[I

    move-object/from16 v16, v0

    add-int v17, v24, v14

    aget v17, v5, v17

    aput v17, v16, v14

    .line 692
    add-int/lit8 v14, v14, 0x1

    goto :goto_a5

    :cond_b4
    move/from16 v22, v9

    .line 474
    goto :goto_47

    :cond_b7
    move v2, v8

    .line 475
    goto :goto_4a

    .line 494
    :cond_b9
    invoke-virtual {v11, v2}, Lx/u;->d(I)I

    move-result v13

    move/from16 v0, v22

    invoke-virtual {v11, v0, v13}, Lx/u;->g(II)I

    move-result v13

    if-nez v13, :cond_d1

    .line 495
    const/4 v12, 0x1

    .line 496
    invoke-virtual {v11, v2}, Lx/u;->d(I)I

    move-result v13

    move/from16 v21, v22

    move/from16 v23, v2

    move/from16 v24, v22

    goto :goto_66

    .line 497
    :cond_d1
    invoke-virtual {v11, v2}, Lx/u;->e(I)I

    move-result v13

    move/from16 v0, v22

    invoke-virtual {v11, v0, v13}, Lx/u;->g(II)I

    move-result v13

    if-nez v13, :cond_eb

    .line 498
    const/4 v12, 0x1

    .line 499
    invoke-virtual {v11, v2}, Lx/u;->e(I)I

    move-result v13

    move/from16 v21, v22

    move/from16 v23, v13

    move/from16 v24, v22

    move v13, v2

    goto/16 :goto_66

    .line 500
    :cond_eb
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lx/u;->d(I)I

    move-result v13

    invoke-virtual {v11, v13, v2}, Lx/u;->g(II)I

    move-result v13

    if-nez v13, :cond_107

    .line 501
    const/4 v12, 0x1

    .line 502
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lx/u;->d(I)I

    move-result v13

    move/from16 v21, v13

    move/from16 v23, v2

    move/from16 v24, v22

    move v13, v2

    goto/16 :goto_66

    .line 503
    :cond_107
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lx/u;->e(I)I

    move-result v13

    invoke-virtual {v11, v13, v2}, Lx/u;->g(II)I

    move-result v13

    if-nez v13, :cond_465

    .line 504
    const/4 v12, 0x1

    .line 505
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lx/u;->e(I)I

    move-result v13

    move/from16 v21, v22

    move/from16 v23, v2

    move/from16 v24, v13

    move v13, v2

    goto/16 :goto_66

    .line 517
    :cond_123
    move/from16 v0, v22

    invoke-virtual {v11, v0, v2}, Lx/u;->b(II)Lx/u;

    move-result-object v17

    .line 518
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1, v2}, Lx/d;->a(Lx/u;II)Lx/d;

    move-result-object v15

    .line 519
    sub-int v12, v9, v22

    const/4 v13, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lx/u;->h(II)I

    move-result v19

    .line 524
    move/from16 v0, v22

    invoke-virtual {v11, v2, v0}, Lx/u;->b(II)Lx/u;

    move-result-object v16

    .line 525
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v10, v0, v2, v1}, Lx/d;->a(Lx/u;II)Lx/d;

    move-result-object v14

    .line 526
    sub-int v12, v2, v22

    add-int/lit8 v29, v12, -0x1

    .line 527
    move/from16 v0, v22

    if-gt v8, v0, :cond_17d

    move/from16 v20, v8

    .line 528
    :goto_152
    move/from16 v0, v22

    if-gt v9, v0, :cond_182

    move v12, v9

    .line 529
    :goto_157
    const/4 v13, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Lx/u;->h(II)I

    move-result v18

    .line 531
    invoke-virtual {v11, v9}, Lx/u;->d(I)I

    move-result v30

    .line 532
    invoke-virtual {v11, v9}, Lx/u;->e(I)I

    move-result v13

    .line 534
    sget-object v31, Lx/i;->a:[I

    invoke-virtual {v7}, Lx/c;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_46e

    move-object v2, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    goto/16 :goto_83

    .line 527
    :cond_17d
    sub-int v12, v8, v29

    move/from16 v20, v12

    goto :goto_152

    .line 528
    :cond_182
    sub-int v12, v9, v29

    goto :goto_157

    .line 536
    :pswitch_185
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :pswitch_18d
    sub-int v2, v8, v22

    sub-int v13, v9, v22

    invoke-virtual {v15, v2, v13}, Lx/d;->d(II)V

    .line 542
    move/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Lx/d;->d(II)V

    move-object v2, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    .line 543
    goto/16 :goto_83

    .line 548
    :pswitch_1a5
    move/from16 v0, v30

    move/from16 v1, v22

    if-lt v0, v1, :cond_1d2

    move/from16 v0, v30

    if-gt v0, v2, :cond_1d2

    .line 552
    add-int/lit8 v13, v19, 0x1

    .line 556
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_1c3

    .line 557
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    :cond_1c3
    add-int/lit8 v2, v18, 0x1

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    move-object/from16 v33, v16

    move/from16 v16, v13

    move-object/from16 v13, v33

    goto/16 :goto_83

    .line 561
    :cond_1d2
    sub-int v2, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_1e6

    .line 562
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    :cond_1e6
    add-int/lit8 v12, v19, 0x1

    .line 566
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v13, v16

    move/from16 v16, v12

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    .line 568
    goto/16 :goto_83

    .line 572
    :pswitch_1f5
    move/from16 v0, v30

    move/from16 v1, v22

    if-lt v0, v1, :cond_222

    move/from16 v0, v30

    if-gt v0, v2, :cond_222

    .line 576
    sub-int v2, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_213

    .line 577
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :cond_213
    add-int/lit8 v12, v19, 0x1

    .line 583
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v13, v16

    move/from16 v16, v12

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    goto/16 :goto_83

    .line 585
    :cond_222
    add-int/lit8 v13, v19, 0x1

    .line 587
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_236

    .line 588
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :cond_236
    add-int/lit8 v2, v18, 0x1

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    move-object/from16 v33, v16

    move/from16 v16, v13

    move-object/from16 v13, v33

    .line 592
    goto/16 :goto_83

    .line 597
    :pswitch_245
    move/from16 v0, v30

    move/from16 v1, v22

    if-lt v0, v1, :cond_2a0

    move/from16 v0, v30

    if-gt v0, v2, :cond_2a0

    .line 600
    move/from16 v0, v30

    invoke-virtual {v10, v0, v9}, Lx/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 606
    sub-int v2, v8, v22

    sub-int v13, v9, v22

    invoke-virtual {v15, v2, v13}, Lx/d;->d(II)V

    .line 611
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_270

    .line 612
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 614
    :cond_270
    add-int/lit8 v2, v18, 0x1

    move-object v12, v15

    move-object/from16 v13, v16

    move v15, v2

    move/from16 v16, v19

    move-object v2, v14

    move-object/from16 v14, v17

    goto/16 :goto_83

    .line 621
    :cond_27d
    sub-int v2, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_291

    .line 622
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_291
    add-int/lit8 v12, v19, 0x1

    .line 627
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v13, v16

    move/from16 v16, v12

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    goto/16 :goto_83

    .line 630
    :cond_2a0
    move/from16 v0, v30

    invoke-virtual {v10, v0, v9}, Lx/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_2cf

    .line 631
    sub-int v2, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v13, Lx/c;->f:Lx/c;

    if-eq v2, v13, :cond_2bc

    .line 632
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 634
    :cond_2bc
    add-int/lit8 v2, v19, 0x1

    .line 636
    move/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Lx/d;->d(II)V

    move-object v12, v15

    move-object/from16 v13, v16

    move/from16 v15, v18

    move/from16 v16, v2

    move-object v2, v14

    move-object/from16 v14, v17

    goto/16 :goto_83

    .line 638
    :cond_2cf
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lx/u;->f(I)Lx/c;

    move-result-object v2

    sget-object v12, Lx/c;->f:Lx/c;

    if-eq v2, v12, :cond_2e1

    .line 639
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_2e1
    add-int/lit8 v2, v18, 0x1

    .line 643
    add-int/lit8 v12, v19, 0x1

    move-object/from16 v13, v16

    move/from16 v16, v12

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    .line 646
    goto/16 :goto_83

    .line 652
    :pswitch_2f0
    move/from16 v0, v22

    if-lt v13, v0, :cond_31d

    if-gt v13, v2, :cond_31d

    .line 655
    sub-int v2, v13, v22

    sub-int v12, v9, v22

    invoke-virtual {v15, v2, v12}, Lx/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_315

    .line 656
    sub-int v2, v13, v22

    sub-int v12, v9, v22

    sget-object v13, Lx/c;->f:Lx/c;

    invoke-virtual {v15, v2, v12, v13}, Lx/d;->b(IILx/c;)I

    move-result v2

    .line 658
    const/4 v12, -0x1

    if-eq v2, v12, :cond_34b

    .line 660
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_315
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_31d
    move/from16 v0, v22

    if-gt v13, v0, :cond_33d

    move v2, v13

    :goto_322
    invoke-virtual {v14, v2, v12}, Lx/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_343

    .line 667
    move/from16 v0, v22

    if-gt v13, v0, :cond_340

    :goto_32c
    sget-object v2, Lx/c;->f:Lx/c;

    invoke-virtual {v14, v13, v12, v2}, Lx/d;->b(IILx/c;)I

    move-result v2

    .line 669
    const/4 v12, -0x1

    if-eq v2, v12, :cond_34b

    .line 671
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_33d
    sub-int v2, v13, v29

    goto :goto_322

    .line 667
    :cond_340
    sub-int v13, v13, v29

    goto :goto_32c

    .line 674
    :cond_343
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Impossible case in cutAndTessellate."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    :cond_34b
    add-int/lit8 v12, v19, 0x1

    .line 678
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v13, v16

    move/from16 v16, v12

    move-object v12, v15

    move v15, v2

    move-object v2, v14

    move-object/from16 v14, v17

    goto/16 :goto_83

    .line 696
    :cond_35a
    const/4 v14, 0x0

    iput-object v14, v12, Lx/l;->h:[I

    .line 697
    add-int v14, v4, v24

    iput v14, v12, Lx/l;->i:I

    .line 701
    :cond_361
    invoke-virtual {v13}, Lx/u;->e()I

    move-result v14

    .line 702
    iget-object v13, v2, Lx/l;->h:[I

    if-eqz v13, :cond_36e

    iget-object v13, v2, Lx/l;->h:[I

    array-length v13, v13

    if-ge v13, v14, :cond_372

    .line 703
    :cond_36e
    new-array v13, v14, [I

    iput-object v13, v2, Lx/l;->h:[I

    .line 705
    :cond_372
    if-eqz v5, :cond_3b5

    .line 706
    const/4 v13, 0x0

    iget-object v15, v2, Lx/l;->h:[I

    const/16 v16, 0x0

    add-int/lit8 v17, v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v5, v13, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    array-length v13, v5

    move/from16 v0, v23

    if-ge v0, v13, :cond_394

    .line 708
    iget-object v13, v2, Lx/l;->h:[I

    add-int/lit8 v15, v21, 0x1

    sub-int v14, v14, v21

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, v23

    invoke-static {v5, v0, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    :cond_394
    iget-object v13, v12, Lx/l;->a:Lx/m;

    sget-object v14, Lx/m;->c:Lx/m;

    if-ne v13, v14, :cond_45e

    iget-object v13, v2, Lx/l;->a:Lx/m;

    sget-object v14, Lx/m;->c:Lx/m;

    if-eq v13, v14, :cond_45e

    .line 731
    :goto_3a0
    sget-object v13, Lx/i;->b:[I

    iget-object v14, v2, Lx/l;->a:Lx/m;

    invoke-virtual {v14}, Lx/m;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_47e

    .line 743
    new-instance v2, Lx/j;

    const-string v3, "Unknown subdivide result in tessellation"

    invoke-direct {v2, v3}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 712
    :cond_3b5
    const/4 v13, 0x0

    :goto_3b6
    add-int/lit8 v15, v21, 0x1

    if-ge v13, v15, :cond_3c3

    .line 713
    iget-object v15, v2, Lx/l;->h:[I

    add-int v16, v13, v4

    aput v16, v15, v13

    .line 712
    add-int/lit8 v13, v13, 0x1

    goto :goto_3b6

    .line 715
    :cond_3c3
    sub-int v13, v23, v21

    add-int/lit8 v13, v13, -0x1

    add-int v15, v13, v4

    .line 716
    add-int/lit8 v13, v21, 0x1

    :goto_3cb
    if-ge v13, v14, :cond_394

    .line 717
    iget-object v0, v2, Lx/l;->h:[I

    move-object/from16 v16, v0

    add-int v17, v13, v15

    aput v17, v16, v13

    .line 716
    add-int/lit8 v13, v13, 0x1

    goto :goto_3cb

    :pswitch_3d8
    move-object v13, v2

    .line 748
    :goto_3d9
    sget-object v2, Lx/i;->b:[I

    iget-object v14, v12, Lx/l;->a:Lx/m;

    invoke-virtual {v14}, Lx/m;->ordinal()I

    move-result v14

    aget v2, v2, v14

    packed-switch v2, :pswitch_data_488

    .line 778
    new-instance v2, Lx/j;

    const-string v3, "Unknown subdivide result in tessellation"

    invoke-direct {v2, v3}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :pswitch_3ee
    iget-object v13, v2, Lx/l;->b:Lx/u;

    iget-object v14, v2, Lx/l;->h:[I

    iget v15, v2, Lx/l;->i:I

    move-object/from16 v0, v27

    invoke-static {v13, v0, v14, v15}, Lx/h;->a(Lx/u;Lx/v;[II)V

    move-object v13, v2

    .line 736
    goto :goto_3d9

    .line 739
    :pswitch_3fb
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 740
    const/4 v2, 0x0

    move-object v13, v2

    .line 741
    goto :goto_3d9

    .line 750
    :pswitch_403
    iget-object v10, v12, Lx/l;->b:Lx/u;

    .line 751
    iget-object v9, v12, Lx/l;->c:Lx/d;

    .line 752
    iget v8, v12, Lx/l;->d:I

    .line 753
    iget v7, v12, Lx/l;->e:I

    .line 754
    iget-object v6, v12, Lx/l;->f:Lx/c;

    .line 755
    iget-object v5, v12, Lx/l;->g:Ljava/util/List;

    .line 756
    iget-object v4, v12, Lx/l;->h:[I

    .line 757
    iget v2, v12, Lx/l;->i:I

    move/from16 v33, v3

    move v3, v2

    move/from16 v2, v33

    :goto_418
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    .line 780
    goto/16 :goto_1d

    .line 760
    :pswitch_427
    iget-object v2, v12, Lx/l;->b:Lx/u;

    iget-object v14, v12, Lx/l;->h:[I

    const/4 v15, 0x0

    move-object/from16 v0, v27

    invoke-static {v2, v0, v14, v15}, Lx/h;->a(Lx/u;Lx/v;[II)V

    .line 763
    :pswitch_431
    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_453

    .line 764
    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/l;

    .line 765
    iget-object v10, v2, Lx/l;->b:Lx/u;

    .line 766
    iget-object v9, v2, Lx/l;->c:Lx/d;

    .line 767
    iget v8, v2, Lx/l;->d:I

    .line 768
    iget v7, v2, Lx/l;->e:I

    .line 769
    iget-object v6, v2, Lx/l;->f:Lx/c;

    .line 770
    iget-object v5, v2, Lx/l;->g:Ljava/util/List;

    .line 771
    iget-object v4, v2, Lx/l;->h:[I

    .line 772
    iget v2, v2, Lx/l;->i:I

    move/from16 v33, v3

    move v3, v2

    move/from16 v2, v33

    .line 773
    goto :goto_418

    .line 774
    :cond_453
    const/4 v2, 0x1

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    .line 776
    goto :goto_418

    .line 781
    :cond_45d
    return-object v27

    :cond_45e
    move-object/from16 v33, v2

    move-object v2, v12

    move-object/from16 v12, v33

    goto/16 :goto_3a0

    :cond_465
    move/from16 v21, v22

    move/from16 v23, v2

    move v13, v2

    move/from16 v24, v22

    goto/16 :goto_66

    .line 534
    :pswitch_data_46e
    .packed-switch 0x1
        :pswitch_1a5
        :pswitch_1f5
        :pswitch_18d
        :pswitch_245
        :pswitch_185
        :pswitch_2f0
    .end packed-switch

    .line 731
    :pswitch_data_47e
    .packed-switch 0x1
        :pswitch_3d8
        :pswitch_3ee
        :pswitch_3fb
    .end packed-switch

    .line 748
    :pswitch_data_488
    .packed-switch 0x1
        :pswitch_431
        :pswitch_427
        :pswitch_403
    .end packed-switch
.end method

.method private static a(Lx/u;Lx/v;[II)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 819
    invoke-virtual {p0}, Lx/u;->e()I

    move-result v12

    .line 820
    const/4 v0, 0x3

    if-ge v12, v0, :cond_8

    .line 877
    :cond_7
    return-void

    .line 823
    :cond_8
    invoke-virtual {p0}, Lx/u;->c()Lx/z;

    move-result-object v13

    .line 825
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lx/u;->j(I)I

    move-result v0

    .line 826
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lx/u;->j(I)I

    move-result v2

    .line 829
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    invoke-virtual {v13, v1}, Lx/z;->b([I)V

    .line 830
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-virtual {v13, v0}, Lx/z;->b([I)V

    .line 832
    const/4 v0, 0x2

    move v11, v0

    :goto_2a
    if-ge v11, v12, :cond_7

    .line 834
    invoke-virtual {p0, v11}, Lx/u;->j(I)I

    move-result v1

    .line 835
    invoke-virtual {p0, v11}, Lx/u;->l(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 837
    invoke-virtual {v13}, Lx/z;->f()I

    move-result v3

    .line 838
    :goto_3a
    iget v0, v13, Lx/z;->d:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_5b

    invoke-virtual {p0, v1, v2, v3}, Lx/u;->a(III)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_5b

    move-object v0, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 840
    invoke-static/range {v0 .. v5}, Lx/h;->a(Lx/v;III[II)V

    .line 841
    invoke-virtual {v13}, Lx/z;->b()V

    .line 843
    invoke-virtual {v13}, Lx/z;->f()I

    move-result v0

    move v2, v3

    move v3, v0

    goto :goto_3a

    .line 846
    :cond_5b
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lx/z;->b([I)V

    .line 832
    :goto_64
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    move v2, v1

    goto :goto_2a

    .line 847
    :cond_69
    invoke-virtual {p0, v11}, Lx/u;->m(I)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 849
    invoke-virtual {v13}, Lx/z;->f()I

    move-result v3

    move v4, v2

    .line 850
    :goto_74
    iget v0, v13, Lx/z;->d:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_96

    invoke-virtual {p0, v3, v4, v1}, Lx/u;->a(III)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_96

    move-object v2, p1

    move v5, v1

    move-object/from16 v6, p2

    move/from16 v7, p3

    .line 852
    invoke-static/range {v2 .. v7}, Lx/h;->a(Lx/v;III[II)V

    .line 853
    invoke-virtual {v13}, Lx/z;->b()V

    .line 855
    invoke-virtual {v13}, Lx/z;->f()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_74

    .line 858
    :cond_96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lx/z;->b([I)V

    goto :goto_64

    .line 861
    :cond_a0
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lx/z;->j(I)I

    move-result v3

    .line 862
    const/4 v0, 0x1

    move v10, v0

    :goto_a7
    iget v0, v13, Lx/z;->d:I

    if-ge v10, v0, :cond_d2

    .line 864
    invoke-virtual {v13, v10}, Lx/z;->j(I)I

    move-result v2

    .line 865
    invoke-virtual {p0, v3, v2, v1}, Lx/u;->a(III)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_c6

    move-object v0, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 866
    invoke-static/range {v0 .. v5}, Lx/h;->a(Lx/v;III[II)V

    .line 862
    :goto_c1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v3, v2

    goto :goto_a7

    :cond_c6
    move-object v4, p1

    move v5, v3

    move v6, v2

    move v7, v1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 868
    invoke-static/range {v4 .. v9}, Lx/h;->a(Lx/v;III[II)V

    goto :goto_c1

    .line 872
    :cond_d2
    invoke-virtual {v13}, Lx/z;->a()V

    .line 873
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v3, v0, v2

    invoke-virtual {v13, v0}, Lx/z;->b([I)V

    .line 874
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {v13, v0}, Lx/z;->b([I)V

    goto/16 :goto_64
.end method

.method private static a(Lx/v;III[II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    if-eqz p4, :cond_c

    .line 886
    aget v0, p4, p1

    aget v1, p4, p2

    aget v2, p4, p3

    invoke-virtual {p0, v0, v1, v2}, Lx/v;->a(III)Z

    .line 890
    :goto_b
    return-void

    .line 888
    :cond_c
    add-int v0, p1, p5

    add-int v1, p2, p5

    add-int v2, p3, p5

    invoke-virtual {p0, v0, v1, v2}, Lx/v;->a(III)Z

    goto :goto_b
.end method

.method public static b(Lx/g;)Lx/n;
    .registers 2
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lx/g;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    sget-object v0, Lx/n;->a:Lx/n;

    .line 185
    :goto_8
    return-object v0

    .line 176
    :cond_9
    invoke-virtual {p0}, Lx/g;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    sget-object v0, Lx/n;->b:Lx/n;

    goto :goto_8

    .line 179
    :cond_12
    invoke-virtual {p0}, Lx/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 180
    sget-object v0, Lx/n;->d:Lx/n;

    goto :goto_8

    .line 182
    :cond_1b
    invoke-virtual {p0}, Lx/g;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 183
    sget-object v0, Lx/n;->c:Lx/n;

    goto :goto_8

    .line 185
    :cond_24
    const/4 v0, 0x0

    goto :goto_8
.end method

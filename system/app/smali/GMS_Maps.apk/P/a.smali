.class public Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lq/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lp/a;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lp/a;->b:Lq/b;

    .line 46
    return-void
.end method

.method static a(Lo/x;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lo/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 393
    invoke-virtual {p0, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->y()I

    move-result v1

    if-le v1, p1, :cond_12

    .line 397
    :goto_11
    return v0

    .line 392
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_15
    invoke-virtual {p0}, Lo/x;->k()I

    move-result v0

    goto :goto_11
.end method

.method static a(ILp/C;)Ljava/util/ArrayList;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Lp/C;->d()[Lq/f;

    move-result-object v10

    array-length v11, v10

    move v8, v7

    :goto_d
    if-ge v8, v11, :cond_4b

    aget-object v3, v10, v8

    .line 230
    invoke-virtual {v3}, Lq/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 231
    new-instance v0, Lo/K;

    const/4 v1, 0x3

    invoke-virtual {v3}, Lq/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lq/f;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lo/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_d

    .line 233
    :cond_2e
    sget-object v0, Lq/e;->a:Lq/f;

    if-eq v3, v0, :cond_2a

    .line 235
    packed-switch p0, :pswitch_data_4c

    move v1, v7

    .line 243
    :goto_36
    new-instance v0, Lo/K;

    invoke-virtual {v3}, Lq/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lq/f;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lo/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 238
    :pswitch_49
    const/4 v1, 0x2

    .line 239
    goto :goto_36

    .line 247
    :cond_4b
    return-object v9

    .line 235
    :pswitch_data_4c
    .packed-switch 0x7
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method static a(Lq/b;Lp/A;)Ljava/util/LinkedList;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 125
    :goto_6
    iget-object v2, p1, Lp/A;->c:[Lq/e;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 126
    new-instance v2, Lp/C;

    invoke-direct {v2, p0, p1, v0}, Lp/C;-><init>(Lq/b;Lp/A;I)V

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v2}, Lp/C;->f()I

    move-result v0

    goto :goto_6

    .line 132
    :cond_18
    return-object v1
.end method

.method static a(Lp/A;Ljava/util/List;Ljava/util/List;Ln/W;)Ljava/util/List;
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lp/A;->c:[Lq/e;

    move-object/from16 v21, v0

    .line 202
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_19
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_96

    .line 205
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lp/C;

    .line 206
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lp/h;

    .line 207
    invoke-virtual {v9}, Lp/C;->e()I

    move-result v3

    .line 208
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lp/C;->a(Ln/W;)D

    move-result-wide v4

    double-to-int v8, v4

    .line 209
    if-nez v3, :cond_91

    const/4 v2, 0x0

    .line 210
    :goto_44
    aget-object v3, v21, v3

    .line 211
    invoke-static {v2}, Lp/b;->a(Lq/e;)F

    move-result v10

    .line 212
    invoke-static {v3}, Lp/b;->b(Lq/e;)F

    move-result v11

    .line 214
    if-nez v2, :cond_51

    move v10, v11

    .line 215
    :cond_51
    new-instance v2, Lo/M;

    invoke-virtual {v9}, Lp/C;->i()Ln/Q;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lp/h;->a()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lp/h;->b()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v9}, Lp/C;->a()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lp/h;->c()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v16 .. v16}, Lp/h;->d()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v18}, Lo/M;-><init>(Ln/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 220
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Ln/W;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 204
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_19

    .line 209
    :cond_91
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v21, v2

    goto :goto_44

    .line 223
    :cond_96
    return-object v20
.end method

.method private static a(Lo/I;IIII)Lo/I;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-virtual/range {p0 .. p0}, Lo/I;->t()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 358
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/K;

    .line 361
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 364
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lo/I;->v()Ljava/util/List;

    move-result-object v3

    .line 365
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/j;

    .line 367
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 369
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lo/I;->j()Lo/I;

    move-result-object v3

    .line 370
    if-nez v3, :cond_a4

    const/4 v9, 0x0

    .line 371
    :goto_5f
    if-nez v3, :cond_a9

    const/4 v10, 0x0

    .line 372
    :goto_62
    new-instance v3, Lo/M;

    invoke-virtual/range {p0 .. p0}, Lo/I;->a()Ln/Q;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/I;->b()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lo/I;->c()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lo/I;->d()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lo/I;->g()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lo/I;->h()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lo/I;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lo/I;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lo/I;->n()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lo/I;->u()Ljava/util/List;

    move-result-object v18

    move/from16 v8, p2

    invoke-direct/range {v3 .. v19}, Lo/M;-><init>(Ln/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 377
    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lo/I;->a(Lo/M;III)Lo/I;

    move-result-object v3

    return-object v3

    .line 370
    :cond_a4
    invoke-virtual {v3}, Lo/I;->e()I

    move-result v9

    goto :goto_5f

    .line 371
    :cond_a9
    invoke-virtual {v3}, Lo/I;->f()I

    move-result v10

    goto :goto_62
.end method

.method private static a(Lo/I;Ln/W;)Lo/M;
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p0}, Lo/I;->t()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 330
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/K;

    .line 333
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 336
    :cond_31
    invoke-virtual/range {p1 .. p1}, Ln/W;->a()I

    move-result v6

    .line 339
    add-int/lit8 v1, v6, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ln/W;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ln/W;->b()Ln/Q;

    move-result-object v2

    invoke-static {v1, v2}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v1

    double-to-float v9, v1

    .line 346
    const/4 v14, 0x0

    .line 347
    new-instance v1, Lo/M;

    invoke-virtual/range {p1 .. p1}, Ln/W;->b()Ln/Q;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lo/I;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lo/I;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lo/I;->u()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move v10, v9

    invoke-direct/range {v1 .. v17}, Lo/M;-><init>(Ln/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static a(ILo/x;IILjava/util/ArrayList;Ln/W;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-static {p1, p0}, Lp/a;->a(Lo/x;I)I

    move-result v1

    .line 270
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v0

    if-lt v1, v0, :cond_c

    .line 271
    const/4 v0, 0x0

    .line 317
    :goto_b
    return v0

    .line 274
    :cond_c
    invoke-virtual {p1, v1}, Lo/x;->a(I)Lo/I;

    move-result-object v2

    .line 277
    invoke-virtual {p1}, Lo/x;->n()Ln/U;

    move-result-object v4

    .line 278
    add-int/lit8 v0, p0, 0x1

    .line 279
    :goto_16
    invoke-virtual {v2}, Lo/I;->y()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 280
    invoke-virtual {v4, v0}, Ln/U;->a(I)Ln/Q;

    move-result-object v3

    invoke-virtual {p5, v3}, Ln/W;->a(Ln/Q;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    move v0, v1

    .line 284
    :goto_27
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v2

    if-ge v0, v2, :cond_79

    .line 285
    invoke-virtual {p1, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v5

    .line 287
    invoke-virtual {p5}, Ln/W;->a()I

    move-result v6

    .line 289
    if-ne v0, v1, :cond_68

    move v2, p3

    move v3, p2

    .line 300
    :goto_39
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7, v6, v3, v2}, Lp/a;->a(Lo/I;IIII)Lo/I;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v5}, Lo/I;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 306
    invoke-virtual {p1}, Lo/x;->k()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 309
    invoke-virtual {p1, v2}, Lo/x;->a(I)Lo/I;

    move-result-object v2

    invoke-virtual {v2}, Lo/I;->y()I

    move-result v2

    .line 313
    :goto_58
    invoke-virtual {v5}, Lo/I;->y()I

    move-result v3

    :goto_5c
    if-ge v3, v2, :cond_76

    .line 314
    invoke-virtual {v4, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {p5, v5}, Ln/W;->a(Ln/Q;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 293
    :cond_68
    invoke-virtual {v5}, Lo/I;->e()I

    move-result v3

    .line 294
    invoke-virtual {v5}, Lo/I;->f()I

    move-result v2

    goto :goto_39

    .line 311
    :cond_71
    invoke-virtual {v4}, Ln/U;->b()I

    move-result v2

    goto :goto_58

    .line 284
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 317
    :cond_79
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method a(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/C;

    .line 144
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lp/a;->a(ILp/C;)Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    new-instance v5, Lp/i;

    iget-object v6, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lp/C;->g()Lq/e;

    move-result-object v0

    invoke-static {v0}, Lp/b;->c(Lq/e;)I

    move-result v0

    invoke-direct {v5, v6, v2, v0}, Lp/i;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 149
    :goto_2c
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_a4

    .line 150
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lp/C;

    .line 151
    invoke-virtual {v1}, Lp/C;->b()I

    move-result v5

    .line 152
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/C;

    invoke-static {v5, v0}, Lp/a;->a(ILp/C;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    packed-switch v5, :pswitch_data_a6

    .line 149
    :goto_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2c

    .line 157
    :pswitch_4e
    new-instance v6, Lp/n;

    iget-object v7, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lp/C;->c()I

    move-result v1

    invoke-direct {v6, v7, v0, v5, v1}, Lp/n;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 161
    :pswitch_5d
    new-instance v5, Lp/m;

    iget-object v6, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lp/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lp/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 164
    :pswitch_6c
    new-instance v5, Lp/l;

    iget-object v6, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lp/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lp/l;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 167
    :pswitch_7b
    new-instance v5, Lp/o;

    iget-object v6, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lp/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lp/o;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 170
    :pswitch_8a
    new-instance v1, Lp/k;

    iget-object v5, p0, Lp/a;->a:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Lp/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 173
    :pswitch_95
    new-instance v5, Lp/j;

    iget-object v6, p0, Lp/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lp/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lp/j;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 180
    :cond_a4
    return-object v3

    .line 153
    nop

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_8a
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_7b
        :pswitch_5d
        :pswitch_6c
        :pswitch_95
    .end packed-switch
.end method

.method public a(Lp/A;Lo/P;Lo/x;)Lo/x;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 60
    new-instance v5, Ln/W;

    invoke-direct {v5}, Ln/W;-><init>()V

    .line 63
    iget-object v1, p0, Lp/a;->b:Lq/b;

    invoke-static {v1, p1}, Lp/a;->a(Lq/b;Lp/A;)Ljava/util/LinkedList;

    move-result-object v1

    .line 64
    new-instance v2, Lp/D;

    invoke-direct {v2, p1}, Lp/D;-><init>(Lp/A;)V

    invoke-virtual {v2, v1}, Lp/D;->a(Ljava/util/LinkedList;)V

    .line 65
    invoke-virtual {p0, v1}, Lp/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 66
    invoke-static {p1, v1, v2, v5}, Lp/a;->a(Lp/A;Ljava/util/List;Ljava/util/List;Ln/W;)Ljava/util/List;

    move-result-object v8

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    move v3, v0

    move v2, v0

    .line 72
    :goto_29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4e

    .line 73
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/M;

    .line 74
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/M;

    invoke-static {v1, v7, v2, v3}, Lo/I;->a(Lo/M;III)Lo/I;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0}, Lo/M;->f()I

    move-result v2

    .line 77
    invoke-virtual {v0}, Lo/M;->g()I

    move-result v3

    .line 72
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_29

    .line 80
    :cond_4e
    invoke-virtual {v5}, Ln/W;->b()Ln/Q;

    .line 85
    invoke-virtual {v5}, Ln/W;->a()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 86
    iget-object v0, p1, Lp/A;->b:Lp/d;

    iget v0, v0, Lp/d;->e:I

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lp/a;->a(ILo/x;IILjava/util/ArrayList;Ln/W;)Z

    move-result v0

    .line 91
    if-nez v0, :cond_9b

    .line 92
    invoke-virtual {p3}, Lo/x;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lo/x;->a(I)Lo/I;

    move-result-object v0

    invoke-static {v0, v5}, Lp/a;->a(Lo/I;Ln/W;)Lo/M;

    move-result-object v1

    .line 94
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/M;

    invoke-virtual {v0}, Lo/M;->f()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/M;

    invoke-virtual {v0}, Lo/M;->g()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lo/I;->a(Lo/M;III)Lo/I;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_9b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Lo/I;

    .line 100
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    new-instance v0, Lp/q;

    invoke-direct {v0, v10}, Lp/q;-><init>([Lo/I;)V

    .line 104
    new-instance v1, Lp/c;

    invoke-direct {v1}, Lp/c;-><init>()V

    invoke-virtual {v1, v0}, Lp/c;->a(Lp/q;)I

    .line 107
    invoke-virtual {p3}, Lo/x;->d()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p3}, Lo/x;->m()Lo/P;

    move-result-object v3

    invoke-virtual {v5}, Ln/W;->d()Ln/U;

    move-result-object v5

    invoke-virtual {p3}, Lo/x;->q()I

    move-result v7

    invoke-virtual {p3}, Lo/x;->D()[Lo/b;

    move-result-object v8

    move-object v2, p2

    move-object v4, v10

    move-object v10, v6

    invoke-static/range {v0 .. v10}, Lo/x;->a(IILo/P;Lo/P;[Lo/I;Ln/U;Ljava/lang/String;I[Lo/b;ILjava/util/List;)Lo/x;

    move-result-object v0

    return-object v0
.end method

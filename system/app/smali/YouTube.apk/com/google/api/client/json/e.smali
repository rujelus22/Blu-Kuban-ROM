.class public abstract Lcom/google/api/client/json/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method private final a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 429
    instance-of v2, v8, Ljava/lang/Class;

    if-eqz v2, :cond_4a

    move-object v2, v8

    check-cast v2, Ljava/lang/Class;

    .line 430
    :goto_f
    instance-of v3, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1a

    move-object v2, v8

    .line 431
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 434
    :cond_1a
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->d()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    .line 435
    sget-object v4, Lcom/google/api/client/json/f;->a:[I

    invoke-virtual {v3}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_388

    .line 566
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected JSON node type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_4a
    const/4 v2, 0x0

    goto :goto_f

    .line 438
    :pswitch_4c
    invoke-static {v8}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/Type;)Z

    move-result v4

    .line 439
    if-eqz v8, :cond_5e

    if-nez v4, :cond_5e

    if-eqz v2, :cond_99

    const-class v3, Ljava/util/Collection;

    invoke-static {v2, v3}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_99

    :cond_5e
    const/4 v3, 0x1

    :goto_5f
    const-string v5, "%s: expected collection or array type but got %s for field %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v3, v5, v6}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    invoke-static {v8}, Lcom/google/api/client/util/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v6

    .line 450
    const/4 v3, 0x0

    .line 451
    if-eqz v4, :cond_9b

    .line 452
    invoke-static {v8}, Lcom/google/api/client/util/v;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 456
    :goto_7f
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 457
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {p0, v6, v2, v0, v1}, Lcom/google/api/client/json/e;->a(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V

    .line 458
    if-eqz v4, :cond_98

    .line 459
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/api/client/util/v;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 564
    :cond_98
    :goto_98
    return-object v6

    .line 439
    :cond_99
    const/4 v3, 0x0

    goto :goto_5f

    .line 453
    :cond_9b
    if-eqz v2, :cond_384

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_384

    .line 454
    invoke-static {v8}, Lcom/google/api/client/util/v;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_7f

    .line 465
    :pswitch_aa
    invoke-static {v8}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_108

    const/4 v3, 0x1

    :goto_b1
    const-string v4, "%s: expected object or map type but got %s for field %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 469
    if-eqz v2, :cond_10a

    const-class v3, Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10a

    const/4 v3, 0x1

    .line 473
    :goto_d1
    if-nez v3, :cond_d5

    if-nez v2, :cond_10c

    .line 476
    :cond_d5
    invoke-static {v2}, Lcom/google/api/client/util/j;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v6

    .line 481
    :goto_d9
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 482
    if-eqz v8, :cond_e4

    .line 483
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_e4
    if-eqz v3, :cond_114

    const-class v3, Lcom/google/api/client/util/p;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 486
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-static {v8}, Lcom/google/api/client/util/v;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v3, v2

    .line 488
    :goto_fb
    if-eqz v3, :cond_114

    move-object v2, v6

    .line 490
    check-cast v2, Ljava/util/Map;

    .line 491
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/api/client/json/e;->a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V

    goto :goto_98

    .line 465
    :cond_108
    const/4 v3, 0x0

    goto :goto_b1

    .line 469
    :cond_10a
    const/4 v3, 0x0

    goto :goto_d1

    .line 478
    :cond_10c
    invoke-static {v2}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_d9

    .line 486
    :cond_111
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_fb

    .line 495
    :cond_114
    instance-of v2, v6, Lcom/google/api/client/json/b;

    if-eqz v2, :cond_121

    move-object v2, v6

    check-cast v2, Lcom/google/api/client/json/b;

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->a()Lcom/google/api/client/json/c;

    move-result-object v3

    iput-object v3, v2, Lcom/google/api/client/json/b;->a:Lcom/google/api/client/json/c;

    :cond_121
    invoke-direct {p0}, Lcom/google/api/client/json/e;->q()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v11

    const-class v4, Lcom/google/api/client/util/p;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_17e

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_17e

    move-object v2, v6

    check-cast v2, Ljava/util/Map;

    invoke-static {v3}, Lcom/google/api/client/util/v;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/api/client/json/e;->a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V

    .line 496
    :cond_14b
    if-eqz v8, :cond_98

    .line 497
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_98

    .line 495
    :cond_154
    invoke-virtual {v9}, Lcom/google/api/client/util/o;->a()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/google/api/client/util/o;->c()Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/api/client/json/e;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v9, v6, v2}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_17a
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    :cond_17e
    sget-object v3, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v2, v3, :cond_14b

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    invoke-virtual {v11, v13}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v9

    if-eqz v9, :cond_1a3

    invoke-virtual {v9}, Lcom/google/api/client/util/o;->d()Z

    move-result v2

    if-eqz v2, :cond_154

    invoke-virtual {v9}, Lcom/google/api/client/util/o;->e()Z

    move-result v2

    if-nez v2, :cond_154

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "final array/object fields are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a3
    if-eqz v12, :cond_1b7

    move-object v9, v6

    check-cast v9, Lcom/google/api/client/util/p;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/api/client/json/e;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/google/api/client/util/p;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17a

    :cond_1b7
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->f()Lcom/google/api/client/json/e;

    goto :goto_17a

    .line 502
    :pswitch_1bb
    if-eqz v8, :cond_1cb

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1cb

    if-eqz v2, :cond_1fa

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_1cb
    const/4 v2, 0x1

    :goto_1cc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s: expected type Boolean or boolean but got %s for field %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v2, v4, v5}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 507
    sget-object v2, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    if-ne v3, v2, :cond_1fc

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_98

    .line 502
    :cond_1fa
    const/4 v2, 0x0

    goto :goto_1cc

    .line 507
    :cond_1fc
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_98

    .line 510
    :pswitch_200
    if-eqz p1, :cond_20a

    const-class v3, Lcom/google/api/client/json/g;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_22d

    :cond_20a
    const/4 v3, 0x1

    :goto_20b
    const-string v4, "%s: number type formatted as a JSON number cannot use @JsonString annotation on the field %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 513
    if-eqz v2, :cond_227

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 514
    :cond_227
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->o()Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_98

    .line 510
    :cond_22d
    const/4 v3, 0x0

    goto :goto_20b

    .line 516
    :cond_22f
    const-class v3, Ljava/math/BigInteger;

    if-ne v2, v3, :cond_239

    .line 517
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->n()Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_98

    .line 519
    :cond_239
    const-class v3, Ljava/lang/Double;

    if-eq v2, v3, :cond_241

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_24b

    .line 520
    :cond_241
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->m()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto/16 :goto_98

    .line 522
    :cond_24b
    const-class v3, Ljava/lang/Long;

    if-eq v2, v3, :cond_253

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_25d

    .line 523
    :cond_253
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_98

    .line 525
    :cond_25d
    const-class v3, Ljava/lang/Float;

    if-eq v2, v3, :cond_265

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_26f

    .line 526
    :cond_265
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->k()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto/16 :goto_98

    .line 528
    :cond_26f
    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_277

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_281

    .line 529
    :cond_277
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_98

    .line 531
    :cond_281
    const-class v3, Ljava/lang/Short;

    if-eq v2, v3, :cond_289

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_293

    .line 532
    :cond_289
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->i()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto/16 :goto_98

    .line 534
    :cond_293
    const-class v3, Ljava/lang/Byte;

    if-eq v2, v3, :cond_29b

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2a5

    .line 535
    :cond_29b
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->h()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto/16 :goto_98

    .line 537
    :cond_2a5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": expected numeric type but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :pswitch_2d0
    if-eqz v2, :cond_2e4

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2e4

    if-eqz p1, :cond_301

    const-class v2, Lcom/google/api/client/json/g;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_301

    :cond_2e4
    const/4 v2, 0x1

    :goto_2e5
    const-string v3, "%s: number field formatted as a JSON string must use the @JsonString annotation: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 548
    :try_start_2f7
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/google/api/client/util/j;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f7 .. :try_end_2fe} :catch_303

    move-result-object v6

    goto/16 :goto_98

    .line 541
    :cond_301
    const/4 v2, 0x0

    goto :goto_2e5

    .line 549
    :catch_303
    move-exception v2

    .line 550
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 553
    :pswitch_325
    if-eqz v2, :cond_32d

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_360

    :cond_32d
    const/4 v3, 0x1

    :goto_32e
    const-string v4, "%s: primitive number field but found a JSON null: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 555
    if-eqz v2, :cond_378

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x600

    if-eqz v3, :cond_378

    .line 557
    const-class v3, Ljava/util/Collection;

    invoke-static {v2, v3}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_362

    .line 558
    invoke-static {v8}, Lcom/google/api/client/util/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_98

    .line 553
    :cond_360
    const/4 v3, 0x0

    goto :goto_32e

    .line 560
    :cond_362
    const-class v3, Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_378

    .line 561
    invoke-static {v2}, Lcom/google/api/client/util/j;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_98

    .line 564
    :cond_378
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_98

    :cond_384
    move-object v2, v3

    goto/16 :goto_7f

    .line 435
    nop

    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_4c
        :pswitch_4c
        :pswitch_aa
        :pswitch_aa
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_200
        :pswitch_200
        :pswitch_2d0
        :pswitch_325
    .end packed-switch
.end method

.method private a(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/api/client/json/e;->q()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 389
    :goto_4
    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1a

    .line 391
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/e;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_4

    .line 396
    :cond_1a
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/google/api/client/json/e;->q()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 401
    :goto_4
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_21

    .line 402
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->g()Ljava/lang/String;

    move-result-object v6

    .line 403
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    .line 405
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/e;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v0

    .line 409
    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_4

    .line 412
    :cond_21
    return-void
.end method

.method private p()Lcom/google/api/client/json/JsonToken;
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->d()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 159
    if-nez v0, :cond_16

    .line 160
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    move-object v1, v0

    .line 162
    :goto_b
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :goto_e
    const-string v2, "no JSON input found"

    invoke-static {v0, v2}, Lcom/google/common/base/t;->a(ZLjava/lang/Object;)V

    .line 163
    return-object v1

    .line 162
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    move-object v1, v0

    goto :goto_b
.end method

.method private q()Lcom/google/api/client/json/JsonToken;
    .registers 4

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/api/client/json/e;->p()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/google/api/client/json/f;->a:[I

    invoke-virtual {v0}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 190
    :goto_f
    return-object v0

    .line 181
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v1

    .line 182
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-eq v1, v0, :cond_1c

    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v1, v0, :cond_22

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0, v1}, Lcom/google/common/base/t;->a(ZLjava/lang/Object;)V

    move-object v0, v1

    .line 185
    goto :goto_f

    .line 182
    :cond_22
    const/4 v0, 0x0

    goto :goto_1d

    .line 187
    :pswitch_24
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_f

    .line 179
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Lcom/google/api/client/json/c;
.end method

.method public final a(Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/google/api/client/json/e;->p()Lcom/google/api/client/json/JsonToken;

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/e;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/a;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->b()V

    return-object v0

    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->b()V

    throw v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/util/Collection;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/api/client/util/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, p2, v2, v0}, Lcom/google/api/client/json/e;->a(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/a;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 323
    invoke-virtual {p0}, Lcom/google/api/client/json/e;->b()V

    return-object v1

    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/e;->b()V

    throw v0
.end method

.method public abstract b()V
.end method

.method public abstract c()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract d()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Lcom/google/api/client/json/e;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()B
.end method

.method public abstract i()S
.end method

.method public abstract j()I
.end method

.method public abstract k()F
.end method

.method public abstract l()J
.end method

.method public abstract m()D
.end method

.method public abstract n()Ljava/math/BigInteger;
.end method

.method public abstract o()Ljava/math/BigDecimal;
.end method

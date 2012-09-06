.class public abstract LadQ;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method

.method private final a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "LadK;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {p3, p2}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 497
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_46

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 498
    :goto_b
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_16

    move-object v0, v1

    .line 499
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Laez;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 502
    :cond_16
    invoke-virtual {p0}, LadQ;->b()LadT;

    move-result-object v2

    .line 503
    sget-object v3, LadR;->a:[I

    invoke-virtual {v2}, LadT;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_302

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": unexpected JSON node type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_46
    const/4 v0, 0x0

    goto :goto_b

    .line 506
    :pswitch_48
    invoke-static {v1}, Laez;->a(Ljava/lang/reflect/Type;)Z

    move-result v4

    .line 507
    if-eqz v1, :cond_5a

    if-nez v4, :cond_5a

    if-eqz v0, :cond_98

    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_5a
    const/4 v2, 0x1

    :goto_5b
    const-string v3, "%s: expected collection or array type but got %s for field %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v2, v3, v5}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const/4 v3, 0x0

    .line 512
    if-eqz p5, :cond_79

    if-eqz p1, :cond_79

    .line 513
    invoke-virtual {p5, p4, p1}, LadK;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v3

    .line 515
    :cond_79
    if-nez v3, :cond_7f

    .line 516
    invoke-static {v1}, Laeh;->a(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v3

    .line 518
    :cond_7f
    const/4 v2, 0x0

    .line 519
    if-eqz v4, :cond_9a

    .line 520
    invoke-static {v1}, Laez;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 524
    :goto_86
    invoke-static {p3, v0}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 525
    invoke-direct {p0, v3, v0, p3, p5}, LadQ;->a(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;LadK;)V

    .line 526
    if-eqz v4, :cond_a9

    .line 527
    invoke-static {p3, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v3, v0}, Laez;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 635
    :cond_97
    :goto_97
    return-object v2

    .line 507
    :cond_98
    const/4 v2, 0x0

    goto :goto_5b

    .line 521
    :cond_9a
    if-eqz v0, :cond_2ff

    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    .line 522
    invoke-static {v1}, Laez;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_86

    :cond_a9
    move-object v2, v3

    .line 529
    goto :goto_97

    .line 533
    :pswitch_ab
    invoke-static {v1}, Laez;->a(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_10e

    const/4 v2, 0x1

    :goto_b2
    const-string v3, "%s: expected object or map type but got %s for field %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const/4 v2, 0x0

    .line 537
    if-eqz v0, :cond_d0

    if-eqz p5, :cond_d0

    .line 538
    invoke-virtual {p5, p4, v0}, LadK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 540
    :cond_d0
    if-eqz v0, :cond_110

    const-class v3, Ljava/util/Map;

    invoke-static {v0, v3}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_110

    const/4 v3, 0x1

    .line 541
    :goto_db
    if-nez v2, :cond_e5

    .line 543
    if-nez v3, :cond_e1

    if-nez v0, :cond_112

    .line 544
    :cond_e1
    invoke-static {v0}, Laeh;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 549
    :cond_e5
    :goto_e5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 550
    if-eqz v1, :cond_ee

    .line 551
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_ee
    if-eqz v3, :cond_11a

    const-class v3, Laeo;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_11a

    .line 554
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-static {v1}, Laez;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v3, v0

    .line 556
    :goto_105
    if-eqz v3, :cond_11a

    move-object v0, v2

    .line 558
    check-cast v0, Ljava/util/Map;

    .line 559
    invoke-direct {p0, v0, v3, p3, p5}, LadQ;->a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;LadK;)V

    goto :goto_97

    .line 533
    :cond_10e
    const/4 v2, 0x0

    goto :goto_b2

    .line 540
    :cond_110
    const/4 v3, 0x0

    goto :goto_db

    .line 546
    :cond_112
    invoke-static {v0}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_e5

    .line 554
    :cond_117
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_105

    .line 563
    :cond_11a
    invoke-direct {p0, p3, v2, p5}, LadQ;->a(Ljava/util/ArrayList;Ljava/lang/Object;LadK;)V

    .line 564
    if-eqz v1, :cond_97

    .line 565
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_97

    .line 570
    :pswitch_124
    if-eqz v1, :cond_134

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_134

    if-eqz v0, :cond_164

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_164

    :cond_134
    const/4 v0, 0x1

    :goto_135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s: expected type Boolean or boolean but got %s for field %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 574
    sget-object v0, LadT;->i:LadT;

    if-ne v2, v0, :cond_166

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_161
    move-object v2, v0

    goto/16 :goto_97

    .line 570
    :cond_164
    const/4 v0, 0x0

    goto :goto_135

    .line 574
    :cond_166
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_161

    .line 577
    :pswitch_169
    if-eqz p1, :cond_173

    const-class v2, LadS;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez v2, :cond_196

    :cond_173
    const/4 v2, 0x1

    :goto_174
    const-string v3, "%s: number type formatted as a JSON number cannot use @JsonString annotation on the field %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 580
    if-eqz v0, :cond_190

    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 581
    :cond_190
    invoke-virtual {p0}, LadQ;->a()Ljava/math/BigDecimal;

    move-result-object v2

    goto/16 :goto_97

    .line 577
    :cond_196
    const/4 v2, 0x0

    goto :goto_174

    .line 583
    :cond_198
    const-class v2, Ljava/math/BigInteger;

    if-ne v0, v2, :cond_1a2

    .line 584
    invoke-virtual {p0}, LadQ;->a()Ljava/math/BigInteger;

    move-result-object v2

    goto/16 :goto_97

    .line 586
    :cond_1a2
    const-class v2, LalC;

    if-ne v0, v2, :cond_1ac

    .line 587
    invoke-virtual {p0}, LadQ;->a()LalC;

    move-result-object v2

    goto/16 :goto_97

    .line 589
    :cond_1ac
    const-class v2, LalE;

    if-ne v0, v2, :cond_1b6

    .line 590
    invoke-virtual {p0}, LadQ;->a()LalE;

    move-result-object v2

    goto/16 :goto_97

    .line 592
    :cond_1b6
    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_1be

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1c8

    .line 593
    :cond_1be
    invoke-virtual {p0}, LadQ;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_97

    .line 595
    :cond_1c8
    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_1d0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1da

    .line 596
    :cond_1d0
    invoke-virtual {p0}, LadQ;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_97

    .line 598
    :cond_1da
    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_1e2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1ec

    .line 599
    :cond_1e2
    invoke-virtual {p0}, LadQ;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_97

    .line 601
    :cond_1ec
    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_1f4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1fe

    .line 602
    :cond_1f4
    invoke-virtual {p0}, LadQ;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_97

    .line 604
    :cond_1fe
    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_206

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_210

    .line 605
    :cond_206
    invoke-virtual {p0}, LadQ;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_97

    .line 607
    :cond_210
    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_218

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_222

    .line 608
    :cond_218
    invoke-virtual {p0}, LadQ;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_97

    .line 610
    :cond_222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected numeric type but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :pswitch_24d
    if-eqz v0, :cond_261

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_261

    if-eqz p1, :cond_27e

    const-class v0, LadS;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_27e

    :cond_261
    const/4 v0, 0x1

    :goto_262
    const-string v2, "%s: number field formatted as a JSON string must use the @JsonString annotation: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :try_start_274
    invoke-virtual {p0}, LadQ;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laeh;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_27b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_274 .. :try_end_27b} :catch_280

    move-result-object v2

    goto/16 :goto_97

    .line 613
    :cond_27e
    const/4 v0, 0x0

    goto :goto_262

    .line 620
    :catch_280
    move-exception v0

    .line 621
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 624
    :pswitch_2a2
    if-eqz v0, :cond_2aa

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2dd

    :cond_2aa
    const/4 v2, 0x1

    :goto_2ab
    const-string v3, "%s: primitive number field but found a JSON null: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, LadQ;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 626
    if-eqz v0, :cond_2f5

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x600

    if-eqz v2, :cond_2f5

    .line 628
    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v2}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2df

    .line 629
    invoke-static {v1}, Laeh;->a(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_97

    .line 624
    :cond_2dd
    const/4 v2, 0x0

    goto :goto_2ab

    .line 631
    :cond_2df
    const-class v2, Ljava/util/Map;

    invoke-static {v0, v2}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    .line 632
    invoke-static {v0}, Laeh;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_97

    .line 635
    :cond_2f5
    invoke-static {p3, v1}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_97

    :cond_2ff
    move-object v0, v2

    goto/16 :goto_86

    .line 503
    :pswitch_data_302
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_48
        :pswitch_48
        :pswitch_ab
        :pswitch_ab
        :pswitch_124
        :pswitch_124
        :pswitch_169
        :pswitch_169
        :pswitch_24d
        :pswitch_2a2
    .end packed-switch
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;LadK;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "LadK;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 326
    instance-of v0, p2, LadL;

    if-eqz v0, :cond_f

    move-object v0, p2

    .line 327
    check-cast v0, LadL;

    invoke-virtual {p0}, LadQ;->a()LadN;

    move-result-object v1

    invoke-virtual {v0, v1}, LadL;->a(LadN;)V

    .line 329
    :cond_f
    invoke-direct {p0}, LadQ;->d()LadT;

    move-result-object v0

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 331
    invoke-static {v1}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v7

    .line 332
    const-class v2, Laeo;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    .line 333
    if-nez v8, :cond_5a

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 335
    check-cast p2, Ljava/util/Map;

    .line 336
    invoke-static {v1}, Laez;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1, p3}, LadQ;->a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;LadK;)V

    .line 374
    :cond_34
    return-void

    .line 354
    :cond_35
    invoke-virtual {v6}, Laen;->a()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 356
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v6}, Laen;->a()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LadQ;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    invoke-virtual {v6, p2, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    :goto_56
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    .line 340
    :cond_5a
    sget-object v1, LadT;->e:LadT;

    if-ne v0, v1, :cond_34

    .line 341
    invoke-virtual {p0}, LadQ;->b()Ljava/lang/String;

    move-result-object v9

    .line 342
    invoke-virtual {p0}, LadQ;->a()LadT;

    .line 344
    if-eqz p3, :cond_6d

    invoke-virtual {p3, p2, v9}, LadK;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 348
    :cond_6d
    invoke-virtual {v7, v9}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v6

    .line 349
    if-eqz v6, :cond_87

    .line 351
    invoke-virtual {v6}, Laen;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v6}, Laen;->b()Z

    move-result v0

    if-nez v0, :cond_35

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "final array/object fields are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_87
    if-eqz v8, :cond_9a

    move-object v6, p2

    .line 363
    check-cast v6, Laeo;

    move-object v0, p0

    move-object v1, v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 364
    invoke-direct/range {v0 .. v5}, LadQ;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Laeo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_56

    .line 367
    :cond_9a
    if-eqz p3, :cond_9f

    .line 368
    invoke-virtual {p3, p2, v9}, LadK;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    :cond_9f
    invoke-virtual {p0}, LadQ;->a()LadQ;

    goto :goto_56
.end method

.method private a(Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;LadK;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "LadK;",
            ")V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, LadQ;->d()LadT;

    move-result-object v0

    .line 457
    :goto_4
    sget-object v1, LadT;->b:LadT;

    if-eq v0, v1, :cond_1a

    .line 459
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LadQ;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    goto :goto_4

    .line 464
    :cond_1a
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;LadK;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "LadK;",
            ")V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, LadQ;->d()LadT;

    move-result-object v0

    .line 469
    :goto_4
    sget-object v1, LadT;->e:LadT;

    if-ne v0, v1, :cond_17

    .line 470
    invoke-virtual {p0}, LadQ;->b()Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual {p0}, LadQ;->a()LadT;

    .line 473
    if-eqz p4, :cond_18

    invoke-virtual {p4, p1, v6}, LadK;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 480
    :cond_17
    return-void

    .line 476
    :cond_18
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LadQ;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;

    move-result-object v0

    .line 477
    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    goto :goto_4
.end method

.method private c()LadT;
    .registers 4

    .prologue
    .line 198
    invoke-virtual {p0}, LadQ;->b()LadT;

    move-result-object v0

    .line 200
    if-nez v0, :cond_16

    .line 201
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    move-object v1, v0

    .line 203
    :goto_b
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :goto_e
    const-string v2, "no JSON input found"

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 204
    return-object v1

    .line 203
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :cond_16
    move-object v1, v0

    goto :goto_b
.end method

.method private d()LadT;
    .registers 4

    .prologue
    .line 219
    invoke-direct {p0}, LadQ;->c()LadT;

    move-result-object v0

    .line 220
    sget-object v1, LadR;->a:[I

    invoke-virtual {v0}, LadT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 231
    :goto_f
    return-object v0

    .line 222
    :pswitch_10
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v1

    .line 223
    sget-object v0, LadT;->e:LadT;

    if-eq v1, v0, :cond_1c

    sget-object v0, LadT;->d:LadT;

    if-ne v1, v0, :cond_22

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    move-object v0, v1

    .line 226
    goto :goto_f

    .line 223
    :cond_22
    const/4 v0, 0x0

    goto :goto_1d

    .line 228
    :pswitch_24
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    goto :goto_f

    .line 220
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public abstract a()B
.end method

.method public abstract a()D
.end method

.method public abstract a()F
.end method

.method public abstract a()I
.end method

.method public abstract a()J
.end method

.method public abstract a()LadN;
.end method

.method public abstract a()LadQ;
.end method

.method public abstract a()LadT;
.end method

.method public abstract a()LalC;
.end method

.method public abstract a()LalE;
.end method

.method public final a(Ljava/lang/Class;LadK;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "LadK;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0, p1, p2}, LadQ;->b(Ljava/lang/Class;LadK;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    .line 150
    invoke-virtual {p0}, LadQ;->a()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p0}, LadQ;->a()V

    throw v0
.end method

.method public a(Ljava/lang/reflect/Type;ZLadK;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    :try_start_0
    invoke-direct {p0}, LadQ;->c()LadT;

    .line 296
    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LadQ;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;LadK;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    move-result-object v0

    .line 298
    if-eqz p2, :cond_16

    .line 299
    invoke-virtual {p0}, LadQ;->a()V

    :cond_16
    return-object v0

    .line 298
    :catchall_17
    move-exception v0

    if-eqz p2, :cond_1d

    .line 299
    invoke-virtual {p0}, LadQ;->a()V

    :cond_1d
    throw v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, LadQ;->d()LadT;

    move-result-object v0

    .line 184
    :goto_4
    sget-object v1, LadT;->e:LadT;

    if-ne v0, v1, :cond_1e

    .line 185
    invoke-virtual {p0}, LadQ;->b()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, LadQ;->a()LadT;

    .line 187
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 193
    :goto_15
    return-object v0

    .line 190
    :cond_16
    invoke-virtual {p0}, LadQ;->a()LadQ;

    .line 191
    invoke-virtual {p0}, LadQ;->a()LadT;

    move-result-object v0

    goto :goto_4

    .line 193
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public abstract a()Ljava/math/BigDecimal;
.end method

.method public abstract a()Ljava/math/BigInteger;
.end method

.method public abstract a()S
.end method

.method public abstract a()V
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 166
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, LadQ;->a(Ljava/util/Set;)Ljava/lang/String;

    .line 167
    return-void
.end method

.method public abstract b()LadT;
.end method

.method public final b(Ljava/lang/Class;LadK;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "LadK;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, LadQ;->c()LadT;

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LadQ;->a(Ljava/lang/reflect/Type;ZLadK;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

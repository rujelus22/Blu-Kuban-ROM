.class public final Lky;
.super Lkv;
.source "a"


# static fields
.field public static final e:Lky;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lky;

    invoke-direct {v0}, Lky;-><init>()V

    sput-object v0, Lky;->e:Lky;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lkv;-><init>()V

    return-void
.end method

.method private static a(Lhq;Lju;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhq;",
            "Lju;",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lhq;->a()Lgy;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lju;->c()Ljl;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lgy;->b(Ljl;)[Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_33

    array-length v1, v0

    if-lez v1, :cond_33

    .line 345
    invoke-static {v0}, Lmd;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 346
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 347
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    invoke-virtual {p0}, Lkw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 353
    :cond_33
    return-object p2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 473
    if-eqz p3, :cond_23

    .line 474
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 479
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    .line 480
    invoke-virtual {p0}, Lkw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 476
    :cond_23
    new-instance v1, Ljava/util/LinkedHashMap;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_b

    .line 482
    :cond_2b
    new-instance v2, Ljava/util/LinkedHashMap;

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 484
    if-eqz p2, :cond_48

    .line 485
    array-length v0, p2

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v0, :cond_48

    aget-object v4, p2, v3

    .line 486
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    .line 487
    if-eqz p0, :cond_45

    .line 488
    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 493
    :cond_48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4c
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 494
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    .line 495
    if-eqz v0, :cond_4c

    .line 496
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 500
    :cond_64
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(Lhq;Lma;Llj;ZLjava/lang/String;Ljo;)Lkw;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    sget-object v4, Lhq$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

    invoke-virtual {p1, v4}, Lhq;->a(Lhq$a;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 314
    invoke-virtual/range {p6 .. p6}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v4

    invoke-static {v4}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 317
    :cond_f
    move-object v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lky;->a(Lhq;Ljk;)Lhj;

    move-result-object v6

    .line 319
    const/4 v4, 0x0

    .line 320
    move-object/from16 v0, p6

    move-object v1, p2

    invoke-virtual {v0, v1}, Ljo;->a(Lma;)Lnd;

    move-result-object v5

    .line 321
    invoke-virtual {v5}, Lnd;->i()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a2

    const/4 v7, 0x1

    :goto_29
    if-eqz v7, :cond_190

    .line 322
    invoke-virtual {v5}, Lnd;->e()Lnd;

    move-result-object v4

    invoke-virtual {p1}, Lhq;->a()Lgy;

    invoke-virtual {p0, v4, p1}, Lky;->b(Lnd;Lhq;)Lhu;

    move-result-object v4

    move-object v8, v4

    .line 326
    :goto_37
    invoke-virtual {p1}, Lhq;->a()Lgy;

    invoke-virtual {p0, v5, p1}, Lky;->b(Lnd;Lhq;)Lhu;

    move-result-object v7

    .line 327
    move-object/from16 v0, p6

    instance-of v0, v0, Ljn;

    move v4, v0

    if-eqz v4, :cond_bb

    const/4 v5, 0x0

    move-object/from16 v0, p6

    check-cast v0, Ljn;

    move-object v4, v0

    invoke-virtual {v4}, Ljn;->d()Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v9, v5

    move-object v10, v4

    :goto_51
    move-object/from16 v0, p3

    iget-object v0, v0, Llj;->d:Lgy;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lgy;->c(Ljk;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_11b

    invoke-virtual/range {p6 .. p6}, Ljk;->c()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_c6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Ljk;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " not a super-type of (declared) class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 321
    :cond_a2
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_ad

    const/4 v7, 0x1

    goto/16 :goto_29

    :cond_ad
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_b8

    const/4 v7, 0x1

    goto/16 :goto_29

    :cond_b8
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 327
    :cond_bb
    move-object/from16 v0, p6

    check-cast v0, Ljp;

    move-object v4, v0

    iget-object v4, v4, Ljp;->a:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object v9, v4

    move-object v10, v5

    goto :goto_51

    :cond_c6
    invoke-static {v4}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v4

    :goto_ca
    if-eqz v8, :cond_140

    if-nez v4, :cond_d6

    invoke-virtual/range {p6 .. p6}, Ljo;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v4

    :cond_d6
    invoke-virtual {v4}, Lnd;->e()Lnd;

    move-result-object v5

    if-nez v5, :cond_13d

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-object v0, v0, Llj;->b:Lju;

    move-object v7, v0

    invoke-virtual {v7}, Lju;->a()Lnd;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); serialization type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has no content"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11b
    move-object/from16 v0, p3

    iget-object v0, v0, Llj;->d:Lgy;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lgy;->d(Ljk;)Lhx$b;

    move-result-object v4

    if-eqz v4, :cond_18d

    sget-object v5, Lhx$b;->STATIC:Lhx$b;

    if-ne v4, v5, :cond_139

    const/4 v4, 0x1

    :goto_12e
    if-eqz v4, :cond_13b

    invoke-virtual/range {p6 .. p6}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v4

    goto :goto_ca

    :cond_139
    const/4 v4, 0x0

    goto :goto_12e

    :cond_13b
    const/4 v4, 0x0

    goto :goto_ca

    :cond_13d
    invoke-virtual {v5, v8}, Lnd;->b(Ljava/lang/Object;)V

    :cond_140
    move-object v8, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Llj;->d:Lgy;

    move-object v11, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Llj;->c:Lhx$a;

    move-object v12, v0

    move-object v0, v11

    move-object/from16 v1, p6

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgy;->a(Ljk;Lhx$a;)Lhx$a;

    move-result-object v11

    if-eqz v11, :cond_162

    sget-object v12, Llj$1;->a:[I

    invoke-virtual {v11}, Lhx$a;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_194

    :cond_162
    move v11, v5

    move-object v12, v4

    :goto_164
    new-instance v4, Lkw;

    move-object/from16 v5, p5

    invoke-direct/range {v4 .. v12}, Lkw;-><init>(Ljava/lang/String;Lhj;Lhu;Lnd;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 330
    invoke-virtual {p1}, Lhq;->a()Lgy;

    move-result-object v5

    .line 331
    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lgy;->e(Ljk;)[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkw;->a([Ljava/lang/Class;)V

    .line 332
    return-object v4

    .line 327
    :pswitch_17a
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v9

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Llj;->a(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_18a

    :pswitch_186
    const/4 v5, 0x1

    move v11, v5

    move-object v12, v4

    goto :goto_164

    :cond_18a
    move v11, v5

    move-object v12, v4

    goto :goto_164

    :cond_18d
    move/from16 v4, p4

    goto :goto_12e

    :cond_190
    move-object v8, v4

    goto/16 :goto_37

    nop

    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_186
    .end packed-switch
.end method

.method private static a(Lhq;Lkx;Ljava/util/List;)Lkx;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhq;",
            "Lkx;",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Lkx;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 402
    sget-object v0, Lhq$a;->DEFAULT_VIEW_INCLUSION:Lhq$a;

    invoke-virtual {p0, v0}, Lhq;->a(Lhq$a;)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_4a

    .line 404
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 405
    const/4 v1, 0x0

    move-object v2, v1

    move v1, v4

    .line 407
    :goto_10
    if-ge v1, v0, :cond_2f

    .line 408
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    .line 409
    invoke-virtual {p0}, Lkw;->e()[Ljava/lang/Class;

    move-result-object v3

    .line 410
    if-eqz v3, :cond_2c

    .line 411
    if-nez v2, :cond_26

    .line 412
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lkw;

    .line 414
    :cond_26
    invoke-static {p0, v3}, Lle;->a(Lkw;[Ljava/lang/Class;)Lkw;

    move-result-object v3

    aput-object v3, v2, v1

    .line 407
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 418
    :cond_2f
    if-eqz v2, :cond_48

    move v1, v4

    .line 419
    :goto_32
    if-ge v1, v0, :cond_43

    .line 420
    aget-object v3, v2, v1

    if-nez v3, :cond_40

    .line 421
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    aput-object p0, v2, v1

    .line 419
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 424
    :cond_43
    invoke-virtual {p1, v2}, Lkx;->a([Lkw;)Lkx;

    move-result-object v0

    .line 438
    :goto_47
    return-object v0

    :cond_48
    move-object v0, p1

    .line 427
    goto :goto_47

    .line 430
    :cond_4a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkw;

    .line 432
    invoke-virtual {p0}, Lkw;->e()[Ljava/lang/Class;

    move-result-object v2

    .line 433
    if-eqz v2, :cond_57

    .line 434
    invoke-static {p0, v2}, Lle;->a(Lkw;[Ljava/lang/Class;)Lkw;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 437
    :cond_71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lkw;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkw;

    .line 438
    invoke-virtual {p1, p0}, Lkx;->a([Lkw;)Lkx;

    move-result-object v0

    goto :goto_47
.end method


# virtual methods
.method public final a(Lnd;Lhq;)Lhj;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Lhq;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p2, p1}, Lhq;->a(Lnd;)Lgz;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lju;

    move-object v8, v0

    .line 95
    invoke-virtual {v8}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p2, v1}, Lky;->a(Lhq;Ljk;)Lhj;

    move-result-object v1

    .line 96
    if-nez v1, :cond_38

    .line 98
    invoke-super {p0, p1, p2, v8}, Lkv;->a(Lnd;Lhq;Lju;)Lhj;

    move-result-object v1

    .line 99
    if-nez v1, :cond_38

    .line 101
    invoke-super {p0, p1, p2, v8}, Lkv;->b(Lnd;Lhq;Lju;)Lhj;

    move-result-object v1

    .line 102
    if-nez v1, :cond_38

    .line 108
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lme;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_39

    invoke-static {v1}, Lme;->c(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    :goto_2f
    if-nez v1, :cond_3b

    const/4 v1, 0x0

    .line 112
    :goto_32
    if-nez v1, :cond_38

    .line 113
    invoke-super {p0, p1, p2, v8}, Lkv;->c(Lnd;Lhq;Lju;)Lhj;

    move-result-object v1

    .line 118
    :cond_38
    return-object v1

    .line 108
    :cond_39
    const/4 v1, 0x0

    goto :goto_2f

    :cond_3b
    invoke-virtual {p2}, Lhq;->d()Lka;

    move-result-object v1

    sget-object v2, Lhq$a;->AUTO_DETECT_GETTERS:Lhq$a;

    invoke-virtual {p2, v2}, Lhq;->a(Lhq$a;)Z

    move-result v2

    if-nez v2, :cond_4d

    sget-object v2, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v1, v2}, Lka;->a(Lfm$a;)Lka;

    move-result-object v1

    :cond_4d
    sget-object v2, Lhq$a;->AUTO_DETECT_IS_GETTERS:Lhq$a;

    invoke-virtual {p2, v2}, Lhq;->a(Lhq$a;)Z

    move-result v2

    if-nez v2, :cond_5b

    sget-object v2, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v1, v2}, Lka;->b(Lfm$a;)Lka;

    move-result-object v1

    :cond_5b
    sget-object v2, Lhq$a;->AUTO_DETECT_FIELDS:Lhq$a;

    invoke-virtual {p2, v2}, Lhq;->a(Lhq$a;)Z

    move-result v2

    if-nez v2, :cond_69

    sget-object v2, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v1, v2}, Lka;->e(Lfm$a;)Lka;

    move-result-object v1

    :cond_69
    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v9

    invoke-virtual {v8}, Lju;->c()Ljl;

    move-result-object v2

    invoke-virtual {v9, v2, v1}, Lgy;->a(Ljl;Lka;)Lka;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lju;->a(Lka;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lju;->b(Lka;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a6

    const/4 v1, 0x0

    :goto_8f
    if-eqz v1, :cond_97

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13b

    :cond_97
    invoke-virtual {v8}, Lju;->d()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-virtual {v8}, Lju;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkx;->a(Ljava/lang/Class;)Lkx;

    move-result-object v1

    goto :goto_32

    :cond_a6
    const/4 v2, 0x0

    invoke-static {p2, v8, v2}, Lky;->a(Lhq;Lju;Lhu;)Z

    move-result v5

    new-instance v4, Llj;

    invoke-direct {v4, p2, v8}, Llj;-><init>(Lhq;Lju;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Lju;->e()Lma;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c5
    :goto_c5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljo;

    invoke-virtual {v9, v2}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v2

    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Lgy$a;->b()Z

    move-result v2

    if-nez v2, :cond_c5

    :cond_e3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljo;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lky;->a(Lhq;Lma;Llj;ZLjava/lang/String;Ljo;)Lkw;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_f9
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_101
    :goto_101
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljo;

    invoke-virtual {v9, v2}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v2

    if-eqz v2, :cond_11f

    invoke-virtual {v2}, Lgy$a;->b()Z

    move-result v2

    if-nez v2, :cond_101

    :cond_11f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljo;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lky;->a(Lhq;Lma;Llj;ZLjava/lang/String;Ljo;)Lkw;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_101

    :cond_135
    move-object v1, v11

    goto/16 :goto_8f

    :cond_138
    const/4 v1, 0x0

    goto/16 :goto_32

    :cond_13b
    invoke-static {p2, v8, v1}, Lky;->a(Lhq;Lju;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8}, Lju;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lhq;->a()Lgy;

    move-result-object v3

    invoke-virtual {v8}, Lju;->c()Ljl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgy;->f(Ljl;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4}, Lgy;->g(Ljl;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1a2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a2

    const/4 v3, 0x1

    :goto_15c
    if-nez v3, :cond_166

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_166

    if-eqz v5, :cond_16a

    :cond_166
    invoke-static {v1, v2, v5, v3}, Lky;->a(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    :cond_16a
    new-instance v2, Lkx;

    invoke-virtual {v8}, Lju;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lkx;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    invoke-virtual {v8}, Lju;->l()Ljp;

    move-result-object v3

    if-eqz v3, :cond_19c

    invoke-virtual {v8}, Lju;->e()Lma;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljp;->a(Lma;)Lnd;

    move-result-object v4

    sget-object v5, Lhq$a;->USE_STATIC_TYPING:Lhq$a;

    invoke-virtual {p2, v5}, Lhq;->a(Lhq$a;)Z

    move-result v5

    invoke-virtual {v4}, Lnd;->e()Lnd;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lky;->b(Lnd;Lhq;)Lhu;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v4, v5, v6}, Llh;->a([Ljava/lang/String;Lnd;ZLhu;)Llh;

    move-result-object v4

    new-instance v5, Lkt;

    invoke-direct {v5, v3, v4}, Lkt;-><init>(Ljp;Llh;)V

    invoke-virtual {v2, v5}, Lkx;->a(Lkt;)V

    :cond_19c
    invoke-static {p2, v2, v1}, Lky;->a(Lhq;Lkx;Ljava/util/List;)Lkx;

    move-result-object v1

    goto/16 :goto_32

    :cond_1a2
    const/4 v3, 0x0

    goto :goto_15c
.end method

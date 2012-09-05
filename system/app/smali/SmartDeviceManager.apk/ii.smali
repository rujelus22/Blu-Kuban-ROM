.class public final Lii;
.super Lig;
.source "a"


# static fields
.field public static final g:Lii;

.field private static final h:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lii;->h:[Ljava/lang/Class;

    .line 30
    new-instance v0, Lii;

    invoke-direct {v0}, Lii;-><init>()V

    sput-object v0, Lii;->g:Lii;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lig;-><init>()V

    return-void
.end method

.method private a(Lhb;Lnd;Lju;)Lhf;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            "Lju;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v2, Lih;

    invoke-direct {v2, p2}, Lih;-><init>(Lnd;)V

    .line 141
    invoke-direct {p0, p1, p3, v2}, Lii;->a(Lhb;Lju;Lih;)V

    .line 149
    invoke-direct {p0, p1, p3, v2}, Lii;->b(Lhb;Lju;Lih;)V

    .line 151
    invoke-virtual {p3}, Lju;->m()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    instance-of v4, v0, Ljp;

    if-eqz v4, :cond_43

    invoke-virtual {v0}, Ljo;->a()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Ljp;

    invoke-direct {p0, p1, p3, v4, v0}, Lii;->a(Lhb;Lju;Ljava/lang/String;Ljp;)Liy;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lih;->a(Ljava/lang/String;Liy;)V

    goto :goto_19

    :cond_43
    invoke-virtual {v0}, Ljo;->a()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Ljn;

    invoke-direct {p0, p1, p3, v4, v0}, Lii;->a(Lhb;Lju;Ljava/lang/String;Ljn;)Liy;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lih;->a(Ljava/lang/String;Liy;)V

    goto :goto_19

    .line 153
    :cond_51
    return-object v2
.end method

.method private a(Lhb;Lju;Ljava/lang/String;Ljn;)Liy;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 630
    sget-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 631
    invoke-virtual {p4}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 633
    :cond_f
    invoke-virtual {p4}, Ljn;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lii;->a(Lhb;Lju;Ljava/lang/reflect/Type;Ljk;)Lnd;

    move-result-object v0

    .line 637
    invoke-static {p1, p4}, Lii;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    .line 638
    invoke-virtual {p4}, Ljn;->d()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 639
    invoke-static {p1, p4, v0}, Lii;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lnd;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    .line 641
    new-instance v3, Liy$b;

    invoke-direct {v3, p3, v0, p0, v2}, Liy$b;-><init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Field;)V

    .line 642
    if-eqz v1, :cond_33

    .line 643
    invoke-virtual {v3, v1}, Liy;->a(Lhf;)V

    .line 646
    :cond_33
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v0

    invoke-virtual {v0, p4}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lgy$a;->a()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 648
    iget-object v0, v0, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Liy;->a(Ljava/lang/String;)V

    .line 650
    :cond_48
    return-object v3
.end method

.method private a(Lhb;Lju;Ljava/lang/String;Ljp;)Liy;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 596
    sget-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 597
    invoke-virtual {p4}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 601
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljp;->b(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lii;->a(Lhb;Lju;Ljava/lang/reflect/Type;Ljk;)Lnd;

    move-result-object v0

    .line 606
    invoke-static {p1, p4}, Lii;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    .line 608
    iget-object v2, p4, Ljp;->a:Ljava/lang/reflect/Method;

    .line 609
    invoke-static {p1, p4, v0}, Lii;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lnd;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    .line 611
    new-instance v3, Liy$d;

    invoke-direct {v3, p3, v0, p0, v2}, Liy$d;-><init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Method;)V

    .line 612
    if-eqz v1, :cond_32

    .line 613
    invoke-virtual {v3, v1}, Liy;->a(Lhf;)V

    .line 616
    :cond_32
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v0

    invoke-virtual {v0, p4}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lgy$a;->a()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 618
    iget-object v0, v0, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Liy;->a(Ljava/lang/String;)V

    .line 620
    :cond_47
    return-object v3
.end method

.method private a(Lhb;Lju;Lih;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lhb;->a()Lgy;

    move-result-object v9

    .line 232
    sget-object v2, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lhb;->a(Lhb$a;)Z

    move-result v2

    .line 236
    invoke-virtual/range {p2 .. p2}, Lju;->a()Lnd;

    move-result-object v3

    invoke-virtual {v3}, Lnd;->c()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 237
    invoke-virtual/range {p2 .. p2}, Lju;->g()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_28

    .line 239
    if-eqz v2, :cond_22

    .line 240
    invoke-static {v3}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 243
    :cond_22
    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Lih;->a(Ljava/lang/reflect/Constructor;)V

    .line 248
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lhb;->c()Lka;

    move-result-object v3

    .line 249
    sget-object v4, Lhb$a;->AUTO_DETECT_CREATORS:Lhb$a;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lhb;->a(Lhb$a;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 250
    sget-object v4, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v3, v4}, Lka;->d(Lfm$a;)Lka;

    move-result-object v3

    .line 252
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lhb;->a()Lgy;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lju;->c()Ljl;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lgy;->a(Ljl;Lka;)Lka;

    move-result-object v10

    .line 254
    new-instance v11, Lim;

    invoke-virtual/range {p2 .. p2}, Lju;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v11, v3, v2}, Lim;-><init>(Ljava/lang/Class;Z)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Lju;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5a
    :goto_5a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_148

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljm;

    move-object v8, v0

    invoke-virtual {v8}, Ljm;->e()I

    move-result v13

    if-lez v13, :cond_5a

    invoke-virtual {v9, v8}, Lgy;->l(Ljk;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v13, v3, :cond_e9

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljm;->a(I)Ljr;

    move-result-object v3

    invoke-virtual {v9, v3}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_ef

    :cond_86
    invoke-virtual {v8}, Ljm;->f()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_a1

    if-nez v2, :cond_96

    invoke-interface {v10, v8}, Lka;->a(Ljo;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_96
    iget-object v2, v11, Lim;->i:Ljm;

    const-string v3, "String"

    invoke-virtual {v11, v8, v2, v3}, Lim;->a(Ljm;Ljm;Ljava/lang/String;)Ljm;

    move-result-object v2

    iput-object v2, v11, Lim;->i:Ljm;

    goto :goto_5a

    :cond_a1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_a9

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_bc

    :cond_a9
    if-nez v2, :cond_b1

    invoke-interface {v10, v8}, Lka;->a(Ljo;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_b1
    iget-object v2, v11, Lim;->j:Ljm;

    const-string v3, "int"

    invoke-virtual {v11, v8, v2, v3}, Lim;->a(Ljm;Ljm;Ljava/lang/String;)Ljm;

    move-result-object v2

    iput-object v2, v11, Lim;->j:Ljm;

    goto :goto_5a

    :cond_bc
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_c4

    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_d7

    :cond_c4
    if-nez v2, :cond_cc

    invoke-interface {v10, v8}, Lka;->a(Ljo;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_cc
    iget-object v2, v11, Lim;->k:Ljm;

    const-string v3, "long"

    invoke-virtual {v11, v8, v2, v3}, Lim;->a(Ljm;Ljm;Ljava/lang/String;)Ljm;

    move-result-object v2

    iput-object v2, v11, Lim;->k:Ljm;

    goto :goto_5a

    :cond_d7
    invoke-virtual {v9, v8}, Lgy;->l(Ljk;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v11, Lim;->l:Ljm;

    const-string v3, "long"

    invoke-virtual {v11, v8, v2, v3}, Lim;->a(Ljm;Ljm;Ljava/lang/String;)Ljm;

    move-result-object v2

    iput-object v2, v11, Lim;->l:Ljm;

    goto/16 :goto_5a

    :cond_e9
    invoke-virtual {v9, v8}, Lgy;->l(Ljk;)Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_ef
    new-array v14, v13, [Liy;

    const/4 v2, 0x0

    move v6, v2

    :goto_f3
    if-ge v6, v13, :cond_143

    invoke-virtual {v8, v6}, Ljm;->a(I)Ljr;

    move-result-object v7

    if-nez v7, :cond_12e

    const/4 v2, 0x0

    move-object v5, v2

    :goto_fd
    if-eqz v5, :cond_105

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_134

    :cond_105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12e
    invoke-virtual {v9, v7}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_fd

    :cond_134
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lii;->a(Lhb;Lju;Ljava/lang/String;ILjr;)Liy;

    move-result-object v2

    aput-object v2, v14, v6

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_f3

    :cond_143
    invoke-virtual {v11, v8, v14}, Lim;->a(Ljm;[Liy;)V

    goto/16 :goto_5a

    :cond_148
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object v6, v9

    move-object v7, v11

    .line 256
    invoke-direct/range {v2 .. v7}, Lii;->a(Lhb;Lju;Lka;Lgy;Lim;)V

    .line 257
    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lih;->a(Lim;)V

    .line 258
    return-void
.end method

.method private a(Lhb;Lju;Lka;Lgy;Lim;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lju;",
            "Lka",
            "<*>;",
            "Lgy;",
            "Lim;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual/range {p2 .. p2}, Lju;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_139

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljp;

    move-object v10, v0

    .line 336
    invoke-virtual {v10}, Ljp;->e()I

    move-result v12

    .line 337
    if-lez v12, :cond_8

    .line 338
    move-object/from16 v0, p4

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgy;->l(Ljk;)Z

    move-result v4

    .line 342
    const/4 v5, 0x1

    if-ne v12, v5, :cond_d7

    .line 346
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljp;->a(I)Ljr;

    move-result-object v5

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v5

    .line 347
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e0

    .line 348
    :cond_3a
    invoke-virtual {v10}, Ljp;->d()Ljava/lang/Class;

    move-result-object v5

    .line 349
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_63

    .line 350
    if-nez v4, :cond_4d

    move-object/from16 v0, p3

    move-object v1, v10

    invoke-interface {v0, v1}, Lka;->a(Ljo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 351
    :cond_4d
    move-object/from16 v0, p5

    iget-object v0, v0, Lim;->c:Ljp;

    move-object v4, v0

    const-string v5, "String"

    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lim;->a(Ljp;Ljp;Ljava/lang/String;)Ljp;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    iput-object v0, v1, Lim;->c:Ljp;

    goto :goto_8

    .line 355
    :cond_63
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_6b

    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_8d

    .line 356
    :cond_6b
    if-nez v4, :cond_76

    move-object/from16 v0, p3

    move-object v1, v10

    invoke-interface {v0, v1}, Lka;->a(Ljo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 357
    :cond_76
    move-object/from16 v0, p5

    iget-object v0, v0, Lim;->d:Ljp;

    move-object v4, v0

    const-string v5, "int"

    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lim;->a(Ljp;Ljp;Ljava/lang/String;)Ljp;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    iput-object v0, v1, Lim;->d:Ljp;

    goto/16 :goto_8

    .line 361
    :cond_8d
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_95

    const-class v6, Ljava/lang/Long;

    if-ne v5, v6, :cond_b7

    .line 362
    :cond_95
    if-nez v4, :cond_a0

    move-object/from16 v0, p3

    move-object v1, v10

    invoke-interface {v0, v1}, Lka;->a(Ljo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    :cond_a0
    move-object/from16 v0, p5

    iget-object v0, v0, Lim;->e:Ljp;

    move-object v4, v0

    const-string v5, "long"

    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lim;->a(Ljp;Ljp;Ljava/lang/String;)Ljp;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    iput-object v0, v1, Lim;->e:Ljp;

    goto/16 :goto_8

    .line 367
    :cond_b7
    move-object/from16 v0, p4

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgy;->l(Ljk;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 368
    move-object/from16 v0, p5

    iget-object v0, v0, Lim;->f:Ljp;

    move-object v4, v0

    const-string v5, "long"

    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lim;->a(Ljp;Ljp;Ljava/lang/String;)Ljp;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    iput-object v0, v1, Lim;->f:Ljp;

    goto/16 :goto_8

    .line 376
    :cond_d7
    move-object/from16 v0, p4

    move-object v1, v10

    invoke-virtual {v0, v1}, Lgy;->l(Ljk;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 377
    :cond_e0
    new-array v13, v12, [Liy;

    .line 382
    const/4 v4, 0x0

    move v8, v4

    :goto_e4
    if-ge v8, v12, :cond_130

    .line 383
    invoke-virtual {v10, v8}, Ljp;->a(I)Ljr;

    move-result-object v9

    .line 384
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v7

    .line 386
    if-eqz v7, :cond_f9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_122

    .line 387
    :cond_f9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Argument #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of factory method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_122
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    .line 389
    invoke-virtual/range {v4 .. v9}, Lii;->a(Lhb;Lju;Ljava/lang/String;ILjr;)Liy;

    move-result-object v4

    aput-object v4, v13, v8

    .line 382
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_e4

    .line 391
    :cond_130
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lim;->a(Ljp;[Liy;)V

    goto/16 :goto_8

    .line 393
    :cond_139
    return-void
.end method

.method private b(Lhb;Lju;Lih;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p1}, Lhb;->c()Lka;

    move-result-object v1

    .line 409
    sget-object v2, Lhb$a;->AUTO_DETECT_SETTERS:Lhb$a;

    invoke-virtual {p1, v2}, Lhb;->a(Lhb$a;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 410
    sget-object v2, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v1, v2}, Lka;->c(Lfm$a;)Lka;

    move-result-object v1

    .line 412
    :cond_12
    sget-object v2, Lhb$a;->AUTO_DETECT_FIELDS:Lhb$a;

    invoke-virtual {p1, v2}, Lhb;->a(Lhb$a;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 413
    sget-object v2, Lfm$a;->NONE:Lfm$a;

    invoke-interface {v1, v2}, Lka;->e(Lfm$a;)Lka;

    move-result-object v1

    .line 416
    :cond_20
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v2

    invoke-virtual {p2}, Lju;->c()Ljl;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lgy;->a(Ljl;Lka;)Lka;

    move-result-object v3

    .line 418
    invoke-virtual {p2, v3}, Lju;->a(Lka;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 420
    invoke-virtual {p2}, Lju;->k()Ljp;

    move-result-object v5

    .line 423
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v1

    .line 426
    invoke-virtual {p2}, Lju;->c()Ljl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgy;->c(Ljl;)Ljava/lang/Boolean;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_49

    .line 428
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 429
    invoke-virtual {p3, v2}, Lih;->a(Z)V

    .line 433
    :cond_49
    invoke-virtual {p2}, Lju;->c()Ljl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgy;->b(Ljl;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmd;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v6

    .line 440
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 441
    invoke-virtual {p3, v1}, Lih;->b(Ljava/lang/String;)V

    goto :goto_59

    .line 444
    :cond_69
    invoke-virtual {p2}, Lju;->c()Ljl;

    move-result-object v2

    .line 445
    iget-object v1, v2, Ljl;->l:Ljava/util/List;

    if-nez v1, :cond_8f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_79
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp;

    .line 446
    invoke-static {v1}, Lju;->a(Ljp;)Ljava/lang/String;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_79

    .line 448
    invoke-virtual {p3, v1}, Lih;->b(Ljava/lang/String;)V

    goto :goto_79

    .line 445
    :cond_8f
    iget-object v1, v2, Ljl;->l:Ljava/util/List;

    goto :goto_75

    .line 451
    :cond_92
    iget-object v1, v2, Ljl;->m:Ljava/util/List;

    if-nez v1, :cond_b2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn;

    .line 452
    invoke-virtual {v1}, Ljn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lih;->b(Ljava/lang/String;)V

    goto :goto_9e

    .line 451
    :cond_b2
    iget-object v1, v2, Ljl;->m:Ljava/util/List;

    goto :goto_9a

    .line 457
    :cond_b5
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_bd
    :goto_bd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 458
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bd

    .line 460
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp;

    invoke-direct {p0, p1, p2, v1, v2}, Lii;->a(Lhb;Lju;Ljava/lang/String;Ljp;)Liy;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_bd

    .line 462
    invoke-virtual {p3, v1}, Lih;->a(Liy;)V

    goto :goto_bd

    .line 466
    :cond_e7
    if-eqz v5, :cond_111

    .line 467
    sget-object v1, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v1}, Lhb;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-virtual {v5}, Ljp;->h()V

    :cond_f4
    invoke-static {p1, v5}, Lii;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljp;->b(I)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v2

    iget-object v7, v5, Ljp;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_158

    new-instance v5, Lix;

    invoke-direct {v5, v2, v7}, Lix;-><init>(Lnd;Ljava/lang/reflect/Method;)V

    invoke-virtual {v5, v1}, Lix;->a(Lhf;)V

    move-object v1, v5

    :goto_10e
    invoke-virtual {p3, v1}, Lih;->a(Lix;)V

    .line 470
    :cond_111
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 475
    const/4 v1, 0x0

    invoke-virtual {p2, v3, v5, v1}, Lju;->a(Lka;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_127
    :goto_127
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_127

    invoke-virtual {p3, v2}, Lih;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_127

    .line 479
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn;

    invoke-direct {p0, p1, p2, v2, v1}, Lii;->a(Lhb;Lju;Ljava/lang/String;Ljn;)Liy;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_127

    .line 481
    invoke-virtual {p3, v1}, Lih;->a(Liy;)V

    .line 482
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_127

    .line 467
    :cond_158
    invoke-static {p1, v5, v2}, Lii;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v1

    new-instance v2, Lix;

    invoke-direct {v2, v1, v7}, Lix;-><init>(Lnd;Ljava/lang/reflect/Method;)V

    move-object v1, v2

    goto :goto_10e

    .line 493
    :cond_163
    sget-object v1, Lhb$a;->USE_GETTERS_AS_SETTERS:Lhb$a;

    invoke-virtual {p1, v1}, Lhb;->a(Lhb$a;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 499
    invoke-virtual {p2, v3, v5}, Lju;->a(Lka;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 501
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_177
    :goto_177
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp;

    .line 504
    invoke-virtual {v1}, Ljp;->c()Ljava/lang/Class;

    move-result-object v2

    .line 505
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_19d

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 506
    :cond_19d
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 509
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_177

    invoke-virtual {p3, v2}, Lih;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_177

    .line 510
    sget-object v4, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v4}, Lhb;->a(Lhb$a;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    invoke-virtual {v1}, Ljp;->h()V

    :cond_1bc
    invoke-virtual {p2}, Lju;->e()Lma;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljp;->a(Lma;)Lnd;

    move-result-object v4

    invoke-static {p1, v1}, Lii;->a(Lhb;Ljk;)Lhf;

    move-result-object v7

    iget-object v8, v1, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-static {p1, v1, v4}, Lii;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v1

    invoke-virtual {v1}, Lnd;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lht;

    new-instance v4, Liy$e;

    invoke-direct {v4, v2, v1, p0, v8}, Liy$e;-><init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Method;)V

    if-eqz v7, :cond_1de

    invoke-virtual {v4, v7}, Liy;->a(Lhf;)V

    :cond_1de
    invoke-virtual {p3, v4}, Lih;->a(Liy;)V

    .line 511
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_177

    .line 516
    :cond_1e5
    return-void
.end method


# virtual methods
.method public final a(Lhb;Lnd;Lhe;)Lhf;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            "Lhe;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lig;->a(Lhb;Lnd;Lhe;)Lhf;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_7

    .line 116
    :goto_6
    return-object v0

    .line 62
    :cond_7
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deserialize Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (of type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as a Bean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    invoke-static {v0}, Lme;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a Bean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67
    invoke-static {v0}, Lme;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deserialize Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (of type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as a Bean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_9a
    invoke-virtual {p1, p2}, Lhb;->a(Lnd;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 67
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p1, v1}, Lii;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_ad

    move-object v0, v1

    .line 69
    goto/16 :goto_6

    .line 72
    :cond_ad
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lii;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_131

    .line 75
    invoke-virtual {p1, v1}, Lhb;->a(Lnd;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 82
    :goto_c5
    invoke-virtual {v1}, Lnd;->j()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 83
    new-instance v2, Ljg;

    invoke-direct {v2, v1}, Ljg;-><init>(Lnd;)V

    invoke-direct {p0, p1, v0, v2}, Lii;->a(Lhb;Lju;Lih;)V

    invoke-direct {p0, p1, v0, v2}, Lii;->b(Lhb;Lju;Lih;)V

    const-string v1, "initCause"

    sget-object v3, Lii;->h:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Lju;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljp;

    move-result-object v1

    if-eqz v1, :cond_eb

    const-string v3, "cause"

    invoke-direct {p0, p1, v0, v3, v1}, Lii;->a(Lhb;Lju;Ljava/lang/String;Ljp;)Liy;

    move-result-object v0

    if-eqz v0, :cond_eb

    invoke-virtual {v2, v0}, Lih;->a(Liy;)V

    :cond_eb
    const-string v0, "localizedMessage"

    invoke-virtual {v2, v0}, Lih;->b(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {v2, v0}, Lih;->b(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_6

    .line 90
    :cond_f8
    invoke-virtual {v1}, Lnd;->b()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 95
    invoke-virtual {p1}, Lhb;->g()Lgx;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_124

    .line 97
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v3

    .line 98
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v0

    invoke-virtual {v3, v0}, Lgy;->d(Ljl;)Lke;

    move-result-object v0

    if-nez v0, :cond_124

    .line 99
    invoke-virtual {v2}, Lgx;->a()Lnd;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_124

    .line 104
    invoke-virtual {p1, v2}, Lhb;->a(Lnd;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 105
    invoke-direct {p0, p1, v2, v0}, Lii;->a(Lhb;Lnd;Lju;)Lhf;

    move-result-object v0

    goto/16 :goto_6

    .line 110
    :cond_124
    new-instance v0, Lic;

    invoke-direct {v0, v1}, Lic;-><init>(Lnd;)V

    goto/16 :goto_6

    .line 116
    :cond_12b
    invoke-direct {p0, p1, v1, v0}, Lii;->a(Lhb;Lnd;Lju;)Lhf;

    move-result-object v0

    goto/16 :goto_6

    :cond_131
    move-object v1, p2

    goto :goto_c5
.end method

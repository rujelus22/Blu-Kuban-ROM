.class public Lv/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lw/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lv/a;->b:Lw/b;

    return-void
.end method

.method static a(Lu/x;I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lu/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_15

    invoke-virtual {p0, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->y()I

    move-result v1

    if-le v1, p1, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    invoke-virtual {p0}, Lu/x;->k()I

    move-result v0

    goto :goto_11
.end method

.method static a(ILv/C;)Ljava/util/ArrayList;
    .registers 14

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lv/C;->d()[Lw/f;

    move-result-object v10

    array-length v11, v10

    move v8, v7

    :goto_d
    if-ge v8, v11, :cond_4b

    aget-object v3, v10, v8

    invoke-virtual {v3}, Lw/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lu/K;

    const/4 v1, 0x3

    invoke-virtual {v3}, Lw/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lw/f;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lu/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_d

    :cond_2e
    sget-object v0, Lw/e;->a:Lw/f;

    if-eq v3, v0, :cond_2a

    packed-switch p0, :pswitch_data_4c

    move v1, v7

    :goto_36
    new-instance v0, Lu/K;

    invoke-virtual {v3}, Lw/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lw/f;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lu/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :pswitch_49
    const/4 v1, 0x2

    goto :goto_36

    :cond_4b
    return-object v9

    :pswitch_data_4c
    .packed-switch 0x7
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method static a(Lw/b;Lv/A;)Ljava/util/LinkedList;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_6
    iget-object v2, p1, Lv/A;->c:[Lw/e;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    new-instance v2, Lv/C;

    invoke-direct {v2, p0, p1, v0}, Lv/C;-><init>(Lw/b;Lv/A;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lv/C;->f()I

    move-result v0

    goto :goto_6

    :cond_18
    return-object v1
.end method

.method static a(Lv/A;Ljava/util/List;Ljava/util/List;Lt/R;)Ljava/util/List;
    .registers 27

    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lv/A;->c:[Lw/e;

    move-object/from16 v21, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    const/4 v7, 0x0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_19
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_96

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lv/C;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lv/h;

    invoke-virtual {v9}, Lv/C;->e()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lv/C;->a(Lt/R;)D

    move-result-wide v4

    double-to-int v8, v4

    if-nez v3, :cond_91

    const/4 v2, 0x0

    :goto_44
    aget-object v3, v21, v3

    invoke-static {v2}, Lv/b;->a(Lw/e;)F

    move-result v10

    invoke-static {v3}, Lv/b;->b(Lw/e;)F

    move-result v11

    if-nez v2, :cond_51

    move v10, v11

    :cond_51
    new-instance v2, Lu/M;

    invoke-virtual {v9}, Lv/C;->i()Lt/L;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lv/h;->a()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lv/h;->b()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v9}, Lv/C;->a()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lv/h;->c()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v16 .. v16}, Lv/h;->d()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v18}, Lu/M;-><init>(Lt/L;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lt/R;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_19

    :cond_91
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v21, v2

    goto :goto_44

    :cond_96
    return-object v20
.end method

.method private static a(Lu/I;IIII)Lu/I;
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lu/I;->t()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/K;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lu/I;->v()Ljava/util/List;

    move-result-object v3

    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/j;

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_58
    invoke-virtual/range {p0 .. p0}, Lu/I;->j()Lu/I;

    move-result-object v3

    if-nez v3, :cond_a4

    const/4 v9, 0x0

    :goto_5f
    if-nez v3, :cond_a9

    const/4 v10, 0x0

    :goto_62
    new-instance v3, Lu/M;

    invoke-virtual/range {p0 .. p0}, Lu/I;->a()Lt/L;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lu/I;->b()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lu/I;->c()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lu/I;->d()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lu/I;->g()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lu/I;->h()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lu/I;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lu/I;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lu/I;->n()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lu/I;->u()Ljava/util/List;

    move-result-object v18

    move/from16 v8, p2

    invoke-direct/range {v3 .. v19}, Lu/M;-><init>(Lt/L;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lu/I;->a(Lu/M;III)Lu/I;

    move-result-object v3

    return-object v3

    :cond_a4
    invoke-virtual {v3}, Lu/I;->e()I

    move-result v9

    goto :goto_5f

    :cond_a9
    invoke-virtual {v3}, Lu/I;->f()I

    move-result v10

    goto :goto_62
.end method

.method private static a(Lu/I;Lt/R;)Lu/M;
    .registers 20

    invoke-virtual/range {p0 .. p0}, Lu/I;->t()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/K;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_31
    invoke-virtual/range {p1 .. p1}, Lt/R;->a()I

    move-result v6

    add-int/lit8 v1, v6, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lt/R;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lt/R;->b()Lt/L;

    move-result-object v2

    invoke-static {v1, v2}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v1

    double-to-float v9, v1

    const/4 v14, 0x0

    new-instance v1, Lu/M;

    invoke-virtual/range {p1 .. p1}, Lt/R;->b()Lt/L;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lu/I;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lu/I;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lu/I;->u()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move v10, v9

    invoke-direct/range {v1 .. v17}, Lu/M;-><init>(Lt/L;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static a(ILu/x;IILjava/util/ArrayList;Lt/R;)Z
    .registers 14

    invoke-static {p1, p0}, Lv/a;->a(Lu/x;I)I

    move-result v1

    invoke-virtual {p1}, Lu/x;->k()I

    move-result v0

    if-lt v1, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v2

    invoke-virtual {p1}, Lu/x;->n()Lt/P;

    move-result-object v4

    add-int/lit8 v0, p0, 0x1

    :goto_16
    invoke-virtual {v2}, Lu/I;->y()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {v4, v0}, Lt/P;->a(I)Lt/L;

    move-result-object v3

    invoke-virtual {p5, v3}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    move v0, v1

    :goto_27
    invoke-virtual {p1}, Lu/x;->k()I

    move-result v2

    if-ge v0, v2, :cond_79

    invoke-virtual {p1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v5

    invoke-virtual {p5}, Lt/R;->a()I

    move-result v6

    if-ne v0, v1, :cond_68

    move v2, p3

    move v3, p2

    :goto_39
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7, v6, v3, v2}, Lv/a;->a(Lu/I;IIII)Lu/I;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lu/I;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lu/x;->k()I

    move-result v3

    if-ge v2, v3, :cond_71

    invoke-virtual {p1, v2}, Lu/x;->a(I)Lu/I;

    move-result-object v2

    invoke-virtual {v2}, Lu/I;->y()I

    move-result v2

    :goto_58
    invoke-virtual {v5}, Lu/I;->y()I

    move-result v3

    :goto_5c
    if-ge v3, v2, :cond_76

    invoke-virtual {v4, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {p5, v5}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_68
    invoke-virtual {v5}, Lu/I;->e()I

    move-result v3

    invoke-virtual {v5}, Lu/I;->f()I

    move-result v2

    goto :goto_39

    :cond_71
    invoke-virtual {v4}, Lt/P;->b()I

    move-result v2

    goto :goto_58

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_79
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method a(Ljava/util/List;)Ljava/util/List;
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/C;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lv/a;->a(ILv/C;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Lv/i;

    iget-object v6, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lv/C;->g()Lw/e;

    move-result-object v0

    invoke-static {v0}, Lv/b;->c(Lw/e;)I

    move-result v0

    invoke-direct {v5, v6, v2, v0}, Lv/i;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_2c
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_a4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lv/C;

    invoke-virtual {v1}, Lv/C;->b()I

    move-result v5

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/C;

    invoke-static {v5, v0}, Lv/a;->a(ILv/C;)Ljava/util/ArrayList;

    move-result-object v0

    packed-switch v5, :pswitch_data_a6

    :goto_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2c

    :pswitch_4e
    new-instance v6, Lv/n;

    iget-object v7, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lv/C;->c()I

    move-result v1

    invoke-direct {v6, v7, v0, v5, v1}, Lv/n;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :pswitch_5d
    new-instance v5, Lv/m;

    iget-object v6, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lv/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lv/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :pswitch_6c
    new-instance v5, Lv/l;

    iget-object v6, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lv/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lv/l;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :pswitch_7b
    new-instance v5, Lv/o;

    iget-object v6, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lv/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lv/o;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :pswitch_8a
    new-instance v1, Lv/k;

    iget-object v5, p0, Lv/a;->a:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Lv/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :pswitch_95
    new-instance v5, Lv/j;

    iget-object v6, p0, Lv/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lv/C;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lv/j;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_a4
    return-object v3

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

.method public a(Lv/A;Lu/P;Lu/x;)Lu/x;
    .registers 15

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v5, Lt/R;

    invoke-direct {v5}, Lt/R;-><init>()V

    iget-object v1, p0, Lv/a;->b:Lw/b;

    invoke-static {v1, p1}, Lv/a;->a(Lw/b;Lv/A;)Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lv/D;

    invoke-direct {v2, p1}, Lv/D;-><init>(Lv/A;)V

    invoke-virtual {v2, v1}, Lv/D;->a(Ljava/util/LinkedList;)V

    invoke-virtual {p0, v1}, Lv/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v5}, Lv/a;->a(Lv/A;Ljava/util/List;Ljava/util/List;Lt/R;)Ljava/util/List;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    move v3, v0

    move v2, v0

    :goto_29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4e

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/M;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/M;

    invoke-static {v1, v7, v2, v3}, Lu/I;->a(Lu/M;III)Lu/I;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lu/M;->f()I

    move-result v2

    invoke-virtual {v0}, Lu/M;->g()I

    move-result v3

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_29

    :cond_4e
    invoke-virtual {v5}, Lt/R;->b()Lt/L;

    move-result-object v0

    const-string v1, "Describer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Join point: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lt/L;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lt/R;->a()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    iget-object v0, p1, Lv/A;->b:Lv/d;

    iget v0, v0, Lv/d;->e:I

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lv/a;->a(ILu/x;IILjava/util/ArrayList;Lt/R;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {p3}, Lu/x;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    invoke-static {v0, v5}, Lv/a;->a(Lu/I;Lt/R;)Lu/M;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/M;

    invoke-virtual {v0}, Lu/M;->f()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/M;

    invoke-virtual {v0}, Lu/M;->g()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lu/I;->a(Lu/M;III)Lu/I;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Lu/I;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lv/q;

    invoke-direct {v0, v10}, Lv/q;-><init>([Lu/I;)V

    new-instance v1, Lv/c;

    invoke-direct {v1}, Lv/c;-><init>()V

    invoke-virtual {v1, v0}, Lv/c;->a(Lv/q;)I

    invoke-virtual {p3}, Lu/x;->d()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p3}, Lu/x;->m()Lu/P;

    move-result-object v3

    invoke-virtual {v5}, Lt/R;->d()Lt/P;

    move-result-object v5

    invoke-virtual {p3}, Lu/x;->q()I

    move-result v7

    invoke-virtual {p3}, Lu/x;->D()[Lu/b;

    move-result-object v8

    move-object v2, p2

    move-object v4, v10

    move-object v10, v6

    invoke-static/range {v0 .. v10}, Lu/x;->a(IILu/P;Lu/P;[Lu/I;Lt/P;Ljava/lang/String;I[Lu/b;ILjava/util/List;)Lu/x;

    move-result-object v0

    return-object v0
.end method

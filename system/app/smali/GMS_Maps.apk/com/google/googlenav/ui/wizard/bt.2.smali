.class public Lcom/google/googlenav/ui/wizard/bt;
.super Lcom/google/googlenav/ui/wizard/ej;


# instance fields
.field private k:Lau/b;

.field private l:Ljava/util/Vector;

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ej;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private E()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bt;->h:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bt;->a()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bt;->h:I

    return-void
.end method

.method private F()Lbb/o;
    .registers 8

    const/4 v2, 0x0

    new-instance v3, Lbb/n;

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x386

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->l:Ljava/util/Vector;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/util/Vector;Ljava/lang/String;)Lbb/p;

    move-result-object v5

    new-instance v0, Lbb/o;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bt;->l:Ljava/util/Vector;

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bt;->E()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bt;->l()V

    return-void
.end method

.method protected a(LaT/b;)LaT/a;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/em;->g:I

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/em;->g:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    :cond_12
    invoke-super/range {p0 .. p1}, Lcom/google/googlenav/ui/wizard/ej;->a(LaT/b;)LaT/a;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v1, v2}, Lau/b;->n(I)Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->C()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v1, v2}, Lau/b;->n(I)Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->i()Ljava/lang/String;

    move-result-object v14

    :goto_3a
    new-instance v1, LaT/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/em;->g:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/em;->i:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/em;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v9, v9, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v10, v10, Lcom/google/googlenav/ui/wizard/em;->e:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v11, v11, Lcom/google/googlenav/ui/wizard/em;->f:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    invoke-virtual {v13}, Lau/b;->aB()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v15, v15, Lcom/google/googlenav/ui/wizard/em;->c:Ljava/lang/String;

    move-object/from16 v16, p1

    invoke-direct/range {v1 .. v16}, LaT/a;-><init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IIIILjava/lang/String;Ljava/lang/String;LaT/b;)V

    goto :goto_16

    :cond_8a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v1, v2}, Lau/b;->n(I)Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->B()Ljava/lang/String;

    move-result-object v14

    goto :goto_3a
.end method

.method public a(Lau/b;LaJ/H;IILjava/util/Vector;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/bt;->l:Ljava/util/Vector;

    const/16 v0, 0x385

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-super {p0, p2, p3, p4, v0}, Lcom/google/googlenav/ui/wizard/ej;->a(LaJ/H;IILcom/google/googlenav/ui/wizard/z;)V

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x5ed

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3c

    const/16 v0, 0x386

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    :goto_34
    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v0, v2}, Lau/b;->n(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->C()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6e

    invoke-virtual {v0}, Lau/s;->i()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/googlenav/ui/bh;

    const/4 v3, 0x0

    const/16 v4, 0x387

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    goto :goto_34

    :cond_6e
    invoke-virtual {v0}, Lau/s;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 15

    const/4 v2, 0x4

    const/4 v9, 0x0

    const/4 v1, 0x2

    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_9
    packed-switch p1, :pswitch_data_fa

    :pswitch_c
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/ej;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_9

    :pswitch_13
    iput-boolean v9, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bt;->a(I)V

    move v0, v10

    goto :goto_10

    :pswitch_1a
    iput p2, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v2, v3}, Lau/b;->h(I)LaJ/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v2, v3}, Lau/b;->i(I)Lt/y;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bt;->a(I)V

    move v0, v10

    goto :goto_10

    :pswitch_39
    const/16 v1, 0x39c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;II)V

    move v0, v10

    goto :goto_10

    :pswitch_45
    const/16 v1, 0x39d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;II)V

    move v0, v10

    goto :goto_10

    :pswitch_51
    const/16 v1, 0x39e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;II)V

    move v0, v10

    goto :goto_10

    :pswitch_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    invoke-virtual {v2, v3}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    const/16 v0, 0x3a0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;II)V

    move v0, v10

    goto :goto_10

    :pswitch_88
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    invoke-virtual {v1, v2}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    :cond_aa
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/em;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v6, v6, Lcom/google/googlenav/ui/wizard/em;->e:I

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v7, v7, Lcom/google/googlenav/ui/wizard/em;->f:I

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/hM;->a(LaJ/B;Lt/y;Ljava/lang/String;Ljava/lang/String;LaJ/H;IILcom/google/googlenav/ui/wizard/z;Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bt;->E()V

    move v0, v10

    goto/16 :goto_10

    :pswitch_cf
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/em;->d:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->D()LaJ/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    invoke-virtual {v2, v3}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v2

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    const/16 v0, 0x3a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9, v1}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;II)V

    move v0, v10

    goto/16 :goto_10

    nop

    :pswitch_data_fa
    .packed-switch 0x5e1
        :pswitch_cf
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_39
        :pswitch_45
        :pswitch_51
        :pswitch_5d
        :pswitch_88
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method protected b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    invoke-virtual {v0}, Lau/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v1, v2}, Lau/b;->h(I)LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    invoke-virtual {v1, v2}, Lau/b;->i(I)Lt/y;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    :goto_29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    invoke-virtual {v1}, Lau/b;->an()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/em;->c:Ljava/lang/String;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/ej;->b()V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->a:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iput-object v2, v0, Lcom/google/googlenav/ui/wizard/em;->b:Lt/y;

    goto :goto_29
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->k:Lau/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bt;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/ej;->c()V

    return-void
.end method

.method protected e()S
    .registers 2

    const/16 v0, 0x56

    return v0
.end method

.method protected f()Lbb/o;
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bt;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bt;->F()Lbb/o;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/ej;->f()Lbb/o;

    move-result-object v0

    goto :goto_9
.end method

.method protected g()Lbb/o;
    .registers 8

    const/16 v6, 0x3a6

    const/4 v5, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x6

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    const/16 v1, 0x39c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e7

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v0}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x39d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e8

    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v3}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x39e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e9

    const/4 v3, 0x3

    invoke-static {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x3a0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5ea

    const/4 v2, 0x4

    invoke-static {v0, v1, v4, v3}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x39f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5eb

    const/4 v3, 0x5

    invoke-static {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    const/16 v0, 0x3a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5e1

    invoke-static {v0, v1, v4, v3}, Lcom/google/googlenav/ui/wizard/bt;->a(Ljava/lang/String;ILjava/util/Vector;I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_80

    new-instance v3, Lbb/n;

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-direct {v3, v0, v5}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    :goto_73
    new-instance v0, Lbb/o;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bt;->D()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bt;->a:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0

    :cond_80
    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->a:Ljava/lang/String;

    move-object v3, v5

    goto :goto_73
.end method

.method public o()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bt;->h:I

    packed-switch v0, :pswitch_data_2a

    :pswitch_6
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/ej;->o()V

    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bt;->a(I)V

    goto :goto_9

    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bt;->g:Lcom/google/googlenav/ui/wizard/em;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/em;->g:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bt;->n:Z

    if-eqz v0, :cond_24

    :cond_20
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/bt;->a(I)V

    goto :goto_9

    :cond_24
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bt;->a(I)V

    goto :goto_9

    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_e
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

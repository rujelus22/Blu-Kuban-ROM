.class public LaM/bx;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements LaM/k;
.implements Las/h;


# instance fields
.field protected B:Ljava/lang/String;

.field private C:Lcom/google/googlenav/ui/wizard/dG;

.field private D:I


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    .line 73
    iput v2, p0, LaM/bx;->D:I

    .line 102
    new-instance v0, Lcom/google/googlenav/bw;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/bw;-><init>(Lax/r;LaM/k;)V

    iput-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    .line 107
    invoke-virtual {p0, v2}, LaM/bx;->i(Z)V

    .line 108
    return-void
.end method

.method private bL()V
    .registers 4

    .prologue
    .line 638
    const/4 v0, 0x1

    .line 639
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/bB;

    invoke-direct {v2, p0}, LaM/bB;-><init>(LaM/bx;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 649
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0}, LaM/bx;->bH()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-interface {v1, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 414
    invoke-virtual {v1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v1

    .line 416
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 418
    iget-object v3, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    invoke-static {v1}, Lad/y;->c(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v1

    invoke-interface {v3, v1, v2, v4, v4}, Lcom/google/googlenav/ui/wizard/dG;->a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V

    .line 419
    iget-object v1, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    instance-of v1, v1, Lcom/google/googlenav/ui/wizard/dK;

    if-nez v1, :cond_67

    .line 420
    :goto_37
    iput-object v4, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    .line 423
    :cond_39
    if-eqz v0, :cond_66

    .line 424
    invoke-virtual {p0}, LaM/bx;->n()V

    .line 426
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ad()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 430
    invoke-virtual {p0}, LaM/bx;->bJ()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 435
    :cond_55
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 437
    :cond_66
    return-void

    .line 419
    :cond_67
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private k(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, LaM/bx;->bJ()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/eO;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l(I)V
    .registers 5
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0}, LaM/bx;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge p1, v0, :cond_c

    if-gez p1, :cond_d

    .line 381
    :cond_c
    :goto_c
    return-void

    .line 360
    :cond_d
    invoke-virtual {p0}, LaM/bx;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    iget-object v1, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    if-eqz v1, :cond_23

    .line 362
    invoke-direct {p0, v0}, LaM/bx;->d(Ljava/lang/String;)V

    goto :goto_c

    .line 364
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bx;->a(Ljava/lang/String;Z)V

    .line 369
    iput p1, p0, LaM/bx;->D:I

    .line 371
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ad()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 374
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->A()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 377
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_c
.end method


# virtual methods
.method public D_()V
    .registers 1

    .prologue
    .line 660
    invoke-direct {p0}, LaM/bx;->bL()V

    .line 661
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 665
    invoke-direct {p0}, LaM/bx;->bL()V

    .line 666
    return-void
.end method

.method public F()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0}, LaM/bx;->az()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, LaM/bx;->D:I

    if-gez v1, :cond_c

    .line 707
    :cond_b
    :goto_b
    return v0

    .line 706
    :cond_c
    invoke-virtual {p0, v0}, LaM/bx;->i(Z)V

    .line 707
    iget v0, p0, LaM/bx;->D:I

    goto :goto_b
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 671
    return-void
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 655
    invoke-direct {p0}, LaM/bx;->bL()V

    .line 656
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 676
    return-void
.end method

.method protected O()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-super {p0}, LaM/m;->X()Z

    move-result v1

    .line 459
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bw;->a(Z)Z

    move-result v2

    .line 461
    if-nez v1, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    .line 194
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/bx;->b(I)V

    .line 195
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-virtual {p0, p2}, LaM/bx;->b(Ljava/lang/String;)I

    move-result v0

    .line 606
    invoke-virtual {p0}, LaM/bx;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_28

    .line 608
    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    .line 609
    iget-object v2, p0, LaM/bx;->c:Lat/p;

    iget-object v3, p0, LaM/bx;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 610
    invoke-virtual {p0, v0}, LaM/bx;->c(I)Lcom/google/googlenav/e;

    move-result-object v0

    iget-object v1, p0, LaM/bx;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LaM/bx;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/u;II)V

    .line 613
    :cond_28
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dG;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    .line 352
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, LaM/bx;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bw;

    .line 385
    invoke-virtual {v0, p1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;)I

    move-result v0

    .line 386
    const/4 v2, -0x1

    if-eq v0, v2, :cond_30

    .line 387
    invoke-virtual {p0, v0}, LaM/bx;->b(I)V

    .line 388
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->d(LaM/i;)V

    .line 389
    invoke-virtual {p0}, LaM/bx;->bF()V

    .line 395
    iput v1, p0, LaM/bx;->D:I

    .line 397
    if-eqz p2, :cond_31

    .line 398
    const/16 v0, 0xe

    .line 400
    :goto_23
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bx;->a(ILjava/lang/Object;)V

    .line 403
    invoke-virtual {p0}, LaM/bx;->bH()Lax/m;

    move-result-object v0

    const-string v1, "s"

    invoke-interface {v0, v1, p1}, Lax/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_30
    return-void

    :cond_31
    move v0, v1

    goto :goto_23
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    .line 222
    sparse-switch p1, :sswitch_data_7a

    .line 272
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :cond_e
    :goto_e
    return v0

    .line 224
    :sswitch_f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 225
    invoke-virtual {p0}, LaM/bx;->an()Z

    .line 226
    invoke-virtual {p0, v0}, LaM/bx;->b(Z)V

    goto :goto_e

    .line 228
    :cond_20
    iget-object v1, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, LaM/bx;->a(Ljava/lang/Object;)V

    goto :goto_e

    .line 233
    :sswitch_2e
    invoke-direct {p0, p2}, LaM/bx;->k(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_e

    .line 235
    invoke-virtual {p0, v1}, LaM/bx;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, LaM/bx;->l(I)V

    goto :goto_e

    .line 240
    :sswitch_3c
    sget-object v2, Lax/I;->c:Lax/I;

    invoke-interface {v1, v2}, Lax/m;->a(Lax/I;)V

    .line 243
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 244
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    const/16 v2, 0x585

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 251
    :sswitch_57
    if-eqz p3, :cond_5e

    .line 252
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 257
    :cond_5e
    invoke-direct {p0, p2}, LaM/bx;->k(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_e

    .line 259
    invoke-virtual {p0, v1}, LaM/bx;->b(Ljava/lang/String;)I

    move-result v0

    .line 260
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bw;->a(I)V

    .line 264
    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_e

    .line 269
    :sswitch_75
    invoke-virtual {p0}, LaM/bx;->W()V

    goto :goto_e

    .line 222
    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_f
        0x3f9 -> :sswitch_75
        0x578 -> :sswitch_57
        0x579 -> :sswitch_3c
        0x57a -> :sswitch_2e
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, LaM/bx;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaM/bx;->g:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v0, :cond_10

    .line 284
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bx;->a(ILjava/lang/Object;)V

    .line 288
    const/4 v0, 0x1

    :goto_f
    return v0

    .line 286
    :cond_10
    invoke-super {p0, p1}, LaM/m;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    goto :goto_f
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public aU()V
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bw;->a()V

    .line 113
    invoke-super {p0}, LaM/m;->aU()V

    .line 114
    return-void
.end method

.method public aX()V
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, LaM/bx;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 120
    if-eqz v0, :cond_e

    .line 121
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/bx;->B:Ljava/lang/String;

    .line 123
    :cond_e
    invoke-super {p0}, LaM/m;->aX()V

    .line 124
    return-void
.end method

.method protected am()V
    .registers 4

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bw;->a(Ljava/lang/Runnable;)V

    .line 471
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bw;->b()Lcom/google/googlenav/bv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bv;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lax/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, LaM/bx;->bJ()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->j()V

    .line 541
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(LaM/i;)V
    .registers 5
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x1

    .line 158
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/by;

    invoke-direct {v2, p0}, LaM/by;-><init>(LaM/bx;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 171
    return-void
.end method

.method protected bB()I
    .registers 3

    .prologue
    .line 617
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v0

    iget-object v1, p0, LaM/bx;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;)I

    move-result v0

    .line 618
    if-gez v0, :cond_d

    .line 620
    const/4 v0, -0x2

    .line 622
    :cond_d
    return v0
.end method

.method protected bE()V
    .registers 2

    .prologue
    .line 449
    invoke-virtual {p0}, LaM/bx;->bB()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bx;->j(I)V

    .line 450
    return-void
.end method

.method public bF()V
    .registers 3

    .prologue
    .line 590
    invoke-virtual {p0}, LaM/bx;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 591
    if-eqz v0, :cond_18

    .line 592
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_18

    .line 594
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->Q()V

    .line 595
    iget-object v1, p0, LaM/bx;->d:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 598
    :cond_18
    return-void
.end method

.method public bG()Lcom/google/googlenav/bw;
    .registers 2

    .prologue
    .line 626
    invoke-virtual {p0}, LaM/bx;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bw;

    return-object v0
.end method

.method public bH()Lax/m;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    return-object v0
.end method

.method public bI()Lcom/google/googlenav/ui/ap;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Lcom/google/googlenav/ui/wizard/eO;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->A()Lcom/google/googlenav/ui/wizard/eO;

    move-result-object v0

    return-object v0
.end method

.method public bK()V
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->B_()V

    .line 716
    return-void
.end method

.method public bi()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public bj()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected bu()Z
    .registers 2

    .prologue
    .line 568
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 562
    invoke-virtual {p0, p1}, LaM/bx;->f(Lcom/google/googlenav/E;)I

    move-result v0

    .line 563
    if-eqz v0, :cond_b

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x2

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 684
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bw;->a(Ljava/lang/String;)I

    move-result v0

    .line 685
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 686
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1, p0}, LaM/am;->d(LaM/i;)V

    .line 687
    invoke-virtual {p0, v0}, LaM/bx;->b(I)V

    .line 688
    invoke-virtual {p0}, LaM/bx;->an()Z

    .line 689
    invoke-virtual {p0}, LaM/bx;->bF()V

    .line 693
    :cond_1d
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    const-string v2, "stars"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Ljava/lang/String;Z)V

    .line 551
    return-void
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0}, LaM/bx;->ah()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 205
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1b

    invoke-virtual {p0}, LaM/bx;->ag()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 206
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bx;->a(ILjava/lang/Object;)V

    .line 216
    :goto_1a
    return v0

    .line 211
    :cond_1b
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_33

    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->b()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 213
    invoke-virtual {p0}, LaM/bx;->h()V

    goto :goto_1a

    .line 216
    :cond_33
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 578
    packed-switch p1, :pswitch_data_a

    .line 585
    invoke-super {p0, p1}, LaM/m;->g(I)Z

    move-result v0

    :goto_7
    return v0

    .line 582
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    .line 578
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, LaM/bx;->by()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    :cond_8
    :goto_8
    return-void

    .line 303
    :cond_9
    iput-object v3, p0, LaM/bx;->C:Lcom/google/googlenav/ui/wizard/dG;

    .line 305
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_8e

    .line 340
    invoke-virtual {p0}, LaM/bx;->n()V

    goto :goto_8

    .line 308
    :sswitch_20
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, LaM/bx;->b(ILjava/lang/Object;)V

    goto :goto_8

    .line 312
    :sswitch_2e
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 313
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bx;->j(I)V

    goto :goto_8

    .line 317
    :sswitch_4a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/bx;->i(Z)V

    .line 318
    invoke-virtual {p0}, LaM/bx;->l()V

    goto :goto_8

    .line 321
    :sswitch_52
    invoke-virtual {p0}, LaM/bx;->n()V

    .line 322
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->k()V

    goto :goto_8

    .line 325
    :sswitch_5f
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->y()Lcom/google/googlenav/ui/wizard/dp;

    move-result-object v0

    const/16 v1, 0x32c

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/dp;->a(IILjava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, LaM/bx;->n()V

    goto :goto_8

    .line 330
    :sswitch_76
    invoke-virtual {p0}, LaM/bx;->Z()V

    .line 331
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->i(Ljava/lang/String;)V

    goto :goto_8

    .line 334
    :sswitch_81
    invoke-virtual {p0}, LaM/bx;->Z()V

    .line 337
    iget-object v0, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    const-string v1, "stars"

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 306
    nop

    :sswitch_data_8e
    .sparse-switch
        0x6 -> :sswitch_76
        0x7 -> :sswitch_2e
        0x9 -> :sswitch_20
        0xe -> :sswitch_4a
        0x10 -> :sswitch_52
        0x16 -> :sswitch_5f
        0x1c -> :sswitch_81
    .end sparse-switch
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bw;->b()Lcom/google/googlenav/bv;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/google/googlenav/bv;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 507
    :cond_19
    :goto_19
    return v0

    .line 483
    :cond_1a
    invoke-virtual {v1}, Lcom/google/googlenav/bv;->i()Z

    move-result v1

    if-nez v1, :cond_19

    .line 489
    invoke-virtual {p0}, LaM/bx;->bG()Lcom/google/googlenav/bw;

    move-result-object v0

    new-instance v1, LaM/bz;

    invoke-direct {v1, p0}, LaM/bz;-><init>(LaM/bx;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bw;->a(Ljava/lang/Runnable;)V

    .line 507
    const/4 v0, 0x1

    goto :goto_19
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 293
    new-instance v0, LaO/j;

    invoke-direct {v0, p0}, LaO/j;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected j(I)V
    .registers 4
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 441
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->a(I)V

    .line 442
    invoke-virtual {p0}, LaM/bx;->an()Z

    .line 443
    invoke-virtual {p0}, LaM/bx;->bF()V

    .line 444
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bx;->a(ILjava/lang/Object;)V

    .line 446
    :cond_18
    return-void
.end method

.method protected m()V
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 515
    if-nez v0, :cond_b

    .line 524
    :goto_a
    return-void

    .line 519
    :cond_b
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v1

    .line 520
    iget-object v2, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v2

    invoke-interface {v2, v1}, Lax/m;->a(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, LaM/bx;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lax/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-super {p0}, LaM/m;->m()V

    goto :goto_a
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    if-ltz v0, :cond_c

    .line 529
    invoke-super {p0}, LaM/m;->n()V

    .line 533
    :goto_b
    return-void

    .line 531
    :cond_c
    invoke-virtual {p0}, LaM/bx;->Z()V

    goto :goto_b
.end method

.method public s()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, LaM/bx;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    return-object v0
.end method

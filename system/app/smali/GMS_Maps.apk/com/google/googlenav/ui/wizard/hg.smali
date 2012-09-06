.class public Lcom/google/googlenav/ui/wizard/hG;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/google/googlenav/ui/wizard/hP;

.field protected c:I

.field protected i:I

.field protected j:Lcom/google/googlenav/ui/wizard/C;

.field private k:Z

.field private l:Lcom/google/googlenav/ui/wizard/hY;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->j:Lcom/google/googlenav/ui/wizard/C;

    .line 207
    new-instance v0, Lcom/google/googlenav/ui/wizard/hY;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/wizard/hY;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/hG;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hY;

    .line 208
    return-void
.end method

.method private B()V
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 457
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    const-string v1, ""

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    .line 464
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->e()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 465
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    .line 469
    :cond_4d
    new-instance v0, Lcom/google/googlenav/ui/wizard/hH;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hH;-><init>(Lcom/google/googlenav/ui/wizard/hG;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(LaG/b;)LaG/a;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 482
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hY;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hY;->a(LaG/a;)V

    .line 486
    :goto_65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    .line 487
    return-void

    .line 484
    :cond_6a
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(Lac/g;)V

    goto :goto_65
.end method

.method private C()V
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 550
    iget v1, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    packed-switch v1, :pswitch_data_38

    .line 565
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 569
    :goto_a
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v1, :cond_13

    .line 570
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 573
    :cond_13
    if-eqz v0, :cond_18

    .line 574
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 576
    :cond_18
    return-void

    .line 553
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->g()Lcom/google/googlenav/ui/view/android/bb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_a

    .line 556
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->y()Lcom/google/googlenav/ui/view/android/bb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_a

    .line 559
    :pswitch_27
    new-instance v1, Lcom/google/googlenav/ui/wizard/hI;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hI;-><init>(Lcom/google/googlenav/ui/wizard/hG;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_a

    .line 562
    :pswitch_2f
    new-instance v1, Lcom/google/googlenav/ui/wizard/hQ;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hQ;-><init>(Lcom/google/googlenav/ui/wizard/hG;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_a

    .line 550
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_27
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method

.method private D()Z
    .registers 2

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hG;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->D()Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 346
    iget v1, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    .line 347
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    .line 348
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 349
    iput v1, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    .line 350
    return-void
.end method

.method public static z()Ljava/lang/String;
    .registers 4

    .prologue
    .line 539
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 540
    if-nez v0, :cond_11

    .line 541
    const/16 v0, 0x458

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_10
    return-object v0

    :cond_11
    const/16 v1, 0x459

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public A()Las/g;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hY;

    return-object v0
.end method

.method protected Q_()S
    .registers 2

    .prologue
    .line 273
    const/16 v0, 0x4a

    return v0
.end method

.method public R_()Z
    .registers 2

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public S_()V
    .registers 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->j()V

    .line 609
    return-void
.end method

.method public T_()V
    .registers 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->i()V

    .line 355
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->j()V

    .line 356
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hG;->k:Z

    if-eqz v0, :cond_7

    .line 279
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 286
    :goto_6
    return v0

    .line 282
    :cond_7
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    .line 283
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->h()V

    .line 284
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    goto :goto_6

    .line 286
    :cond_15
    const/4 v0, 0x3

    goto :goto_6
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hG;->k:Z

    if-eqz v0, :cond_7

    .line 292
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 294
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x3

    goto :goto_6
.end method

.method protected a(LaG/b;)LaG/a;
    .registers 15
    .parameter

    .prologue
    .line 502
    new-instance v0, LaG/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/hP;->g:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v5, v5, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v6, v6, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v8, v8, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v9, v9, Lcom/google/googlenav/ui/wizard/hP;->e:I

    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v10, v10, Lcom/google/googlenav/ui/wizard/hP;->f:I

    iget-object v11, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v11, v11, Lcom/google/googlenav/ui/wizard/hP;->c:Ljava/lang/String;

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, LaG/a;-><init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IILjava/lang/String;LaG/b;)V

    return-object v0
.end method

.method protected a(I)V
    .registers 6
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    .line 261
    const-string v1, "m"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    iput p1, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    .line 266
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->C()V

    .line 267
    return-void
.end method

.method protected a(Lac/g;)V
    .registers 4
    .parameter

    .prologue
    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 494
    invoke-static {}, Lcom/google/googlenav/android/T;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 499
    :goto_9
    return-void

    .line 497
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x512

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->c(Lac/g;)V

    goto :goto_9
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    .line 600
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->j()V

    .line 601
    return-void
.end method

.method public a(Lat/H;IILcom/google/googlenav/ui/wizard/C;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/google/googlenav/ui/wizard/hP;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/hP;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/hP;->e:I

    .line 310
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p3, v0, Lcom/google/googlenav/ui/wizard/hP;->f:I

    .line 311
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    .line 312
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hG;->j:Lcom/google/googlenav/ui/wizard/C;

    .line 313
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->j()V

    .line 314
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    const/16 v0, 0x45d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v2, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v2}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    const/16 v3, 0x43f

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/dO;->b(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    const/16 v2, 0x453

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/dO;->c(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/dO;->d(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 448
    return-void
.end method

.method protected a(Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p2, v0, Lcom/google/googlenav/ui/wizard/hP;->g:I

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/hP;->h:Ljava/lang/String;

    .line 513
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    .line 514
    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    .line 518
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 360
    sparse-switch p1, :sswitch_data_d0

    .line 422
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/C;->a(IILjava/lang/Object;)Z

    move-result v7

    :goto_b
    return v7

    .line 362
    :sswitch_c
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_b

    .line 365
    :sswitch_10
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_b

    .line 368
    :sswitch_15
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_b

    .line 371
    :sswitch_19
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    const-string v1, "a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    if-ne v0, v6, :cond_4a

    .line 378
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->D()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 379
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->B()V

    goto :goto_b

    .line 381
    :cond_45
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_b

    .line 384
    :cond_4a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->B()V

    goto :goto_b

    .line 388
    :sswitch_4e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    const-string v1, "c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    goto :goto_b

    .line 393
    :sswitch_70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    goto :goto_b

    .line 396
    :sswitch_77
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->i()V

    .line 397
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    const-string v1, "p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 400
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_b

    .line 403
    :sswitch_8e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_9d

    move v4, v7

    :cond_9d
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    goto/16 :goto_b

    .line 410
    :sswitch_a2
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x44f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    goto/16 :goto_b

    .line 419
    :sswitch_bc
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    if-nez v1, :cond_cb

    move v4, v7

    :cond_cb
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/e;->a(Z)V

    goto/16 :goto_b

    .line 360
    :sswitch_data_d0
    .sparse-switch
        0x1f5 -> :sswitch_19
        0x1f6 -> :sswitch_4e
        0x5dd -> :sswitch_c
        0x5e3 -> :sswitch_70
        0x5e4 -> :sswitch_bc
        0x5e5 -> :sswitch_15
        0x5ee -> :sswitch_77
        0x5ef -> :sswitch_8e
        0x5f0 -> :sswitch_a2
        0x5f1 -> :sswitch_10
    .end sparse-switch
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 319
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hG;->i:I

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hG;->k:Z

    .line 321
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->C()V

    .line 322
    return-void
.end method

.method protected b(Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/hP;->i:Ljava/lang/String;

    .line 529
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    .line 530
    const-string v1, "ss"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/hP;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "si"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    .line 535
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 336
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 337
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method protected g()Lcom/google/googlenav/ui/view/android/bb;
    .registers 2

    .prologue
    .line 583
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    const-string v1, "b"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->i:I

    iget v1, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    if-ne v0, v1, :cond_52

    .line 223
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->Q_()S

    move-result v0

    const-string v1, "c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    iput v4, p0, Lcom/google/googlenav/ui/wizard/hG;->g:I

    .line 246
    :goto_45
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->j:Lcom/google/googlenav/ui/wizard/C;

    if-eqz v0, :cond_4e

    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->j:Lcom/google/googlenav/ui/wizard/C;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 249
    :cond_4e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    .line 252
    :goto_51
    return-void

    .line 227
    :cond_52
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    packed-switch v0, :pswitch_data_70

    goto :goto_45

    .line 229
    :pswitch_58
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_51

    .line 233
    :pswitch_5c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->e()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_51

    .line 236
    :cond_67
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_51

    .line 241
    :pswitch_6b
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    goto :goto_51

    .line 227
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_58
        :pswitch_5c
        :pswitch_6b
    .end packed-switch
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hG;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected y()Lcom/google/googlenav/ui/view/android/bb;
    .registers 2

    .prologue
    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

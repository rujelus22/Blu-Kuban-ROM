.class public Lcom/google/android/maps/driveabout/vector/w;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/cV;

.field private c:Ln/Q;

.field private d:F

.field private e:I

.field private f:I

.field private final g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lu/e;

.field private volatile m:I

.field private final n:I

.field private final o:Lcom/google/android/maps/driveabout/vector/z;

.field private p:Lcom/google/android/maps/driveabout/vector/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/z;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->j:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->k:Z

    .line 76
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->p:Lcom/google/android/maps/driveabout/vector/y;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Landroid/content/res/Resources;

    .line 99
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/w;->o:Lcom/google/android/maps/driveabout/vector/z;

    .line 100
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Landroid/content/res/Resources;

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x7f0b0045

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Landroid/content/res/Resources;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->n:I

    .line 104
    return-void

    .line 100
    :cond_3f
    const v0, 0x7f0b0044

    goto :goto_2d
.end method

.method private a(FF)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 494
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    if-nez v2, :cond_9

    move v0, v1

    .line 506
    :cond_8
    :goto_8
    return v0

    .line 498
    :cond_9
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/w;->f:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    .line 499
    sget-object v3, Lcom/google/android/maps/driveabout/vector/x;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/w;->o:Lcom/google/android/maps/driveabout/vector/z;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/z;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5a

    .line 505
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->e:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    .line 506
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/w;->h:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3b

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/w;->h:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3b

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_3b

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_3b
    move v0, v1

    goto :goto_8

    .line 501
    :pswitch_3d
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->e:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    .line 502
    cmpl-float v4, v3, v6

    if-ltz v4, :cond_58

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_58

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_58

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_58
    move v0, v1

    goto :goto_8

    .line 499
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3d
    .end packed-switch
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->l:Lu/e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/w;->e:I

    .line 114
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/w;->f:I

    .line 115
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x420c

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    .line 400
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    if-nez v0, :cond_15

    .line 462
    :cond_14
    :goto_14
    return-void

    .line 405
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_3f

    .line 406
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 410
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_b9

    const v0, 0x7f020168

    .line 413
    :goto_38
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/w;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    .line 417
    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 418
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    .line 419
    const/16 v0, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 421
    const/16 v0, 0x303

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 422
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 424
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/w;->e()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->l:Lu/e;

    invoke-virtual {v0, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    .line 426
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    if-nez v0, :cond_6e

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->l:Lu/e;

    .line 431
    :cond_6e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->i:Z

    if-eqz v0, :cond_be

    .line 432
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->n:I

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 438
    :goto_77
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 439
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->d:F

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->i:Z

    if-eqz v0, :cond_ca

    const v0, 0x3faa3d71

    :goto_83
    mul-float/2addr v0, v3

    .line 440
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    invoke-static {p1, p2, v3, v0}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 443
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    .line 444
    cmpl-float v3, v0, v7

    if-lez v3, :cond_a4

    .line 446
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v3

    neg-float v3, v3

    invoke-interface {v2, v3, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 449
    sub-float/2addr v0, v7

    .line 450
    invoke-interface {v2, v0, v1, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 453
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    invoke-interface {v2, v0, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 457
    :cond_a4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 458
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 459
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 461
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_14

    .line 410
    :cond_b9
    const v0, 0x7f020167

    goto/16 :goto_38

    .line 434
    :cond_be
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    invoke-interface {v2, v0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_77

    :cond_ca
    move v0, v1

    .line 439
    goto :goto_83
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 476
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->i:Z

    .line 482
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->g:I

    div-int/lit8 v0, v0, 0x2

    .line 121
    sget-object v1, Lcom/google/android/maps/driveabout/vector/x;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->o:Lcom/google/android/maps/driveabout/vector/z;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/z;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 128
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/w;->e:I

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/w;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    .line 133
    :goto_27
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/w;->h:I

    .line 135
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    if-eqz v1, :cond_3e

    .line 137
    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    invoke-virtual {p1, v1, v4}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->d:F

    .line 141
    :cond_3e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->j:Z

    if-eqz v0, :cond_65

    .line 142
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_75

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_75

    .line 143
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->k:Z

    if-nez v0, :cond_65

    .line 144
    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/w;->k:Z

    .line 149
    new-instance v0, Lu/e;

    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x1f4

    sget-object v5, Lu/g;->b:Lu/g;

    invoke-direct/range {v0 .. v5}, Lu/e;-><init>(JJLu/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->l:Lu/e;

    .line 169
    :cond_65
    :goto_65
    return v6

    .line 123
    :pswitch_66
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/w;->e:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/w;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/w;->c:Ln/Q;

    goto :goto_27

    .line 157
    :cond_75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->l:Lu/e;

    .line 158
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/w;->k:Z

    .line 160
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    goto :goto_65

    .line 121
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_66
    .end packed-switch
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 188
    :cond_c
    return-void
.end method

.method public a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 467
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/w;->g()V

    .line 468
    const/4 v0, 0x1

    .line 470
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/w;->j:Z

    .line 512
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->j:Z

    if-eqz v0, :cond_14

    .line 513
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->k:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/w;->e()Z

    move-result v0

    if-nez v0, :cond_13

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    .line 519
    :cond_13
    :goto_13
    return-void

    .line 517
    :cond_14
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->m:I

    goto :goto_13
.end method

.method public t_()V
    .registers 2

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/w;->i:Z

    .line 491
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 108
    const v0, 0x8d9a0

    return v0
.end method

.class public Lcom/google/android/maps/driveabout/vector/E;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/cw;

.field private c:Lt/L;

.field private d:F

.field private e:I

.field private f:I

.field private final g:I

.field private h:I

.field private volatile i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/e;

.field private volatile m:I

.field private final n:I

.field private final o:Lcom/google/android/maps/driveabout/vector/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/G;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->k:Z

    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/E;->o:Lcom/google/android/maps/driveabout/vector/G;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/E;->a:Landroid/content/res/Resources;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_3c

    const v0, 0x7f090044

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->a:Landroid/content/res/Resources;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->n:I

    return-void

    :cond_3c
    const v0, 0x7f090043

    goto :goto_2a
.end method

.method private a(FF)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    if-nez v2, :cond_9

    move v0, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/E;->f:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    sget-object v3, Lcom/google/android/maps/driveabout/vector/F;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/E;->o:Lcom/google/android/maps/driveabout/vector/G;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/G;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5a

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->e:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/E;->h:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3b

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/E;->h:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3b

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_3b

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_3b
    move v0, v1

    goto :goto_8

    :pswitch_3d
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->e:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    cmpl-float v4, v3, v6

    if-ltz v4, :cond_58

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_58

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_58

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_8

    :cond_58
    move v0, v1

    goto :goto_8

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3d
    .end packed-switch
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->l:Lcom/google/android/maps/driveabout/vector/e;

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

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/E;->e:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/E;->f:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 12

    const/4 v5, 0x1

    const/high16 v7, 0x420c

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_3f

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_b9

    const v0, 0x7f020146

    :goto_38
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/E;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/content/res/Resources;I)V

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    const/16 v0, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v2, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v0, 0x303

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/E;->e()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->l:Lcom/google/android/maps/driveabout/vector/e;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    if-nez v0, :cond_6e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->l:Lcom/google/android/maps/driveabout/vector/e;

    :cond_6e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->i:Z

    if-eqz v0, :cond_be

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/E;->n:I

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/vector/E;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    :goto_77
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->d:F

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->i:Z

    if-eqz v0, :cond_ca

    const v0, 0x3faa3d71

    :goto_83
    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    invoke-static {v2, p2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v3, v0, v7

    if-lez v3, :cond_a4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v3

    neg-float v3, v3

    invoke-interface {v2, v3, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    sub-float/2addr v0, v7

    invoke-interface {v2, v0, v1, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    invoke-interface {v2, v0, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_a4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_14

    :cond_b9
    const v0, 0x7f020145

    goto/16 :goto_38

    :cond_be
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    invoke-interface {v2, v0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_77

    :cond_ca
    move v0, v1

    goto :goto_83
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/E;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->i:Z

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/E;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/E;->g()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/E;->g:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/F;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/E;->o:Lcom/google/android/maps/driveabout/vector/G;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/G;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7c

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/E;->e:I

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/E;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/E;->h:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    if-eqz v1, :cond_3e

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    invoke-virtual {p1, v1, v4}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->d:F

    :cond_3e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->j:Z

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_71

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_71

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->k:Z

    if-nez v0, :cond_61

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/E;->k:Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/e;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/e;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->l:Lcom/google/android/maps/driveabout/vector/e;

    :cond_61
    :goto_61
    return v5

    :pswitch_62
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/E;->e:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/E;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/E;->c:Lt/L;

    goto :goto_27

    :cond_71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/E;->l:Lcom/google/android/maps/driveabout/vector/e;

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/E;->k:Z

    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    goto :goto_61

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_62
    .end packed-switch
.end method

.method public b(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/E;->j:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->j:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->k:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/E;->e()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    :cond_13
    :goto_13
    return-void

    :cond_14
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/E;->m:I

    goto :goto_13
.end method

.method public r_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/E;->i:Z

    return-void
.end method

.method public s_()I
    .registers 2

    const v0, 0x8d9a0

    return v0
.end method

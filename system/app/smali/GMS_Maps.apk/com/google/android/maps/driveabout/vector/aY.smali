.class public Lcom/google/android/maps/driveabout/vector/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/d;
.implements Ljava/lang/Comparable;


# static fields
.field private static E:[F


# instance fields
.field private final A:I

.field private B:Z

.field private C:Ln/aK;

.field private D:Lcom/google/android/maps/driveabout/vector/az;

.field private F:Lu/p;

.field protected final a:Landroid/graphics/Bitmap;

.field protected final b:I

.field protected final c:I

.field private d:Ln/Q;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/google/android/maps/driveabout/vector/aB;

.field private i:Lcom/google/android/maps/driveabout/vector/cV;

.field private j:Lcom/google/android/maps/driveabout/vector/cV;

.field private k:Lcom/google/android/maps/driveabout/vector/cM;

.field private l:Lcom/google/android/maps/driveabout/vector/cM;

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Z

.field private final u:F

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ay;->E:[F

    return-void
.end method

.method public constructor <init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->s:Z

    .line 206
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    .line 207
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    .line 208
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    .line 209
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ay;->b:I

    .line 210
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/ay;->c:I

    .line 211
    iput-object p6, p0, Lcom/google/android/maps/driveabout/vector/ay;->f:Ljava/lang/String;

    .line 212
    iput-object p7, p0, Lcom/google/android/maps/driveabout/vector/ay;->g:Ljava/lang/String;

    .line 213
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->q:Z

    .line 214
    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/vector/ay;->t:Z

    .line 220
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->t:Z

    if-eqz v0, :cond_7e

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->x()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 221
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->r()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->u:F

    .line 226
    :goto_35
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->v:I

    .line 227
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->w:I

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_83

    .line 229
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I

    .line 237
    :goto_61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_88

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->z:I

    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->A:I

    .line 246
    :goto_7d
    return-void

    .line 224
    :cond_7e
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->u:F

    goto :goto_35

    .line 234
    :cond_83
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    .line 235
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I

    goto :goto_61

    .line 243
    :cond_88
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->z:I

    .line 244
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->A:I

    goto :goto_7d
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cM;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 678
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    .line 680
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v1

    .line 681
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v2

    .line 683
    invoke-virtual {v0, v3, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 684
    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 685
    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 686
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 688
    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aB;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 663
    if-eqz v0, :cond_12

    .line 664
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 671
    :goto_11
    return-object v0

    .line 666
    :cond_12
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 668
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 669
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aB;->h()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v0

    .line 596
    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->v:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 597
    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->w:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I

    div-int/lit8 v2, v2, 0x2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2f

    add-int/2addr v0, v2

    .line 598
    int-to-float v2, v1

    sub-float v2, p1, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p2, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    .line 595
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)I
    .registers 4
    .parameter

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->t:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->x()Z

    move-result v0

    if-nez v0, :cond_16

    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->u:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_16
    return p1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ay;)I
    .registers 4
    .parameter

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/ay;->n:I

    if-ne v0, v1, :cond_10

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 330
    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/ay;->n:I

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aB;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    .line 339
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x303

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x1

    .line 509
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gt v0, v5, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->s:Z

    if-nez v0, :cond_20

    .line 591
    :cond_1f
    :goto_1f
    return-void

    .line 513
    :cond_20
    iget-object v4, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 516
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    .line 517
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    .line 518
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_a2

    .line 519
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_40

    .line 520
    if-eqz v2, :cond_1f

    .line 523
    invoke-direct {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->l:Lcom/google/android/maps/driveabout/vector/cM;

    .line 534
    :cond_40
    :goto_40
    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 535
    monitor-enter p0

    .line 536
    :try_start_44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->m:F

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 537
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_b5

    .line 541
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_b8

    .line 543
    const/high16 v0, -0x2d

    invoke-interface {v4, v0, v8, v8, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 544
    const/high16 v0, -0x5a

    invoke-interface {v4, v0, v7, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 545
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->l:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 546
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 548
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->z:I

    .line 549
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->A:I

    .line 570
    :goto_6a
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    if-eqz v3, :cond_eb

    .line 571
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    invoke-virtual {v3, p1}, Lu/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v3

    .line 572
    if-ne v3, v7, :cond_79

    .line 573
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    .line 575
    :cond_79
    mul-int/2addr v1, v3

    .line 576
    mul-int/2addr v0, v3

    .line 584
    :goto_7b
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->b:I

    shl-int/lit8 v3, v3, 0x10

    neg-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v3, v5

    .line 585
    const/high16 v5, -0x1

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ay;->c:I

    shl-int/lit8 v6, v6, 0x10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v2, v6, v2

    add-int/2addr v2, v5

    .line 586
    invoke-interface {v4, v1, v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 587
    invoke-interface {v4, v3, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 588
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v4, v0, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 590
    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_1f

    .line 527
    :cond_a2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_40

    .line 528
    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->k:Lcom/google/android/maps/driveabout/vector/cM;

    goto :goto_40

    .line 537
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0

    .line 551
    :cond_b8
    invoke-static {v4, p2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->k:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 555
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    .line 556
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I

    .line 557
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v2

    if-ne v2, v5, :cond_e5

    .line 558
    const/16 v2, 0x302

    invoke-interface {v4, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 559
    const/16 v2, 0x2300

    const/16 v5, 0x2200

    const/16 v6, 0x2100

    invoke-interface {v4, v2, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 560
    const v2, 0xcccc

    invoke-interface {v4, v7, v7, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    move-object v2, v3

    goto :goto_6a

    .line 563
    :cond_e5
    const/4 v2, 0x1

    invoke-interface {v4, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move-object v2, v3

    goto :goto_6a

    .line 578
    :cond_eb
    shl-int/lit8 v1, v1, 0x10

    .line 579
    shl-int/lit8 v0, v0, 0x10

    goto :goto_7b
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/az;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->D:Lcom/google/android/maps/driveabout/vector/az;

    .line 293
    return-void
.end method

.method public declared-synchronized a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 301
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 302
    :try_start_3
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 304
    :cond_5
    monitor-exit p0

    return-void

    .line 301
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->q:Z

    .line 260
    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 482
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->s:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_27

    if-nez v0, :cond_8

    .line 491
    :goto_6
    monitor-exit p0

    return v2

    .line 488
    :cond_8
    const/high16 v0, 0x3f80

    :try_start_a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->m:F

    .line 489
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ay;->E:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 490
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ay;->E:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x4780

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->n:I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    goto :goto_6

    .line 482
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->r:Z

    .line 269
    return-void
.end method

.method public declared-synchronized b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 603
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    if-nez v2, :cond_9

    .line 618
    :cond_7
    :goto_7
    monitor-exit p0

    return v1

    .line 608
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    invoke-virtual {p4, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 609
    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ay;->v:I

    sub-int/2addr v3, v4

    .line 610
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    add-int/2addr v4, v3

    .line 611
    const/high16 v5, 0x4140

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 612
    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_7

    add-int v3, v4, v5

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_7

    .line 616
    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->w:I

    sub-int/2addr v2, v3

    .line 617
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_47

    add-int/2addr v3, v2

    .line 618
    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_45

    add-int v2, v3, v5

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_45

    :goto_43
    move v1, v0

    goto :goto_7

    :cond_45
    move v0, v1

    goto :goto_43

    .line 603
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 623
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_60

    if-nez v2, :cond_9

    .line 652
    :goto_7
    monitor-exit p0

    return v0

    .line 628
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->C:Ln/aK;

    invoke-virtual {v2, v3}, Ln/aK;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 629
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->B:Z

    goto :goto_7

    .line 633
    :cond_18
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 634
    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ay;->v:I

    sub-int v4, v3, v4

    .line 635
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ay;->x:I

    add-int/2addr v3, v4

    .line 636
    const/4 v5, 0x1

    aget v2, v2, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ay;->w:I

    sub-int v5, v2, v5

    .line 637
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ay;->y:I

    add-int/2addr v2, v5

    .line 640
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_44

    .line 641
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ay;->z:I

    add-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 642
    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ay;->A:I

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 646
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v6

    if-ge v4, v6, :cond_55

    if-ltz v3, :cond_55

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v3

    if-ge v5, v3, :cond_55

    if-ltz v2, :cond_55

    move v0, v1

    :cond_55
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->B:Z

    .line 650
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->C:Ln/aK;

    .line 652
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->B:Z
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_60

    goto :goto_7

    .line 623
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 308
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    if-nez v0, :cond_e

    .line 309
    new-instance v0, Lu/p;

    invoke-direct {v0}, Lu/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    .line 313
    :cond_d
    :goto_d
    return-void

    .line 310
    :cond_e
    if-nez p1, :cond_d

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->F:Lu/p;

    goto :goto_d
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->r:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/ay;)I

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 381
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->o:Z

    .line 382
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->p:Z

    if-eqz v0, :cond_e

    .line 383
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->p:Z

    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/aB;->c(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 386
    :cond_e
    return-void
.end method

.method d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ay;->p:Z

    .line 442
    return-void
.end method

.method public declared-synchronized e()Ln/Q;
    .registers 2

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:Ln/Q;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ln/B;
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->q:Z

    return v0
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/az;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->D:Lcom/google/android/maps/driveabout/vector/az;

    return-object v0
.end method

.method n()Lcom/google/android/maps/driveabout/vector/aB;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->h:Lcom/google/android/maps/driveabout/vector/aB;

    return-object v0
.end method

.method o()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method p()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public q()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 370
    return-object p0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->o:Z

    return v0
.end method

.method public r_()V
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->o:Z

    .line 395
    return-void
.end method

.method s()I
    .registers 3

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v1, :cond_13

    .line 453
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->h()I

    move-result v0

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->i:Lcom/google/android/maps/driveabout/vector/cV;

    .line 457
    :cond_13
    return v0
.end method

.method public s_()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->w:I

    return v0
.end method

.method t()I
    .registers 3

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v1, :cond_13

    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 470
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->h()I

    move-result v0

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ay;->j:Lcom/google/android/maps/driveabout/vector/cV;

    .line 473
    :cond_13
    return v0
.end method

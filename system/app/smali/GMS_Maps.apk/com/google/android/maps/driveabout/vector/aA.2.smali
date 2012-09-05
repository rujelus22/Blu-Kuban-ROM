.class public Lcom/google/android/maps/driveabout/vector/aA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/m;
.implements Ljava/lang/Comparable;


# static fields
.field private static D:[F


# instance fields
.field private A:Z

.field private B:Lt/at;

.field private C:Lcom/google/android/maps/driveabout/vector/aB;

.field private E:Lcom/google/android/maps/driveabout/vector/i;

.field protected final a:Landroid/graphics/Bitmap;

.field protected final b:I

.field protected final c:I

.field private d:Lt/L;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/google/android/maps/driveabout/vector/aD;

.field private i:Lcom/google/android/maps/driveabout/vector/cw;

.field private j:Lcom/google/android/maps/driveabout/vector/cw;

.field private k:Lcom/google/android/maps/driveabout/vector/cp;

.field private l:Lcom/google/android/maps/driveabout/vector/cp;

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Z

.field private final t:F

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aA;->D:[F

    return-void
.end method

.method public constructor <init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/aA;->b:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aA;->c:I

    iput-object p6, p0, Lcom/google/android/maps/driveabout/vector/aA;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/vector/aA;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->q:Z

    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/vector/aA;->s:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->s:Z

    if-eqz v0, :cond_7c

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->y()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->s()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->t:F

    :goto_33
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->u:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->v:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I

    :goto_5f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->y:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->z:I

    :goto_7b
    return-void

    :cond_7c
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->t:F

    goto :goto_33

    :cond_81
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I

    goto :goto_5f

    :cond_86
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->y:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->z:I

    goto :goto_7b
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cp;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v2

    invoke-virtual {v0, v3, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aD;->h()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->v:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I

    div-int/lit8 v2, v2, 0x2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2f

    add-int/2addr v0, v2

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

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)I
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->s:Z

    if-eqz v0, :cond_16

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->y()Z

    move-result v0

    if-nez v0, :cond_16

    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->t:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_16
    return p1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aA;)I
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/aA;->n:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/aA;->n:I

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->C:Lcom/google/android/maps/driveabout/vector/aB;

    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 13

    const/16 v6, 0x303

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x1

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gt v0, v5, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v4, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_3c

    if-eqz v2, :cond_1b

    invoke-direct {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->l:Lcom/google/android/maps/driveabout/vector/cp;

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    monitor-enter p0

    :try_start_40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->m:F

    invoke-static {v4, p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_b1

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_b4

    const/high16 v0, -0x2d

    invoke-interface {v4, v0, v8, v8, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    const/high16 v0, -0x5a

    invoke-interface {v4, v0, v7, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->l:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->y:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->z:I

    :goto_66
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/i;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v3

    if-ne v3, v7, :cond_75

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    :cond_75
    mul-int/2addr v1, v3

    mul-int/2addr v0, v3

    :goto_77
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->b:I

    shl-int/lit8 v3, v3, 0x10

    neg-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v3, v5

    const/high16 v5, -0x1

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aA;->c:I

    shl-int/lit8 v6, v6, 0x10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int v2, v6, v2

    add-int/2addr v2, v5

    invoke-interface {v4, v1, v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-interface {v4, v3, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v4, v0, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_1b

    :cond_9e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_3c

    invoke-direct {p0, p1, v3}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aT;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->k:Lcom/google/android/maps/driveabout/vector/cp;

    goto :goto_3c

    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0

    :cond_b4
    invoke-static {v4, p2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->k:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v2

    if-ne v2, v5, :cond_e1

    const/16 v2, 0x302

    invoke-interface {v4, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v5, 0x2200

    const/16 v6, 0x2100

    invoke-interface {v4, v2, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const v2, 0xcccc

    invoke-interface {v4, v7, v7, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    move-object v2, v3

    goto :goto_66

    :cond_e1
    const/4 v2, 0x1

    invoke-interface {v4, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move-object v2, v3

    goto :goto_66

    :cond_e7
    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v0, v0, 0x10

    goto :goto_77
.end method

.method public declared-synchronized a(Lt/L;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_5

    :try_start_3
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    :cond_5
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->q:Z

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v2, 0x1

    monitor-enter p0

    const/high16 v0, 0x3f80

    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->m:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aA;->D:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aA;->D:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x4780

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->n:I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    monitor-exit p0

    return v2

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->r:Z

    return-void
.end method

.method public declared-synchronized b(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    if-nez v2, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return v1

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    invoke-virtual {p4, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aA;->u:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    add-int/2addr v4, v3

    const/high16 v5, 0x4140

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_7

    add-int v3, v4, v5

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_7

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->v:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_47

    add-int/2addr v3, v2

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

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_60

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->B:Lt/at;

    invoke-virtual {v2, v3}, Lt/at;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->A:Z

    goto :goto_7

    :cond_18
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aA;->u:I

    sub-int v4, v3, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aA;->w:I

    add-int/2addr v3, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aA;->v:I

    sub-int v5, v2, v5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aA;->x:I

    add-int/2addr v2, v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_44

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aA;->y:I

    add-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aA;->z:I

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_44
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v6

    if-ge v4, v6, :cond_55

    if-ltz v3, :cond_55

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v3

    if-ge v5, v3, :cond_55

    if-ltz v2, :cond_55

    move v0, v1

    :cond_55
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->A:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->B:Lt/at;

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->A:Z
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_60

    goto :goto_7

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .registers 3

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/maps/driveabout/vector/i;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-nez p1, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->E:Lcom/google/android/maps/driveabout/vector/i;

    goto :goto_d
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aA;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized d()Lt/L;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->d:Lt/L;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aA;->p:Z

    return-void
.end method

.method public e()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->v:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->q:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->r:Z

    return v0
.end method

.method public n()Lcom/google/android/maps/driveabout/vector/aB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->C:Lcom/google/android/maps/driveabout/vector/aB;

    return-object v0
.end method

.method o()Lcom/google/android/maps/driveabout/vector/aD;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    return-object v0
.end method

.method public o_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->o:Z

    return-void
.end method

.method p()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public p_()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->o:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->p:Z

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->p:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->h:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/aD;->c(Lcom/google/android/maps/driveabout/vector/aA;)V

    :cond_e
    return-void
.end method

.method q()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public q_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->o:Z

    return v0
.end method

.method t()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->g()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->i:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_13
    return v0
.end method

.method u()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->g()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aA;->j:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_13
    return v0
.end method

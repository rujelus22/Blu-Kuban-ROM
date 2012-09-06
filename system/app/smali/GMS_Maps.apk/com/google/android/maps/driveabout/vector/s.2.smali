.class public Lcom/google/android/maps/driveabout/vector/S;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[F

.field private c:Lcom/google/android/maps/driveabout/vector/d;

.field private d:Ln/Q;

.field private e:Landroid/view/View;

.field private f:Lcom/google/android/maps/driveabout/vector/g;

.field private g:Landroid/graphics/Bitmap;

.field private h:Lcom/google/android/maps/driveabout/vector/cV;

.field private i:Lcom/google/android/maps/driveabout/vector/T;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private final o:I

.field private final p:Lu/e;


# direct methods
.method private constructor <init>(ILandroid/content/res/Resources;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    .line 69
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Ln/Q;

    .line 111
    new-instance v0, Lu/e;

    const-wide/16 v1, 0xbb8

    const-wide/16 v3, 0x2710

    sget-object v5, Lu/g;->c:Lu/g;

    const/high16 v6, 0x1

    const v7, 0x8000

    invoke-direct/range {v0 .. v7}, Lu/e;-><init>(JJLu/g;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->p:Lu/e;

    .line 142
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/S;->a:I

    .line 143
    if-nez p2, :cond_2c

    const v0, 0xffff00

    :goto_29
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->o:I

    .line 146
    return-void

    .line 143
    :cond_2c
    const v0, 0x7f09008e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_29
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    const v0, 0x927c0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/S;-><init>(ILandroid/content/res/Resources;)V

    .line 134
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/cM;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-virtual {p3, p2}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 308
    invoke-virtual {p4, p2}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 310
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 311
    return-void
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    .line 345
    :cond_f
    :goto_f
    return v0

    .line 328
    :cond_10
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 329
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    aget v4, v2, v1

    int-to-float v4, v4

    aget v5, v2, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/g;->a(FF)V

    .line 331
    aget v3, v2, v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 332
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    add-int/2addr v4, v3

    .line 335
    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_39

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3b

    :cond_39
    move v0, v1

    .line 336
    goto :goto_f

    .line 339
    :cond_3b
    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/d;->s_()I

    move-result v3

    sub-int/2addr v2, v3

    .line 340
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/S;->m:I

    sub-int v3, v2, v3

    .line 341
    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_52

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_f

    :cond_52
    move v0, v1

    .line 342
    goto :goto_f
.end method

.method private h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 471
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 472
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 474
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 475
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    .line 478
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    if-eqz v0, :cond_20

    .line 479
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->b()V

    .line 481
    :cond_20
    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/high16 v2, -0x8000

    const/4 v3, 0x0

    .line 503
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->j:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 505
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->k:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 507
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    .line 509
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->m:I

    .line 510
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/S;->m:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 512
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v0

    .line 513
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->m:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v1

    .line 516
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 517
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 519
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 520
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/S;->l:I

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    .line 521
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/S;->m:I

    sub-int v5, v1, v5

    .line 522
    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 523
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 524
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/maps/driveabout/vector/g;->d(FF)V

    .line 526
    return-object v2
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 3
    .parameter

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Lcom/google/android/maps/driveabout/vector/T;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_b

    .line 165
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 167
    :cond_b
    monitor-exit p0

    return-void

    .line 164
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x1

    .line 188
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_12

    .line 189
    monitor-enter p0

    .line 190
    :try_start_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 191
    :cond_11
    monitor-exit p0

    .line 303
    :cond_12
    :goto_12
    return-void

    .line 195
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/d;->f()Ln/B;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_42

    if-eqz v0, :cond_42

    .line 200
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v2

    invoke-virtual {v1}, Ln/B;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v2, v1}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_42

    .line 204
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Ln/Q;

    invoke-virtual {v2, v0}, Ln/Q;->b(Ln/Q;)V

    .line 205
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Ln/Q;

    invoke-virtual {v1, p2, v0}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ln/Q;->b(I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->d:Ln/Q;

    .line 210
    :cond_42
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ln/aM;->a()Ln/aL;

    move-result-object v2

    .line 212
    if-nez v0, :cond_51

    .line 213
    monitor-exit p0

    goto :goto_12

    .line 300
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_4e

    throw v0

    .line 215
    :cond_51
    :try_start_51
    invoke-virtual {v2, v0}, Ln/aL;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {v1, v0}, Ln/aM;->a(Ln/Q;)Z

    move-result v1

    if-nez v1, :cond_67

    :cond_5d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v1, p2}, Lcom/google/android/maps/driveabout/vector/d;->b(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 217
    monitor-exit p0

    goto :goto_12

    .line 223
    :cond_67
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->d()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 225
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    invoke-virtual {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    .line 229
    :cond_8a
    if-nez v0, :cond_d0

    .line 233
    const-string v0, "UI"

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null point for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->b:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "camera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    monitor-exit p0

    goto/16 :goto_12

    .line 239
    :cond_d0
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 240
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 241
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 242
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 244
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v2, :cond_f6

    .line 245
    new-instance v2, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 246
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->h:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 249
    :cond_f6
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 250
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/S;->n:F

    invoke-static {p1, p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 251
    invoke-static {v1, p2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 257
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->n()Ln/Q;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v0

    .line 259
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 260
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 262
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/d;->s_()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    .line 263
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->d()Z

    move-result v5

    if-eqz v5, :cond_171

    const/4 v0, 0x0

    .line 266
    :goto_12c
    neg-float v4, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v5}, Lcom/google/android/maps/driveabout/vector/d;->h()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v6}, Lcom/google/android/maps/driveabout/vector/d;->s_()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-interface {v1, v4, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 268
    const/high16 v0, 0x3f80

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 270
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->c()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 271
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 273
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->o:I

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/S;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 275
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/S;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/cM;)V

    .line 299
    :cond_166
    :goto_166
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 300
    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_51 .. :try_end_16a} :catchall_4e

    .line 301
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->f()V

    goto/16 :goto_12

    .line 263
    :cond_171
    :try_start_171
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v4, v5, v4

    mul-float/2addr v0, v4

    goto :goto_12c

    .line 278
    :cond_17a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->a()Lcom/google/android/maps/driveabout/vector/h;

    move-result-object v0

    .line 279
    if-nez v0, :cond_1ad

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aF()Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 280
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/S;->p:Lu/e;

    invoke-virtual {v2, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v2

    .line 281
    if-ge v2, v7, :cond_1ad

    .line 282
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x2100

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 283
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 284
    const/high16 v3, 0x1

    const/high16 v4, 0x1

    const/high16 v5, 0x1

    invoke-interface {v1, v3, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 288
    :cond_1ad
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->g:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/google/android/maps/driveabout/vector/S;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/cM;)V

    .line 290
    if-eqz v0, :cond_166

    .line 291
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 293
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/S;->o:I

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/S;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 294
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/h;->a:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/h;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/S;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/cM;)V
    :try_end_1cb
    .catchall {:try_start_171 .. :try_end_1cb} :catchall_4e

    goto :goto_166
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->p:Lu/e;

    invoke-virtual {v0}, Lu/e;->a()V

    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-ne v0, p1, :cond_32

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/g;->e()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_32

    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_1d

    .line 426
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->r_()V

    .line 428
    :cond_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 429
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->h()V

    .line 430
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    .line 435
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_5e

    .line 457
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 441
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_3b

    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->d()V

    .line 444
    :cond_3b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    .line 445
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->r_()V

    .line 446
    if-eqz p2, :cond_4a

    .line 447
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/g;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    .line 450
    :cond_4a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 451
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->h()V

    .line 452
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    .line 455
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_5d
    .catchall {:try_start_32 .. :try_end_5d} :catchall_5e

    goto :goto_30

    .line 418
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/S;->c(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 396
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->p:Lu/e;

    invoke-virtual {v0}, Lu/e;->a()V

    .line 397
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/g;->c(FF)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 395
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 172
    monitor-enter p0

    const/high16 v0, 0x3f80

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->n:F

    .line 173
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->j:I

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/S;->k:I

    if-eq v0, v1, :cond_36

    .line 175
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->j:I

    .line 176
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/S;->k:I

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    .line 178
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->h()V

    .line 179
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->g:Landroid/graphics/Bitmap;
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    .line 182
    :cond_36
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 172
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/S;->h()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/S;->c(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/g;->b(FF)V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->g()V

    .line 354
    const/4 v0, 0x1

    monitor-exit p0

    .line 363
    :goto_11
    return v0

    .line 355
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_1c

    .line 357
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->f()V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->g()V

    .line 362
    :cond_1c
    monitor-exit p0

    .line 363
    const/4 v0, 0x0

    goto :goto_11

    .line 362
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/S;->c(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 371
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Lcom/google/android/maps/driveabout/vector/T;

    if-eqz v0, :cond_12

    .line 372
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Lcom/google/android/maps/driveabout/vector/T;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/T;->b(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 374
    :cond_12
    const/4 v0, 0x1

    monitor-exit p0

    .line 377
    :goto_14
    return v0

    .line 376
    :cond_15
    monitor-exit p0

    .line 377
    const/4 v0, 0x0

    goto :goto_14

    .line 376
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    monitor-enter p0

    .line 383
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/S;->c(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 386
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/S;->t_()V

    .line 387
    const/4 v0, 0x1

    monitor-exit p0

    .line 390
    :goto_c
    return v0

    .line 389
    :cond_d
    monitor-exit p0

    .line 390
    const/4 v0, 0x0

    goto :goto_c

    .line 389
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/android/maps/driveabout/vector/d;
    .registers 2

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    .prologue
    .line 463
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_a

    .line 464
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->d()V

    .line 466
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 467
    monitor-exit p0

    return-void

    .line 463
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g()V
    .registers 3

    .prologue
    .line 490
    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/aD;->g()V

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Lcom/google/android/maps/driveabout/vector/T;

    if-eqz v0, :cond_e

    .line 494
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->i:Lcom/google/android/maps/driveabout/vector/T;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/S;->c:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/T;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 496
    :cond_e
    return-void
.end method

.method public declared-synchronized t_()V
    .registers 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    if-eqz v0, :cond_a

    .line 406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/S;->f:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->b()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 408
    :cond_a
    monitor-exit p0

    return-void

    .line 405
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/S;->a:I

    return v0
.end method

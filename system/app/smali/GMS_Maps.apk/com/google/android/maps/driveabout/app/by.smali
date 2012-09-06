.class public Lcom/google/android/maps/driveabout/app/by;
.super Lcom/google/android/maps/driveabout/app/bC;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:B

.field private i:Ln/G;

.field private j:F

.field private k:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 265
    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V

    .line 238
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    .line 242
    iput v0, p0, Lcom/google/android/maps/driveabout/app/by;->j:F

    .line 243
    iput v0, p0, Lcom/google/android/maps/driveabout/app/by;->k:F

    .line 266
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/by;->a()Lcom/google/android/maps/driveabout/app/by;

    .line 267
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/by;->a:Z

    .line 268
    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/app/by;->b:Z

    .line 269
    iput p6, p0, Lcom/google/android/maps/driveabout/app/by;->c:I

    .line 270
    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/app/by;->f:Z

    .line 271
    if-lez p8, :cond_23

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p8}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->d:Landroid/graphics/Bitmap;

    .line 275
    :cond_23
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/by;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/by;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 445
    new-instance v0, Ln/G;

    invoke-direct {v0, p1}, Ln/G;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    .line 449
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    invoke-virtual {v0}, Ln/G;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/by;->b(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    invoke-virtual {v0}, Ln/G;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/by;->f:Z

    .line 456
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/by;)Z
    .registers 2
    .parameter

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/by;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/by;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/by;->e:Z

    return p1
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/app/by;
    .registers 2

    .prologue
    .line 337
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    .line 338
    return-object p0
.end method

.method a([I)Lcom/google/android/maps/driveabout/app/by;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    array-length v1, p1

    if-nez v1, :cond_8

    .line 320
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    .line 327
    :cond_7
    return-object p0

    .line 322
    :cond_8
    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    .line 323
    array-length v1, p1

    :goto_b
    if-ge v0, v1, :cond_7

    aget v2, p1, v0

    .line 324
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/by;->b(I)Lcom/google/android/maps/driveabout/app/by;

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    iput p1, p0, Lcom/google/android/maps/driveabout/app/by;->j:F

    .line 365
    iput p2, p0, Lcom/google/android/maps/driveabout/app/by;->k:F

    .line 366
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/by;->d:Landroid/graphics/Bitmap;

    .line 360
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/by;->g:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/by;->e:Z

    .line 422
    return-void
.end method

.method public a(F)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 380
    iget v1, p0, Lcom/google/android/maps/driveabout/app/by;->j:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1c

    iget v1, p0, Lcom/google/android/maps/driveabout/app/by;->k:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1c

    .line 381
    iget v1, p0, Lcom/google/android/maps/driveabout/app/by;->j:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1b

    iget v1, p0, Lcom/google/android/maps/driveabout/app/by;->k:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1b

    const/4 v0, 0x1

    .line 383
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    invoke-virtual {v0, p1}, Ln/G;->a(F)Z

    move-result v0

    goto :goto_1b
.end method

.method a(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 282
    iget-byte v1, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b()Lcom/google/android/maps/driveabout/app/by;
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    .line 349
    return-object p0
.end method

.method b(I)Lcom/google/android/maps/driveabout/app/by;
    .registers 4
    .parameter

    .prologue
    .line 294
    iget-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/by;->h:B

    .line 295
    return-object p0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/google/android/maps/driveabout/app/by;->c:I

    return v0
.end method

.method public c(I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 426
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->d:Landroid/graphics/Bitmap;

    .line 438
    :cond_7
    :goto_7
    return-object v0

    .line 428
    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    if-eqz v1, :cond_7

    .line 431
    if-gez p1, :cond_14

    .line 432
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    invoke-virtual {v1}, Ln/G;->a()I

    move-result p1

    .line 434
    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    invoke-virtual {v1}, Ln/G;->b()[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_7

    array-length v2, v1

    if-ge p1, v2, :cond_7

    .line 438
    aget-object v0, v1, p1

    goto :goto_7
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/by;->f:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/by;->b:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/by;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 400
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->g:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->g:Ljava/lang/String;

    .line 403
    :goto_c
    return-object v0

    .line 400
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/by;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 403
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/by;->e:Z

    return v0
.end method

.method public i()Ln/G;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/by;->i:Ln/G;

    return-object v0
.end method

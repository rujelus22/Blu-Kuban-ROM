.class Lcom/googlex/common/graphics/android/ScaledAndroidImage;
.super Lcom/googlex/common/graphics/android/AndroidImage;


# instance fields
.field private cache:Lcom/googlex/common/graphics/android/AndroidImage;

.field private final dh:I

.field private final dw:I

.field private parent:Lcom/googlex/common/graphics/GoogleImage;

.field private final sh:I

.field private final sw:I

.field private final sx:I

.field private final sy:I


# direct methods
.method public constructor <init>(Lcom/googlex/common/graphics/android/AndroidImage;IIIIII)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-virtual {p1}, Lcom/googlex/common/graphics/android/AndroidImage;->addReference()Lcom/googlex/common/graphics/GoogleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->parent:Lcom/googlex/common/graphics/GoogleImage;

    iput p2, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dw:I

    iput p3, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dh:I

    iput p4, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sx:I

    iput p5, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sy:I

    iput p6, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sw:I

    iput p7, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sh:I

    return-void
.end method

.method private getCache()Lcom/googlex/common/graphics/android/AndroidImage;
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    if-nez v0, :cond_4a

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    iget v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v3, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dh:I

    invoke-direct {v0, v1, v3}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(II)V

    iput-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-virtual {v0}, Lcom/googlex/common/graphics/android/AndroidImage;->getGraphics()Lcom/googlex/common/graphics/GoogleGraphics;

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->parent:Lcom/googlex/common/graphics/GoogleImage;

    iget v4, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v5, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dh:I

    iget v6, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sx:I

    iget v7, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sy:I

    iget v8, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sw:I

    iget v9, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sh:I

    move v3, v2

    invoke-interface/range {v0 .. v9}, Lcom/googlex/common/graphics/GoogleGraphics;->drawScaledImage(Lcom/googlex/common/graphics/GoogleImage;IIIIIIII)Z

    move-result v0

    if-nez v0, :cond_4a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graphics cannot scale image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-virtual {v2}, Lcom/googlex/common/graphics/android/AndroidImage;->getGraphics()Lcom/googlex/common/graphics/GoogleGraphics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    return-object v0
.end method

.method private removeParentReference()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->parent:Lcom/googlex/common/graphics/GoogleImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->parent:Lcom/googlex/common/graphics/GoogleImage;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/googlex/common/graphics/GoogleImage;->removeReference()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public createScaledImage(II)Lcom/googlex/common/graphics/GoogleImage;
    .registers 4

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->getCache()Lcom/googlex/common/graphics/android/AndroidImage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/googlex/common/graphics/android/AndroidImage;->createScaledImage(II)Lcom/googlex/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public createScaledImage(IIIIII)Lcom/googlex/common/graphics/GoogleImage;
    .registers 14

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->getCache()Lcom/googlex/common/graphics/android/AndroidImage;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/googlex/common/graphics/android/AndroidImage;->createScaledImage(IIIIII)Lcom/googlex/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public drawImage(Lcom/googlex/common/graphics/GoogleGraphics;II)V
    .registers 14

    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->parent:Lcom/googlex/common/graphics/GoogleImage;

    iget v4, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v5, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dh:I

    iget v6, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sx:I

    iget v7, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sy:I

    iget v8, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sw:I

    iget v9, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->sh:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, Lcom/googlex/common/graphics/GoogleGraphics;->drawScaledImage(Lcom/googlex/common/graphics/GoogleImage;IIIIIIII)Z

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googlex/common/graphics/android/AndroidImage;->drawImage(Lcom/googlex/common/graphics/GoogleGraphics;II)V

    goto :goto_18
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->removeParentReference()V

    invoke-super {p0}, Lcom/googlex/common/graphics/android/AndroidImage;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->getCache()Lcom/googlex/common/graphics/android/AndroidImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGraphics()Lcom/googlex/common/graphics/GoogleGraphics;
    .registers 2

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->getCache()Lcom/googlex/common/graphics/android/AndroidImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/graphics/android/AndroidImage;->getGraphics()Lcom/googlex/common/graphics/GoogleGraphics;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dh:I

    return v0
.end method

.method public getNumBytesUsed()I
    .registers 3

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->cache:Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-virtual {v1}, Lcom/googlex/common/graphics/android/AndroidImage;->getNumBytesUsed()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public getRGB([IIIIIII)V
    .registers 16

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->getCache()Lcom/googlex/common/graphics/android/AndroidImage;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/googlex/common/graphics/android/AndroidImage;->getRGB([IIIIIII)V

    return-void
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->dw:I

    return v0
.end method

.method public recycle()V
    .registers 2

    iget v0, p0, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->referenceCount:I

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/googlex/common/graphics/android/ScaledAndroidImage;->removeParentReference()V

    :cond_7
    invoke-super {p0}, Lcom/googlex/common/graphics/android/AndroidImage;->recycle()V

    return-void
.end method

.class public Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.super Ljava/lang/Object;
.source "GLCanvas.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Surface"
.end annotation


# instance fields
.field protected mHeight:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field protected mTextureId:I

.field protected mWidth:I

.field protected temp:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 628
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 643
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    return-void
.end method


# virtual methods
.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 3
    .parameter "renderer"

    .prologue
    .line 682
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V

    .line 683
    return-void
.end method

.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V
    .registers 8
    .parameter "render"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    const v3, 0x46180400

    const/16 v2, 0xde1

    .line 686
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 687
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 688
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 690
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    .line 691
    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 693
    :cond_23
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 694
    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 696
    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 698
    return-void
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move-object v1, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 710
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 723
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-lez v0, :cond_12

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->queueTexture(I)V

    .line 727
    :cond_12
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 701
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    return v0
.end method

.method public onContextLost()V
    .registers 2

    .prologue
    .line 713
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 715
    return-void
.end method

.method protected preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 641
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 718
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 719
    return-void
.end method

.method protected upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "renderer"
    .parameter "b"

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 651
    monitor-enter p2

    .line 652
    :try_start_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 653
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attempting to upload a recycled bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v0, 0x4

    new-array v6, v0, [I

    fill-array-data v6, :array_5a

    .line 660
    .local v6, colors:[I
    const/4 v0, 0x2

    const/4 v1, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_52

    move-result-object v3

    .line 662
    .end local v6           #colors:[I
    .end local p2
    .local v3, b:Landroid/graphics/Bitmap;
    :goto_21
    :try_start_21
    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 663
    .local v2, internalFormat:I
    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 664
    .local v4, type:I
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 665
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 667
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 672
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 673
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    .line 674
    monitor-exit p2

    .line 675
    return-void

    .line 674
    .end local v2           #internalFormat:I
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v4           #type:I
    .restart local p2
    :catchall_52
    move-exception v0

    move-object v3, p2

    .end local p2
    .restart local v3       #b:Landroid/graphics/Bitmap;
    :goto_54
    monitor-exit p2
    :try_end_55
    .catchall {:try_start_21 .. :try_end_55} :catchall_56

    throw v0

    :catchall_56
    move-exception v0

    goto :goto_54

    .end local v3           #b:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_58
    move-object v3, p2

    .end local p2
    .restart local v3       #b:Landroid/graphics/Bitmap;
    goto :goto_21

    .line 657
    :array_5a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

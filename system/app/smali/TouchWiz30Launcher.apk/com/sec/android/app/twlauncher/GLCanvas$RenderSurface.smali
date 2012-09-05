.class public Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderSurface"
.end annotation


# instance fields
.field private mHasBeenRendered:Z

.field private mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mHasBeenRendered:Z

    .line 872
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 873
    iput p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    .line 874
    return-void
.end method


# virtual methods
.method public newFrame(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas;
    .registers 10
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 881
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    #getter for: Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1100(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 882
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 883
    .local v0, proj:[F
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    int-to-float v5, v4

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f80

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    .line 885
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    return-object v1
.end method

.method public onContextLost()V
    .registers 2

    .prologue
    .line 949
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->onContextLost()V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mHasBeenRendered:Z

    .line 951
    return-void
.end method

.method protected preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .registers 12
    .parameter "renderer"

    .prologue
    const/16 v2, 0x1908

    const v5, 0x47012f00

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 890
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v3, :cond_70

    .line 893
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3c

    .line 894
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 895
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 896
    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 898
    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 904
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 905
    .local v8, b:Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 907
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 910
    .end local v8           #b:Ljava/nio/ByteBuffer;
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v9

    .line 913
    .local v9, graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    invoke-virtual {p1, v9}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 917
    :try_start_45
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->setRenderTarget(III)V

    .line 919
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 920
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 921
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 922
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 925
    invoke-virtual {p1, v9}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_71

    .line 930
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->clearRenderTarget()V

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mNextFrameCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->mHasBeenRendered:Z

    .line 936
    .end local v9           #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :cond_70
    return-void

    .line 930
    .restart local v9       #graph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    :catchall_71
    move-exception v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->clearRenderTarget()V

    throw v0
.end method

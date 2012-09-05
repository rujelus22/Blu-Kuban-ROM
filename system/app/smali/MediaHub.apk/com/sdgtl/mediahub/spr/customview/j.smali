.class final Lcom/sdgtl/mediahub/spr/customview/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

.field private b:J

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->b:J

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->c:I

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->d:J

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;I)I
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v1, v0, v2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :try_start_16
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0xde1

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_57} :catch_58

    :goto_57
    return v1

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_57
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/customview/j;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->destroy(I)V

    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->b:J

    sub-long v8, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/e;

    const/4 v2, 0x0

    move v15, v2

    move-object v2, v1

    move v1, v15

    :goto_2b
    if-nez v2, :cond_119

    :goto_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v11, v2

    sub-int v2, v1, v10

    const/4 v3, 0x0

    div-int/lit8 v1, v10, 0x2

    sub-int v4, v11, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$13(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z

    move-result v1

    if-eqz v1, :cond_13b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_13b

    const/4 v1, 0x1

    :goto_6f
    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    invoke-static {v1, v10}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setCount(II)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v1

    :goto_82
    if-lt v5, v10, :cond_13e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    sub-int v2, v11, v12

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setProgress(IF)I

    :cond_a3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getHeight()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->render(I)V

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sdgtl/mediahub/spr/customview/j;->b:J

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->d:J

    add-long/2addr v1, v8

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->d:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->c:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->c:I

    rem-int/lit8 v1, v1, 0x3c

    if-nez v1, :cond_12

    const-string v1, "CoverFlowGL ms/frame: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->d:J

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->d:J
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fb} :catch_fd

    goto/16 :goto_12

    :catch_fd
    move-exception v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$4()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught exception in onDrawFrame: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    :cond_119
    :try_start_119
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sdgtl/mediahub/spr/customview/e;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v2, v1, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_12c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    goto/16 :goto_2d

    :cond_12c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/e;

    move v15, v2

    move-object v2, v1

    move v1, v15

    goto/16 :goto_2b

    :cond_13b
    const/4 v1, 0x0

    goto/16 :goto_6f

    :cond_13e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$14(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z

    move-result v1

    if-nez v1, :cond_a3

    add-int v1, v12, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$13(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z

    move-result v3

    if-eqz v3, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v3

    if-ge v1, v3, :cond_1d2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_172
    :goto_172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/e;

    iget v3, v1, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_197

    iget v3, v1, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f3

    :cond_197
    iget-boolean v3, v1, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z

    if-nez v3, :cond_1f3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1f3

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mUiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sdgtl/mediahub/spr/customview/h;

    invoke-direct {v4, v1}, Lcom/sdgtl/mediahub/spr/customview/h;-><init>(Lcom/sdgtl/mediahub/spr/customview/e;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_1ad
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget v2, v1, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e8

    iget v2, v1, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    move v3, v2

    :goto_1b9
    iget v2, v1, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    const/4 v14, -0x1

    if-eq v2, v14, :cond_1ee

    iget v2, v1, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    :goto_1c0
    invoke-static {v13, v5, v3, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setCoverTextures(IIII)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget v1, v1, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    invoke-static {v2, v5, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setExpand(IIF)I

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v2, v4

    goto/16 :goto_82

    :cond_1d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_172

    :cond_1e8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sdgtl/mediahub/spr/customview/j;->f:I

    move v3, v2

    goto :goto_1b9

    :cond_1ee
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sdgtl/mediahub/spr/customview/j;->g:I
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_1f2} :catch_fd

    goto :goto_1c0

    :cond_1f3
    move v4, v2

    goto :goto_1ad
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setDimensionWithScreenWidth()V
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$6(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPerspective:F
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$7(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLeftRightBetweenSideGap:F
    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$8(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCenterBetweenSideGap:F
    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$9(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v6

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShadowDepth:F
    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$10(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setDimensions(IFFFFFFF)I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    const v1, 0x7f02014e

    invoke-direct {p0, p1, v1}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v1

    const v2, 0x7f0200b4

    invoke-direct {p0, p1, v2}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f020057

    invoke-direct {p0, p1, v6}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setResourceTextures(IIIIIII)V

    :cond_5a
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    int-to-float v2, p2

    int-to-float v3, p3

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->calcProjectionMatrix(FF)[F
    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$11(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;FF)[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setProjectionMatrix(I[F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->b:J
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    :goto_6d
    return-void

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6d
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 11

    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->init(I)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setDimensionWithScreenWidth()V
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$6(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v3, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPerspective:F
    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$7(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLeftRightBetweenSideGap:F
    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$8(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCenterBetweenSideGap:F
    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$9(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v6

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShadowDepth:F
    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$10(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setDimensions(IFFFFFFF)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->e:I

    const v1, 0x7f02014e

    invoke-direct {p0, p1, v1}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v1

    const v2, 0x7f0200b4

    invoke-direct {p0, p1, v2}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f020057

    invoke-direct {p0, p1, v6}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGLNative;->setResourceTextures(IIIIIII)V

    const v0, 0x7f02002c

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->f:I

    const v0, 0x7f020001

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/j;->g:I

    :goto_75
    return-void

    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_91

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    :cond_91
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_40

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_9e

    goto :goto_40

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

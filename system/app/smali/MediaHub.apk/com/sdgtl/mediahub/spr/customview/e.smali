.class final Lcom/sdgtl/mediahub/spr/customview/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:I

.field e:I

.field f:Z

.field g:F

.field h:Z

.field i:Lcom/sdgtl/mediahub/spr/customview/i;

.field final synthetic j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->h:Z

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I
    .registers 9

    const/4 v5, 0x1

    const v4, 0x47012f00

    const v3, 0x46180400

    const/4 v2, 0x0

    const/16 v1, 0xde1

    if-gez p1, :cond_13

    new-array v0, v5, [I

    invoke-interface {p0, v5, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget p1, v0, v2

    :cond_13
    invoke-interface {p0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-interface {p0, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-interface {p0, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-interface {p0, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-interface {p0, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-static {v1, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4b

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$1()Lcom/sdgtl/mediahub/spr/customview/j;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Lcom/sdgtl/mediahub/spr/customview/j;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    :goto_23
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$3(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$1()Lcom/sdgtl/mediahub/spr/customview/j;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/j;->a(Lcom/sdgtl/mediahub/spr/customview/j;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    :cond_47
    :goto_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->f:Z
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4b

    goto :goto_5

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$2(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/f;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/f;-><init>(Lcom/sdgtl/mediahub/spr/customview/e;)V

    invoke-interface {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;->requestBitmap(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V

    goto :goto_23

    :cond_5f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$3(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/g;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/g;-><init>(Lcom/sdgtl/mediahub/spr/customview/e;)V

    invoke-interface {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;->requestBitmap(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    :try_end_6f
    .catchall {:try_start_4e .. :try_end_6f} :catchall_4b

    goto :goto_47
.end method

.method final a(F)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->i:Lcom/sdgtl/mediahub/spr/customview/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->i:Lcom/sdgtl/mediahub/spr/customview/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sdgtl/mediahub/spr/customview/i;->c:Z

    :cond_9
    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/i;

    invoke-direct {v0, p0, p1}, Lcom/sdgtl/mediahub/spr/customview/i;-><init>(Lcom/sdgtl/mediahub/spr/customview/e;F)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->i:Lcom/sdgtl/mediahub/spr/customview/i;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->i:Lcom/sdgtl/mediahub/spr/customview/i;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    if-gtz v0, :cond_24

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->b:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/customview/e;->a(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->d:I

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uploaded cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    if-gtz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_47

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/e;->c:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/customview/e;->a(Ljavax/microedition/khronos/opengles/GL10;ILandroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->e:I

    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uploaded info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/e;->a(F)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    goto :goto_11
.end method

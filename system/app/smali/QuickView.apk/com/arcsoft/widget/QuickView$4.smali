.class Lcom/arcsoft/widget/QuickView$4;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;->init(Landroid/view/SurfaceView;Lcom/arcsoft/widget/BounceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 13
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v7, 0x10e

    const/16 v6, 0xb4

    const/16 v5, 0x5a

    const/4 v4, 0x2

    .line 283
    const-string v1, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceChanged, holder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mReviewWidth:I
    invoke-static {v1, p3}, Lcom/arcsoft/widget/QuickView;->access$1302(Lcom/arcsoft/widget/QuickView;I)I

    .line 285
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mReviewHeight:I
    invoke-static {v1, p4}, Lcom/arcsoft/widget/QuickView;->access$1402(Lcom/arcsoft/widget/QuickView;I)I

    .line 286
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, p1}, Lcom/arcsoft/widget/QuickView;->access$1202(Lcom/arcsoft/widget/QuickView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 289
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v1, :cond_60

    .line 291
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BounceView;->updateScreenSize()V

    .line 292
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BounceView;->reset()V

    .line 295
    :cond_60
    if-eq p2, v4, :cond_6b

    .line 297
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1200(Lcom/arcsoft/widget/QuickView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 300
    :cond_6b
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->getOrientation()I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1500(Lcom/arcsoft/widget/QuickView;)I

    move-result v0

    .line 301
    .local v0, Ori:I
    const-string v1, "QuickView:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mOrientation:I
    invoke-static {v3}, Lcom/arcsoft/widget/QuickView;->access$1600(Lcom/arcsoft/widget/QuickView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ori: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-eq v0, v5, :cond_b1

    if-ne v0, v7, :cond_bf

    :cond_b1
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewWidth:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1300(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewHeight:I
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$1400(Lcom/arcsoft/widget/QuickView;)I

    move-result v2

    if-lt v1, v2, :cond_d1

    :cond_bf
    if-eqz v0, :cond_c3

    if-ne v0, v6, :cond_d8

    :cond_c3
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewWidth:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1300(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewHeight:I
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$1400(Lcom/arcsoft/widget/QuickView;)I

    move-result v2

    if-le v1, v2, :cond_d8

    .line 306
    :cond_d1
    const-string v1, "QuickView:"

    const-string v2, "Bad State during quick rotating"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_d8
    if-eq v0, v5, :cond_dc

    if-ne v0, v7, :cond_103

    :cond_dc
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewWidth:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1300(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewHeight:I
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$1400(Lcom/arcsoft/widget/QuickView;)I

    move-result v2

    if-ge v1, v2, :cond_103

    .line 311
    const/4 v0, 0x0

    .line 317
    :cond_eb
    :goto_eb
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mhAMPV:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1000(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    if-nez v1, :cond_118

    .line 319
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mOrientation:I
    invoke-static {v1, v0}, Lcom/arcsoft/widget/QuickView;->access$1602(Lcom/arcsoft/widget/QuickView;I)I

    .line 320
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mRefOri:I
    invoke-static {v1, v0}, Lcom/arcsoft/widget/QuickView;->access$1702(Lcom/arcsoft/widget/QuickView;I)I

    .line 321
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->initAMPV()V
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1800(Lcom/arcsoft/widget/QuickView;)V

    .line 325
    :goto_102
    return-void

    .line 313
    :cond_103
    if-eqz v0, :cond_107

    if-ne v0, v6, :cond_eb

    :cond_107
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewWidth:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1300(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    iget-object v2, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mReviewHeight:I
    invoke-static {v2}, Lcom/arcsoft/widget/QuickView;->access$1400(Lcom/arcsoft/widget/QuickView;)I

    move-result v2

    if-le v1, v2, :cond_eb

    .line 314
    const/16 v0, 0x5a

    goto :goto_eb

    .line 324
    :cond_118
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-virtual {v1, p3, p4, v0}, Lcom/arcsoft/widget/QuickView;->reload(III)V

    goto :goto_102
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 277
    const-string v0, "QuickView:"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 7
    .parameter "holder"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 258
    const-string v1, "QuickView:"

    const-string v2, "surfaceDestroyed<---"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 260
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mAmpvHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$900(Lcom/arcsoft/widget/QuickView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    :cond_1c
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mhAMPV:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1000(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    invoke-static {v1, v4, v4, v4, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_reload(IIIILandroid/graphics/Bitmap;)I

    .line 262
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mhAMPV:I
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$1000(Lcom/arcsoft/widget/QuickView;)I

    move-result v1

    invoke-static {v1, v3}, Lcom/arcsoft/android/camera/utils/ampv;->ampv_setDisplaySurface(ILandroid/view/Surface;)I

    .line 264
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v2, 0x1

    #setter for: Lcom/arcsoft/widget/QuickView;->mNeedReload:Z
    invoke-static {v1, v2}, Lcom/arcsoft/widget/QuickView;->access$1102(Lcom/arcsoft/widget/QuickView;Z)Z

    .line 265
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$4;->this$0:Lcom/arcsoft/widget/QuickView;

    #setter for: Lcom/arcsoft/widget/QuickView;->mReviewHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, v3}, Lcom/arcsoft/widget/QuickView;->access$1202(Lcom/arcsoft/widget/QuickView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 267
    invoke-interface {p1, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 268
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_47

    .line 269
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 270
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 272
    :cond_47
    const-string v1, "QuickView:"

    const-string v2, "surfaceDestroyed--->"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

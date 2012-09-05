.class Lcom/sec/android/mimage/photoretouching/EffectController$2;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/EffectController;->Eraser(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

.field private final synthetic val$objROI:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/EffectController;Landroid/graphics/Rect;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->val$objROI:Landroid/graphics/Rect;

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1436
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$4(Lcom/sec/android/mimage/photoretouching/EffectController;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1438
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->val$objROI:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->drawObject([III[IIIFLandroid/graphics/Rect;)I

    .line 1439
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    .line 1440
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1441
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v8

    .line 1439
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1443
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$5(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 1444
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$6(Lcom/sec/android/mimage/photoretouching/EffectController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1460
    :cond_b6
    :goto_b6
    return-void

    .line 1448
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$7(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->changeOKState(Z)V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$8(Lcom/sec/android/mimage/photoretouching/EffectController;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 1451
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 1453
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->val$objROI:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->drawObject([III[IIIFLandroid/graphics/Rect;)I

    .line 1454
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    .line 1455
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1456
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v8

    .line 1454
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1458
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$2;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$5(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_b6
.end method

.class Lcom/sec/android/mimage/photoretouching/EffectController$1;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1422
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #setter for: Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z
    invoke-static {v0, v8}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$0(Lcom/sec/android/mimage/photoretouching/EffectController;Z)V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$1(Lcom/sec/android/mimage/photoretouching/EffectController;Z)V

    .line 1424
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$2(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$2(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$2(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->storeMask([BIILandroid/graphics/Rect;)I

    .line 1425
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->storeObject([IIILandroid/graphics/Rect;)I

    .line 1426
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$2(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #getter for: Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->val$objROI:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->runEraser([I[BIIIIII)I

    .line 1427
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController$1;->this$0:Lcom/sec/android/mimage/photoretouching/EffectController;

    #setter for: Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z
    invoke-static {v0, v8}, Lcom/sec/android/mimage/photoretouching/EffectController;->access$1(Lcom/sec/android/mimage/photoretouching/EffectController;Z)V

    .line 1428
    return-void
.end method

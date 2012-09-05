.class Lcom/cooliris/media/CropImage$17$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/CropImage$17;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage$17;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$17$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/cooliris/media/CropImage$17$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 753
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v1, v1, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 754
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/CropImage$17$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 755
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 756
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$17$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/cooliris/media/CropImage;->access$402(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 758
    :cond_36
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    .line 759
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->this$1:Lcom/cooliris/media/CropImage$17;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/cooliris/media/CropImageView;->center(ZZ)V

    .line 761
    :cond_53
    iget-object v0, p0, Lcom/cooliris/media/CropImage$17$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 762
    return-void
.end method

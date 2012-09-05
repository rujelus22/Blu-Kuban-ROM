.class Lcom/cooliris/media/CropImage$17;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 749
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 750
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cooliris/media/CropImage;->access$1700(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/cooliris/media/CropImage$17$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/cooliris/media/CropImage$17$1;-><init>(Lcom/cooliris/media/CropImage$17;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 769
    iget-object v3, p0, Lcom/cooliris/media/CropImage$17;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v3, v3, Lcom/cooliris/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 770
    return-void

    .line 766
    :catch_25
    move-exception v1

    .line 767
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

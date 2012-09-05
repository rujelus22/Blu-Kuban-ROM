.class Lcom/cooliris/media/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage;->loadBitmap(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;

.field final synthetic val$target:Landroid/net/Uri;

.field final synthetic val$targetScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$4;->val$target:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cooliris/media/CropImage$4;->val$targetScheme:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x28

    .line 459
    const/4 v10, 0x0

    .line 462
    .local v10, rotation:I
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 463
    iget-object v11, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {}, Lcom/cooliris/media/Utils;->getMaxResolution()I

    move-result v2

    invoke-static {}, Lcom/cooliris/media/Utils;->getMaxResolution()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    #setter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11, v0}, Lcom/cooliris/media/CropImage;->access$402(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 464
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mItem:Lcom/cooliris/media/MediaItem;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/MediaItem;

    move-result-object v0

    iget v0, v0, Lcom/cooliris/media/MediaItem;->mRotation:F
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_e5

    float-to-int v10, v0

    .line 478
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4f

    int-to-float v0, v10

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4f

    .line 479
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/cooliris/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/cooliris/media/CropImage;->access$402(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 482
    :cond_4f
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v12, :cond_6f

    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v12, :cond_92

    .line 483
    :cond_6f
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    invoke-virtual {v0}, Lcom/cooliris/media/CropImage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 485
    invoke-static {}, Lcom/cooliris/media/CropImage;->access$500()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 487
    :cond_7e
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_eb

    .line 488
    const-string v0, "CropImage"

    const-string v1, "Cannot load bitmap, bitmap is null. exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_8d
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    invoke-virtual {v0}, Lcom/cooliris/media/CropImage;->finish()V

    .line 493
    :cond_92
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$600(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 494
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageLoadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$600(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    return-void

    .line 466
    .end local v9           #msg:Landroid/os/Message;
    :cond_a6
    :try_start_a6
    iget-object v11, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$4;->val$target:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cooliris/media/Utils;->getMaxResolution()I

    move-result v2

    invoke-static {}, Lcom/cooliris/media/Utils;->getMaxResolution()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    #setter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11, v0}, Lcom/cooliris/media/CropImage;->access$402(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 467
    const-string v0, "file"

    iget-object v1, p0, Lcom/cooliris/media/CropImage$4;->val$targetScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 468
    new-instance v8, Landroid/media/ExifInterface;

    iget-object v0, p0, Lcom/cooliris/media/CropImage$4;->val$target:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 469
    .local v8, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/cooliris/media/Shared;->exifOrientationToDegrees(I)F
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_e1} :catch_e5

    move-result v0

    float-to-int v10, v0

    goto/16 :goto_32

    .line 474
    .end local v8           #exif:Landroid/media/ExifInterface;
    :catch_e5
    move-exception v7

    .line 475
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_32

    .line 490
    .end local v7           #e:Ljava/lang/Exception;
    :cond_eb
    const-string v0, "CropImage"

    const-string v1, "Cannot load bitmap, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d
.end method

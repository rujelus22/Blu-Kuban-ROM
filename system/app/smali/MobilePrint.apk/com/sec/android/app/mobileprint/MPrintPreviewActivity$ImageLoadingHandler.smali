.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;
.super Landroid/os/Handler;
.source "MPrintPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    .line 1428
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1429
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 1433
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    .line 1443
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImageLoadingHandler : unknown message - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :goto_1f
    return-void

    .line 1435
    :pswitch_20
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1436
    .local v4, imageIndex:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 1437
    .local v6, displayRotation:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1438
    .local v2, initTime:J
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePaper(I)V
    invoke-static {v0, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1500(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;I)V

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->preparePreviewImage(II)Landroid/graphics/Bitmap;
    invoke-static {v0, v4, v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1440
    .local v5, bmpImage:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$ImageLoadingHandler;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$DisplayImageRunnable;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;JILandroid/graphics/Bitmap;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    .line 1433
    :pswitch_data_48
    .packed-switch 0x65
        :pswitch_20
    .end packed-switch
.end method

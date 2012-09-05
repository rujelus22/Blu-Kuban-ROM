.class Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsPhotoWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EsPhotoWidgetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 11
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 396
    if-eqz p2, :cond_4

    if-eqz p4, :cond_5

    .line 424
    :cond_4
    :goto_4
    return-void

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContentsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$500(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 401
    :try_start_c
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 402
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 403
    .local v0, slot:I
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mNeedsImage:Z

    if-nez v1, :cond_39

    .line 404
    monitor-exit v2

    goto :goto_4

    .line 423
    .end local v0           #slot:I
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_36

    throw v1

    .line 407
    .restart local v0       #slot:I
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mNeedsImage:Z

    .line 408
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$606(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    .line 410
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300b4

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    const v3, 0x7f0d01b0

    invoke-virtual {v1, v3, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 414
    const-string v1, "EsPhotoRVFactory"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 415
    const-string v1, "EsPhotoRVFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_a4
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$600(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    move-result v1

    if-gtz v1, :cond_ca

    .line 419
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    .end local v0           #slot:I
    :cond_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_39 .. :try_end_cb} :catchall_36

    goto/16 :goto_4
.end method

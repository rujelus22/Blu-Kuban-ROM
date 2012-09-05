.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EsWidgetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 11
    .parameter "url"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 460
    if-nez p2, :cond_3

    .line 493
    :goto_2
    return-void

    .line 464
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, setBitmap:Z
    :try_start_b
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 468
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 469
    .local v2, view:Lcom/google/android/apps/plus/views/StreamRowView;
    if-eqz v2, :cond_21

    .line 473
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 474
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamRowView;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x1

    goto :goto_21

    .line 476
    :cond_3a
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasTitleImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 477
    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 478
    const/4 v1, 0x1

    goto :goto_21

    .line 483
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #view:Lcom/google/android/apps/plus/views/StreamRowView;
    :cond_45
    if-eqz v1, :cond_ab

    .line 484
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1404(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v5

    if-lt v3, v5, :cond_ab

    .line 485
    const-string v3, "EsRemoteViewsFactory"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 486
    const-string v3, "EsRemoteViewsFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleaning up - threshold met - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I
    invoke-static {v6}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v6}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with total "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v6}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_9c
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    :cond_ab
    monitor-exit v4

    goto/16 :goto_2

    :catchall_ae
    move-exception v3

    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_b .. :try_end_b0} :catchall_ae

    throw v3
.end method

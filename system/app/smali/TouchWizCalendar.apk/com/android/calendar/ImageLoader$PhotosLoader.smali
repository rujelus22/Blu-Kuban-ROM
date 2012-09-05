.class Lcom/android/calendar/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImageLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 495
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_23

    .line 498
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_17} :catch_8e

    .line 501
    :try_start_17
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 504
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_8b

    .line 507
    :cond_23
    :try_start_23
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_84

    .line 513
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_3a} :catch_8e

    .line 516
    :try_start_3a
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v5, v5, Lcom/android/calendar/ImageLoader;->photosQueue:Lcom/android/calendar/ImageLoader$PhotosQueue;

    #getter for: Lcom/android/calendar/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader$PhotosQueue;->access$000(Lcom/android/calendar/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;

    .line 519
    .local v3, photoToLoad:Lcom/android/calendar/ImageLoader$PhotoToLoad;
    monitor-exit v6
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_90

    .line 522
    :try_start_49
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    #calls: Lcom/android/calendar/ImageLoader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/android/calendar/ImageLoader;->access$100(Lcom/android/calendar/ImageLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 525
    .local v2, bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    #getter for: Lcom/android/calendar/ImageLoader;->cache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/calendar/ImageLoader;->access$200(Lcom/android/calendar/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 531
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_84

    check-cast v4, Landroid/net/Uri;

    .end local v4           #tag:Ljava/lang/Object;
    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 534
    new-instance v1, Lcom/android/calendar/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/android/calendar/ImageLoader$PhotosLoader;->this$0:Lcom/android/calendar/ImageLoader;

    iget-object v6, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v7, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->container:Landroid/view/View;

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/android/calendar/ImageLoader$BitmapDisplayer;-><init>(Lcom/android/calendar/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 540
    .local v1, bd:Lcom/android/calendar/ImageLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/android/calendar/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 543
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #bd:Lcom/android/calendar/ImageLoader$BitmapDisplayer;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #photoToLoad:Lcom/android/calendar/ImageLoader$PhotoToLoad;
    :cond_84
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_87} :catch_8e

    move-result v5

    if-eqz v5, :cond_0

    .line 573
    :goto_8a
    return-void

    .line 504
    :catchall_8b
    move-exception v5

    :try_start_8c
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v5
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_8e} :catch_8e

    .line 564
    :catch_8e
    move-exception v5

    goto :goto_8a

    .line 519
    :catchall_90
    move-exception v5

    :try_start_91
    monitor-exit v6
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v5
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_93} :catch_8e
.end method

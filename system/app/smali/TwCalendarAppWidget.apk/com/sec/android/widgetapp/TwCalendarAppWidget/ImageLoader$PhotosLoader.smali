.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field blRun:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->blRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 172
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->blRun:Z

    if-eqz v5, :cond_8e

    .line 176
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_27

    .line 177
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1b} :catch_92

    .line 178
    :try_start_1b
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 179
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_8f

    .line 180
    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_88

    .line 183
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_3e} :catch_92

    .line 184
    :try_start_3e
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;

    .line 185
    .local v3, photoToLoad:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_94

    .line 186
    :try_start_4d
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v6, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 187
    .local v2, bmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_88

    check-cast v4, Landroid/net/Uri;

    .end local v4           #tag:Ljava/lang/Object;
    iget-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 190
    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    iget-object v6, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v7, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->container:Landroid/view/View;

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 191
    .local v1, bd:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 192
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #bd:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #photoToLoad:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;
    :cond_88
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_8b} :catch_92

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    :cond_8e
    :goto_8e
    return-void

    .line 179
    :catchall_8f
    move-exception v5

    :try_start_90
    monitor-exit v6
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v5
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_92} :catch_92

    .line 199
    :catch_92
    move-exception v5

    goto :goto_8e

    .line 185
    :catchall_94
    move-exception v5

    :try_start_95
    monitor-exit v6
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v5
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_97} :catch_92
.end method

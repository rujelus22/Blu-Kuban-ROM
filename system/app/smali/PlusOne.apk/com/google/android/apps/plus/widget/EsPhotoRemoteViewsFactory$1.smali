.class Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;
.super Ljava/lang/Object;
.source "EsPhotoWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$102(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;Z)Z

    .line 93
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_2b

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mLoadedImagesAtLeastOnce:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$202(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;Z)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    move-result v1

    const v2, 0x7f0d01b1

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 97
    return-void

    .line 93
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

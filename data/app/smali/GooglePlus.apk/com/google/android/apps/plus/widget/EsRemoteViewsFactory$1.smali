.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 110
    :cond_33
    return-void
.end method

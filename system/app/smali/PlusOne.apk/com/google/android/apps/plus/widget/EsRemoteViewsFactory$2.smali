.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;
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
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    if-lt v0, v2, :cond_36

    .line 163
    const-string v0, "EsRemoteViewsFactory"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 164
    const-string v0, "EsRemoteViewsFactory"

    const-string v2, "cleaning up - early timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    monitor-exit v1

    .line 176
    :goto_35
    return-void

    .line 170
    :cond_36
    const-string v0, "EsRemoteViewsFactory"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 171
    const-string v0, "EsRemoteViewsFactory"

    const-string v2, "not done - early timeout; setting totalimagestoload to 90%"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_46
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    const v2, 0x3f666666

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1502(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I

    .line 175
    monitor-exit v1

    goto :goto_35

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v0
.end method

.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EsAvatarCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarChanged(J)V
    .registers 9
    .parameter "userId"

    .prologue
    .line 505
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 506
    :try_start_7
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 507
    .local v1, view:Lcom/google/android/apps/plus/views/StreamRowView;
    if-eqz v1, :cond_11

    .line 511
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_11

    .line 512
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->onAvatarChanged(J)V

    .line 513
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->ensureAuthorAvatarLoaded()Z

    goto :goto_11

    .line 516
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/google/android/apps/plus/views/StreamRowView;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 517
    return-void
.end method

.method public onAvatarRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V
    .registers 11
    .parameter "request"

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v2

    .line 526
    .local v2, userId:J
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, setBitmap:Z
    :try_start_c
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 529
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 530
    .local v4, view:Lcom/google/android/apps/plus/views/StreamRowView;
    if-eqz v4, :cond_26

    .line 534
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v7

    cmp-long v5, v7, v2

    if-nez v5, :cond_26

    .line 535
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/StreamRowView;->ensureAuthorAvatarLoaded()Z

    move-result v1

    goto :goto_26

    .line 540
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #view:Lcom/google/android/apps/plus/views/StreamRowView;
    :cond_41
    if-eqz v1, :cond_b4

    .line 541
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 542
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1404(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v5

    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v7}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v7

    if-lt v5, v7, :cond_b4

    .line 543
    const-string v5, "EsRemoteViewsFactory"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 544
    const-string v5, "EsRemoteViewsFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleaning up - threshold met - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I
    invoke-static {v8}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v8}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with total "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v8}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_a5
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    :cond_b4
    monitor-exit v6

    .line 551
    return-void

    .line 550
    :catchall_b6
    move-exception v5

    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_c .. :try_end_b8} :catchall_b6

    throw v5
.end method

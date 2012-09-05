.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

.field final synthetic val$existingLicense:Lcom/google/android/youtube/videos/DrmResponse;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfoRequest;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iput-object p5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$existingLicense:Lcom/google/android/youtube/videos/DrmResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_20

    .line 224
    :try_start_7
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$drmInfoRequest:Landroid/drm/DrmInfoRequest;

    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 225
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    if-nez v0, :cond_29

    .line 226
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "acquireDrmInfo failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0           #drmInfo:Landroid/drm/DrmInfo;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    .line 242
    :catch_20
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 245
    .end local v1           #e:Ljava/lang/Exception;
    :goto_28
    return-void

    .line 228
    .restart local v0       #drmInfo:Landroid/drm/DrmInfo;
    :cond_29
    :try_start_29
    const-string v2, "VideosRequest"

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-virtual {v0, v2, v4}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string v2, "VideosCallback"

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v2, v4}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->val$existingLicense:Lcom/google/android/youtube/videos/DrmResponse;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->shouldRefreshLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)Z
    invoke-static {v2, v4, v5}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$300(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 231
    const-string v2, "No need to refresh, using cached license"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V
    invoke-static {v2, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$400(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfo;)V

    .line 241
    :cond_4d
    :goto_4d
    monitor-exit v3

    goto :goto_28

    .line 233
    :cond_4f
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$500(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 234
    const-string v2, "Network unavailable, using cached license"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V
    invoke-static {v2, v0}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$400(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/drm/DrmInfo;)V

    goto :goto_4d

    .line 236
    :cond_66
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v2

    if-eqz v2, :cond_4d

    .line 237
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "processDrmInfo failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_29 .. :try_end_7a} :catchall_1d
.end method

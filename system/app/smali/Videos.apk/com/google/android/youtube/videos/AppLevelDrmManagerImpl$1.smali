.class Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;
.super Ljava/lang/Object;
.source "AppLevelDrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 125
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, assetUri:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getLicense(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    invoke-static {v2, v0, v3}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v1

    .line 127
    .local v1, license:Lcom/google/android/youtube/videos/DrmResponse;
    if-eqz v1, :cond_21

    .line 128
    iget-boolean v2, v1, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v2, :cond_2b

    .line 129
    const/4 v1, 0x0

    .line 135
    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V

    .line 136
    :goto_2a
    return-void

    .line 130
    :cond_2b
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v2, v2, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v3, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v2, v3, :cond_21

    .line 131
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a
.end method

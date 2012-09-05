.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$000(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, assetUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    const/4 v3, 0x0

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    invoke-static {v2, v0, v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v1

    .line 122
    .local v1, license:Lcom/google/android/youtube/videos/DrmResponse;
    if-eqz v1, :cond_1a

    iget-boolean v2, v1, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v2, :cond_1a

    .line 123
    const/4 v1, 0x0

    .line 125
    :cond_1a
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V

    .line 126
    return-void
.end method

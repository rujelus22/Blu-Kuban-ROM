.class Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;
.super Ljava/lang/Object;
.source "DrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->invokePendingCallback(Landroid/drm/DrmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

.field final synthetic val$assetUri:Landroid/net/Uri;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    iput-object p4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iput-object p5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 298
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getError(Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;
    invoke-static {v3, v4}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$600(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v0

    .line 299
    .local v0, error:Lcom/google/android/youtube/videos/DrmException;
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->drmManager:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v2

    .line 300
    .local v2, result:I
    if-nez v2, :cond_5e

    .line 301
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->this$0:Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$assetUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    #calls: Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->getLicense(Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    invoke-static {v3, v4, v5}, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl;Landroid/net/Uri;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v1

    .line 302
    .local v1, license:Lcom/google/android/youtube/videos/DrmResponse;
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v4, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-eq v3, v4, :cond_38

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-boolean v3, v3, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    if-eqz v3, :cond_40

    iget-boolean v3, v1, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v3, :cond_40

    .line 304
    :cond_38
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v3, v4, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 317
    .end local v1           #license:Lcom/google/android/youtube/videos/DrmResponse;
    :goto_3f
    return-void

    .line 306
    .restart local v1       #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "License is valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v3, v4, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    .line 310
    .end local v1           #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_5e
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, v3, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v4, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v3, v4, :cond_75

    iget-object v3, v0, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v4, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-ne v3, v4, :cond_75

    .line 312
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    .line 314
    :cond_75
    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/honeycomb/DrmManagerImpl$3;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v3, v4, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3f
.end method

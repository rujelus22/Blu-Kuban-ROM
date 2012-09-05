.class Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;
.super Ljava/lang/Object;
.source "AppLevelDrmManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$credentials:Ljava/util/HashMap;

.field final synthetic val$request:Lcom/google/android/youtube/videos/DrmRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/util/HashMap;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/DrmRequest;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iput-object p2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$credentials:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iput-object p4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->requestLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$200(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 225
    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$300(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Lcom/widevine/drmapi/android/WVPlayback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$credentials:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/widevine/drmapi/android/WVPlayback;->setCredentials(Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v12

    .line 226
    .local v12, status:Lcom/widevine/drmapi/android/WVStatus;
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v12, v0, :cond_43

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widevine setCredentials failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    new-instance v2, Lcom/google/android/youtube/videos/DrmException;

    sget-object v3, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I
    invoke-static {v4, v12}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$400(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVStatus;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 229
    monitor-exit v13

    .line 280
    :goto_42
    return-void

    .line 232
    :cond_43
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v1, v1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, assetUri:Ljava/lang/String;
    const/4 v11, 0x0

    .line 234
    .local v11, response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$300(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Lcom/widevine/drmapi/android/WVPlayback;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/widevine/drmapi/android/WVPlayback;->registerAsset(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v12

    .line 235
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v12, v0, :cond_91

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widevine registerAsset failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    new-instance v2, Lcom/google/android/youtube/videos/DrmException;

    sget-object v3, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I
    invoke-static {v4, v12}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$400(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVStatus;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 238
    monitor-exit v13

    goto :goto_42

    .line 279
    .end local v7           #assetUri:Ljava/lang/String;
    .end local v11           #response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .end local v12           #status:Lcom/widevine/drmapi/android/WVStatus;
    :catchall_8e
    move-exception v0

    monitor-exit v13
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_8e

    throw v0

    .line 241
    .restart local v7       #assetUri:Ljava/lang/String;
    .restart local v11       #response:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    .restart local v12       #status:Lcom/widevine/drmapi/android/WVStatus;
    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-static {}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$500()[Lcom/widevine/drmapi/android/WVEvent;

    move-result-object v1

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForAssetUri(Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    invoke-static {v0, v7, v1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$600(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v11

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v9, v0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 245
    .local v9, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    if-eqz v9, :cond_e2

    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$300(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Lcom/widevine/drmapi/android/WVPlayback;

    move-result-object v0

    iget-wide v1, v9, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    iget-wide v3, v9, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    iget-wide v5, v9, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drmapi/android/WVPlayback;->requestLicense(JJJ)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v12

    .line 248
    :goto_b1
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v12, v0, :cond_ed

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Widevine requestLicense failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    new-instance v2, Lcom/google/android/youtube/videos/DrmException;

    sget-object v3, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->toErrorCode(Lcom/widevine/drmapi/android/WVStatus;)I
    invoke-static {v4, v12}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$400(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVStatus;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/videos/DrmException;-><init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 251
    monitor-exit v13

    goto/16 :goto_42

    .line 245
    :cond_e2
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->wvPlayback:Lcom/widevine/drmapi/android/WVPlayback;
    invoke-static {v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$300(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Lcom/widevine/drmapi/android/WVPlayback;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/widevine/drmapi/android/WVPlayback;->requestLicense(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v12

    goto :goto_b1

    .line 254
    :cond_ed
    if-eqz v9, :cond_129

    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-static {}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$700()[Lcom/widevine/drmapi/android/WVEvent;

    move-result-object v1

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForIdentifiers(Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    invoke-static {v0, v9, v1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$800(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/DrmManager$Identifiers;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v11

    .line 259
    :goto_f9
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v1, v1, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getLicense(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;
    invoke-static {v0, v7, v1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$100(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmResponse;

    move-result-object v10

    .line 260
    .local v10, license:Lcom/google/android/youtube/videos/DrmResponse;
    if-eqz v10, :cond_13c

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v0, v0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-eq v0, v1, :cond_119

    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v0, v0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    iget-boolean v0, v0, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->isOffline:Z

    if-eqz v0, :cond_134

    iget-boolean v0, v10, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v0, :cond_134

    .line 265
    :cond_119
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getError(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;
    invoke-static {v2, v11}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$900(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 279
    :goto_126
    monitor-exit v13

    goto/16 :goto_42

    .line 254
    .end local v10           #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_129
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-static {}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$700()[Lcom/widevine/drmapi/android/WVEvent;

    move-result-object v1

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getResponseForAssetUri(Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
    invoke-static {v0, v7, v1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$600(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Ljava/lang/String;[Lcom/widevine/drmapi/android/WVEvent;)Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    move-result-object v11

    goto :goto_f9

    .line 267
    .restart local v10       #license:Lcom/google/android/youtube/videos/DrmResponse;
    :cond_134
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v0, v1, v10}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_126

    .line 270
    :cond_13c
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->getError(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;
    invoke-static {v0, v11}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$900(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;)Lcom/google/android/youtube/videos/DrmException;

    move-result-object v8

    .line 271
    .local v8, error:Lcom/google/android/youtube/videos/DrmException;
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v0, v0, Lcom/google/android/youtube/videos/DrmRequest;->type:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    sget-object v1, Lcom/google/android/youtube/videos/DrmRequest$RequestType;->OFFLINE_UNPIN:Lcom/google/android/youtube/videos/DrmRequest$RequestType;

    if-ne v0, v1, :cond_159

    iget-object v0, v8, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-ne v0, v1, :cond_159

    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_126

    .line 276
    :cond_159
    iget-object v0, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$2;->val$request:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-interface {v0, v1, v8}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_160
    .catchall {:try_start_91 .. :try_end_160} :catchall_8e

    goto :goto_126
.end method

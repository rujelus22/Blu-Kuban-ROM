.class Lcom/google/android/youtube/videos/PinManager$5;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->requestLicenseForPinning(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field final synthetic val$purchase:Lcom/google/android/youtube/core/model/Purchase;

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

.field final synthetic val$stream:Lcom/google/android/youtube/core/model/Stream;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iput-object p4, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iput-object p5, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$purchase:Lcom/google/android/youtube/core/model/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 6
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get offline rights "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1222(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$videoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorLicenseException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 411
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$5;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    .line 376
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/VideosPlatformUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    invoke-static {v4}, Lcom/google/android/youtube/videos/PinManager;->access$1900(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$videoId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathForVideoId(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, filePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got offline rights for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "stream_length"

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iget-wide v3, v3, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 383
    iget-object v2, p2, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    if-eqz v2, :cond_4f

    .line 384
    const-string v2, "license_ids"

    iget-object v3, p2, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 386
    :cond_4f
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-eqz v2, :cond_63

    .line 387
    const-string v2, "video_id"

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$videoId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v2, "enable_subtitles"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    :cond_63
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1100(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$stream:Lcom/google/android/youtube/core/model/Stream;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$2000(Lcom/google/android/youtube/videos/PinManager;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 395
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #setter for: Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z
    invoke-static {v2, v6}, Lcom/google/android/youtube/videos/PinManager;->access$2002(Lcom/google/android/youtube/videos/PinManager;Z)Z

    .line 396
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/videos/DownloadJanitorService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 399
    :cond_94
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$200(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 400
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/PinManager;->access$2100(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 404
    :goto_a3
    return-void

    .line 402
    :cond_a4
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$5;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    goto :goto_a3
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$5;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method

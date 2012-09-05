.class Lcom/google/android/youtube/videos/PinManager$2;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
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

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "error"

    .prologue
    .line 312
    const-string v0, "unexpected unpin result"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/videos/PinManager$Listener;->onUnpinError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 315
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 316
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$2;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 9
    .parameter "request"
    .parameter "response"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$1100(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1222(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v0, v4, v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$502(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J
    invoke-static {v0, v4, v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$200(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager;->access$1300(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 309
    :goto_4b
    return-void

    .line 307
    :cond_4c
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$2;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    goto :goto_4b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$2;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method

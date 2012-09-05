.class Lcom/google/android/youtube/videos/DownloadJanitorService$2;
.super Ljava/lang/Object;
.source "DownloadJanitorService.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DownloadJanitorService;->scanFile(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
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
.field final synthetic this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$requestComplete:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "e"

    .prologue
    .line 216
    instance-of v0, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v0, :cond_52

    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    iget-object v0, v0, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-ne v0, v1, :cond_52

    .line 218
    :try_start_d
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #getter for: Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$300(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->this$0:Lcom/google/android/youtube/videos/DownloadJanitorService;

    #getter for: Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->access$300(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_4b

    .line 225
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    :goto_4a
    return-void

    .line 225
    :catchall_4b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 228
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to scan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4a
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 5
    .parameter "request"
    .parameter "response"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "License ok for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->val$requestComplete:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 236
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method

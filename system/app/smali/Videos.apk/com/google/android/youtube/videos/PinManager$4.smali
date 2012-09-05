.class Lcom/google/android/youtube/videos/PinManager$4;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->onPurchaseResponse(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V
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
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/Stream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;

.field final synthetic val$purchase:Lcom/google/android/youtube/core/model/Purchase;

.field final synthetic val$state:Lcom/google/android/youtube/videos/PinManager$PinState;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iput-object p3, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$purchase:Lcom/google/android/youtube/core/model/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get streams for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorUnsupportedVideoFormat(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 365
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$4;->onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 7
    .parameter "request"
    .parameter "stream"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    iget-wide v1, p2, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$502(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->getAvailableBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$1200(Lcom/google/android/youtube/videos/PinManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_38

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorInsufficientSpace(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 360
    :goto_37
    return-void

    .line 357
    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/PinManager;->access$1214(Lcom/google/android/youtube/videos/PinManager;J)J

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$4;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$4;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->requestLicenseForPinning(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
    invoke-static {v0, v1, v2, p2}, Lcom/google/android/youtube/videos/PinManager;->access$1600(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_37
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Stream;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$4;->onResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

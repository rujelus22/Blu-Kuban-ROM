.class Lcom/google/android/youtube/videos/player/Director$4;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
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
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/UserAuth;",
        ">;",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/youtube/core/model/Stream;",
        "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;"
    instance-of v0, p2, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_44

    .line 828
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->resumeTime:I
    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$100(Lcom/google/android/youtube/videos/player/Director;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    .line 829
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$800(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$900(Lcom/google/android/youtube/videos/player/Director;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->remotePurchaseCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$1000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v3

    #calls: Lcom/google/android/youtube/videos/player/Director;->decorateCallback(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/player/Director;->access$1100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->syncActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 834
    :goto_43
    return-void

    .line 832
    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->access$1300(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V

    goto :goto_43
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$4;->onError(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/util/Pair;Landroid/util/Pair;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/Stream;",
            "Lcom/google/android/youtube/videos/DrmManager$Identifiers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/UserAuth;>;"
    .local p2, response:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/DrmManager$Identifiers;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    #setter for: Lcom/google/android/youtube/videos/player/Director;->drmIdentifiers:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    invoke-static {v1, v0}, Lcom/google/android/youtube/videos/player/Director;->access$702(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 823
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$4;->this$0:Lcom/google/android/youtube/videos/player/Director;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    new-instance v3, Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {v3, v1}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 824
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Landroid/util/Pair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$4;->onResponse(Landroid/util/Pair;Landroid/util/Pair;)V

    return-void
.end method

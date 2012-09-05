.class Lcom/google/android/youtube/videos/PinManager$3;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
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
        "Lcom/google/android/youtube/core/model/UserAuth;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/youtube/core/model/Purchase;",
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
    .line 328
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get valid purchase for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorNoActivePurchaseException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager;->access$1500(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 336
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$3;->onError(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/util/Pair;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 5
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$3;->this$0:Lcom/google/android/youtube/videos/PinManager;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$3;->val$state:Lcom/google/android/youtube/videos/PinManager$PinState;

    #calls: Lcom/google/android/youtube/videos/PinManager;->onPurchaseResponse(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V
    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/videos/PinManager;->access$1400(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V

    .line 331
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Purchase;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$3;->onResponse(Landroid/util/Pair;Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

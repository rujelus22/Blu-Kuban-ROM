.class Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore$3;->run()V
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
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore$3;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "gDataRequest"
    .parameter "exception"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v0, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 278
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 7
    .parameter "gDataRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v0, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v2, v2, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->filterPurchases(Ljava/util/List;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$000(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->storePurchases(Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$100(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v0, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v2, v2, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$3;

    iget-object v3, v3, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->getPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$400(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

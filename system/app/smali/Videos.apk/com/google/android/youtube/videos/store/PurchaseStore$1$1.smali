.class Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore$1;->run()V
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
.field final synthetic this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore$1;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "innerRequest"
    .parameter "exception"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v0, v0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$request:Landroid/util/Pair;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 220
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .registers 7
    .parameter "innerRequest"
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
    .line 214
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->filterPurchases(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$000(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v2, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$request:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/core/model/UserAuth;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->storePurchases(Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V
    invoke-static {v2, v1, v0}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$100(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Collection;)V

    .line 216
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v2, v2, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$request:Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->this$1:Lcom/google/android/youtube/videos/store/PurchaseStore$1;

    iget-object v3, v3, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->invokeActivePurchaseCallback(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$200(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->createLocalPurchasesCallback()Lcom/google/android/youtube/core/async/Callback;
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
        "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    invoke-static {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 647
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$800(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->remotePurchasesCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$700(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->syncPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 649
    :cond_17
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    check-cast p1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->onError(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    invoke-static {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 641
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchases(Ljava/util/List;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$600(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Ljava/util/List;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$800(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/store/PurchaseStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->remotePurchasesCallback:Lcom/google/android/youtube/core/async/Callback;
    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$700(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->syncPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 644
    :cond_1c
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    check-cast p1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->onResponse(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List;)V

    return-void
.end method

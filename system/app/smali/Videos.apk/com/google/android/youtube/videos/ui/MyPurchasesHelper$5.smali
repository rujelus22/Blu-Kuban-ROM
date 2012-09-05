.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->createRemotePurchasesCallback()Lcom/google/android/youtube/core/async/Callback;
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
    .line 655
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    invoke-static {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 666
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onRemotePurchasesError(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$900(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Ljava/lang/Exception;)V

    .line 668
    :cond_d
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    check-cast p1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->onError(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List;)V
    .registers 4
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
    .line 657
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->requestStillValid(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z
    invoke-static {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 658
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchases(Ljava/util/List;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$600(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Ljava/util/List;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 660
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onNoEntries()V

    .line 663
    :cond_1e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    check-cast p1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$5;->onResponse(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Ljava/util/List;)V

    return-void
.end method

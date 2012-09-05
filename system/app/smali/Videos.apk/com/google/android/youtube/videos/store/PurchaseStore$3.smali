.class Lcom/google/android/youtube/videos/store/PurchaseStore$3;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;->syncPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iget-object v1, v1, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1}, Lcom/google/android/youtube/videos/async/GDataRequests;->getMyPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 271
    .local v0, gDataRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$3;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    #getter for: Lcom/google/android/youtube/videos/store/PurchaseStore;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$300(Lcom/google/android/youtube/videos/store/PurchaseStore;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/store/PurchaseStore$3$1;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore$3;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 280
    return-void
.end method

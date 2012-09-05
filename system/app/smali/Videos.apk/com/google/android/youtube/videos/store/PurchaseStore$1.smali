.class Lcom/google/android/youtube/videos/store/PurchaseStore$1;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;->syncActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$request:Landroid/util/Pair;

.field final synthetic val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Landroid/util/Pair;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$request:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iput-object p4, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$request:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/async/GDataRequests;->getMyPurchasesRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 212
    .local v0, innerRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$1;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    #getter for: Lcom/google/android/youtube/videos/store/PurchaseStore;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v1}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$300(Lcom/google/android/youtube/videos/store/PurchaseStore;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/store/PurchaseStore$1$1;-><init>(Lcom/google/android/youtube/videos/store/PurchaseStore$1;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 222
    return-void
.end method

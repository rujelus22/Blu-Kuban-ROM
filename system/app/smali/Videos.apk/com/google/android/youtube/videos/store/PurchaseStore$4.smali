.class Lcom/google/android/youtube/videos/store/PurchaseStore$4;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;->getStoredPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;Lcom/google/android/youtube/core/async/Callback;)V
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
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$4;->val$request:Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->getPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$400(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

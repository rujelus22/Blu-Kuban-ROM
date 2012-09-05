.class Lcom/google/android/youtube/videos/store/PurchaseStore$2;
.super Ljava/lang/Object;
.source "PurchaseStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;->getActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
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

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iput-object p3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$videoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$request:Landroid/util/Pair;

    iput-object p5, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    new-instance v2, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const-string v4, "video_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$videoId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;-><init>(Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;[Ljava/lang/String;)V

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->getPurchases(Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$400(Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseRequest;)Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->this$0:Lcom/google/android/youtube/videos/store/PurchaseStore;

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$request:Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$2;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->invokeActivePurchaseCallback(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$200(Lcom/google/android/youtube/videos/store/PurchaseStore;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/util/List;)V

    .line 242
    return-void
.end method

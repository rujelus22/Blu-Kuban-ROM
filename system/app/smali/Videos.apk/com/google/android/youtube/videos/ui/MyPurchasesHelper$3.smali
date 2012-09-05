.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V
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
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

.field final synthetic val$video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/core/model/Video;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->val$video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get download stream length for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->val$video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Long;)V
    .registers 5
    .parameter "request"
    .parameter "response"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$200(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->val$video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #calls: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$300(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    .line 313
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->onResponse(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Long;)V

    return-void
.end method

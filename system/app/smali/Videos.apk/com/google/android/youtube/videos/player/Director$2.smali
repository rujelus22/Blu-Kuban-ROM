.class Lcom/google/android/youtube/videos/player/Director$2;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
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
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$2;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 4
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
    .line 804
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$2;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onRemotePurchaseError(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->access$400(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V

    .line 805
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 799
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$2;->onError(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/util/Pair;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 4
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
    .line 801
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$2;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onRemotePurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->access$300(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V

    .line 802
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 799
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Purchase;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$2;->onResponse(Landroid/util/Pair;Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

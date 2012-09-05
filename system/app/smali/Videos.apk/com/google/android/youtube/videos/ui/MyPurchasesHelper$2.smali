.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 6
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 300
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->onError(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/util/Pair;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 297
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    check-cast p1, Landroid/util/Pair;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;->onResponse(Landroid/util/Pair;Landroid/graphics/Bitmap;)V

    return-void
.end method

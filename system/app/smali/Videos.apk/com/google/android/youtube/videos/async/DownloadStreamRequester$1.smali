.class Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;
.super Ljava/lang/Object;
.source "DownloadStreamRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->request(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;)V
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/youtube/core/model/Stream;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->this$0:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;

    iput-object p2, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 47
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, response:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/youtube/core/model/Stream;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->this$0:Lcom/google/android/youtube/videos/async/DownloadStreamRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    #calls: Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->onPermittedStreams(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V
    invoke-static {v0, p1, v1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester;->access$000(Lcom/google/android/youtube/videos/async/DownloadStreamRequester;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/async/Callback;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/DownloadStreamRequester$1;->onResponse(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Map;)V

    return-void
.end method

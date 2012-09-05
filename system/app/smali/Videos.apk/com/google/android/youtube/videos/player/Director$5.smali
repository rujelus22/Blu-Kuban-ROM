.class Lcom/google/android/youtube/videos/player/Director$5;
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
        "Lcom/google/android/youtube/core/model/Purchase;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
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
    .line 838
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video streams [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/player/Director;->access$1300(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V

    .line 845
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 838
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$5;->onError(Lcom/google/android/youtube/core/model/Purchase;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .registers 4
    .parameter "request"
    .parameter "streams"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 841
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 838
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VideoStreams;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$5;->onResponse(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/VideoStreams;)V

    return-void
.end method

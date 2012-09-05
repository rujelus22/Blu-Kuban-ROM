.class Lcom/google/android/youtube/core/player/Director$3;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Director;->initCallbacks()V
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
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$3;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 7
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$3;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$900(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    const-string v1, "PlayErrorGData"

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director$3;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->video:Lcom/google/android/youtube/core/model/Video;
    invoke-static {v2}, Lcom/google/android/youtube/core/player/Director;->access$800(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading video [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 922
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$3;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onInitError(Ljava/lang/Exception;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/Director;->access$1000(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V

    .line 923
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 915
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$3;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$3;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/Director;->access$700(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/Video;)V

    .line 918
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 915
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$3;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

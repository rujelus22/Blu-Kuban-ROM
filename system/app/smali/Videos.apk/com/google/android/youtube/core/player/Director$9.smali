.class Lcom/google/android/youtube/core/player/Director$9;
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
        "Lcom/google/android/youtube/core/model/LiveEvent;",
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
    .line 999
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$9;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$9;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onLiveEventError()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$1900(Lcom/google/android/youtube/core/player/Director;)V

    .line 1005
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$9;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 4
    .parameter "request"
    .parameter "liveEvent"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$9;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onLiveEventResponse(Lcom/google/android/youtube/core/model/LiveEvent;)V
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/Director;->access$1800(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/LiveEvent;)V

    .line 1002
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/LiveEvent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$9;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method

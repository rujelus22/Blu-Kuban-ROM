.class Lcom/google/android/youtube/core/player/Director$5;
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
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/core/model/VastAd;",
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
    .line 940
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$5;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$5;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading ad [request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 946
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$5;->this$0:Lcom/google/android/youtube/core/player/Director;

    const/4 v1, 0x0

    #calls: Lcom/google/android/youtube/core/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    invoke-static {v0, p1, v1}, Lcom/google/android/youtube/core/player/Director;->access$1200(Lcom/google/android/youtube/core/player/Director;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    .line 947
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VastAd;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$5;->onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$5;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/youtube/core/player/Director;->access$1200(Lcom/google/android/youtube/core/player/Director;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    .line 943
    return-void
.end method

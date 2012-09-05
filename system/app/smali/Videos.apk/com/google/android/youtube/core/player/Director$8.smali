.class Lcom/google/android/youtube/core/player/Director$8;
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
        "Lcom/google/android/youtube/core/model/Branding;",
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
    .line 981
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 6
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v2, 0x0

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve branding info from [uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 990
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$1600(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    if-ne p1, v0, :cond_35

    .line 991
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$1700(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/Director$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 992
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    #setter for: Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/Director;->access$1602(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 994
    :cond_35
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 981
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$8;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;)V
    .registers 5
    .parameter "request"
    .parameter "branding"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$1600(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 984
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->listener:Lcom/google/android/youtube/core/player/Director$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$1700(Lcom/google/android/youtube/core/player/Director;)Lcom/google/android/youtube/core/player/Director$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 985
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$8;->this$0:Lcom/google/android/youtube/core/player/Director;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/core/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/Director;->access$1602(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 987
    :cond_17
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 981
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Branding;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/Director$8;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;)V

    return-void
.end method

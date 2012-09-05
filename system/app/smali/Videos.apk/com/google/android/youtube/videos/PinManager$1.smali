.class Lcom/google/android/youtube/videos/PinManager$1;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/PinManager;->refreshExpirationTimes()V
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
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/PinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$1;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 9
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 209
    instance-of v1, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v1, :cond_2a

    .line 211
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$1;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$600(Lcom/google/android/youtube/videos/PinManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 212
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$702(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/util/Date;)Ljava/util/Date;

    .line 213
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$1;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 215
    .end local v0           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_2a
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$1;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 200
    iget v2, p2, Lcom/google/android/youtube/videos/DrmResponse;->remainingSeconds:I

    if-ltz v2, :cond_2d

    .line 201
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$1;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$600(Lcom/google/android/youtube/videos/PinManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 202
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 203
    .local v1, time:Ljava/util/Calendar;
    const/16 v2, 0xd

    iget v3, p2, Lcom/google/android/youtube/videos/DrmResponse;->remainingSeconds:I

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 204
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->licenseExpirationDate:Ljava/util/Date;
    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$702(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/util/Date;)Ljava/util/Date;

    .line 205
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager$1;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v2}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 207
    .end local v0           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    .end local v1           #time:Ljava/util/Calendar;
    :cond_2d
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$1;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method

.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 401
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 418
    :goto_8
    return-void

    .line 404
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$402(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Z)Z

    .line 406
    const-string v2, "Rejected invitation"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    .line 408
    .local v1, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 409
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v2, :cond_3d

    .line 410
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingFinishRequest(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V
    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$800(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V

    .line 412
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    goto :goto_8

    .line 414
    :cond_3d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$702(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 415
    const-string v2, "Not yet signed in. Will send finish once signed in."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    goto :goto_8
.end method

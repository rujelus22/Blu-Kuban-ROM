.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;
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
    .line 422
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 451
    :goto_9
    return-void

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v0, v6}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$402(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Z)Z

    .line 433
    const-string v0, "Accepted invitation"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    .line 435
    .local v9, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v8

    .line 436
    .local v8, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v8, v0, :cond_6e

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingFinishRequest(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$800(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 445
    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)Landroid/content/Intent;

    move-result-object v10

    .line 450
    .local v10, hangoutIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 441
    .end local v10           #hangoutIntent:Landroid/content/Intent;
    :cond_6e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->ACCEPTED:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$702(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 442
    const-string v0, "Not yet signed in. Will send finish once signed in."

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    goto :goto_3c
.end method

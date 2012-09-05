.class Lcom/android/phone/RoamingGuard$RoamHandler;
.super Landroid/os/Handler;
.source "RoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingGuard;


# direct methods
.method private constructor <init>(Lcom/android/phone/RoamingGuard;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/RoamingGuard;Lcom/android/phone/RoamingGuard$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingGuard$RoamHandler;-><init>(Lcom/android/phone/RoamingGuard;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 321
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a0

    .line 322
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 325
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    const-string v4, "preferred_network_mode"

    #calls: Lcom/android/phone/RoamingGuard;->getSecureSettingValue(Ljava/lang/String;I)I
    invoke-static {v3, v4, v5}, Lcom/android/phone/RoamingGuard;->access$200(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)I

    move-result v2

    .line 332
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 337
    if-eqz v1, :cond_60

    const/4 v3, 0x1

    if-eq v1, v3, :cond_60

    const/4 v3, 0x2

    if-eq v1, v3, :cond_60

    const/4 v3, 0x3

    if-eq v1, v3, :cond_60

    if-eq v1, v5, :cond_60

    const/4 v3, 0x5

    if-eq v1, v3, :cond_60

    const/4 v3, 0x6

    if-eq v1, v3, :cond_60

    const/4 v3, 0x7

    if-ne v1, v3, :cond_a1

    .line 346
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 351
    if-eq v1, v2, :cond_9b

    .line 353
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 357
    move v2, v1

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    const-string v4, "preferred_network_mode"

    #calls: Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v3, v4, v2}, Lcom/android/phone/RoamingGuard;->access$300(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)V

    .line 367
    :cond_9b
    iget-object v3, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    #calls: Lcom/android/phone/RoamingGuard;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/RoamingGuard;->access$400(Lcom/android/phone/RoamingGuard;I)V

    .line 373
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_a0
    :goto_a0
    return-void

    .line 369
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_a1
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    #calls: Lcom/android/phone/RoamingGuard;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/RoamingGuard;->access$100(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard$RoamHandler;->resetNetworkModeToDefault()V

    goto :goto_a0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 378
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_22

    .line 379
    iget-object v2, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    #getter for: Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/RoamingGuard;->access$500(Lcom/android/phone/RoamingGuard;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 381
    .local v1, networkMode:I
    iget-object v2, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    const-string v3, "preferred_network_mode"

    #calls: Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/RoamingGuard;->access$300(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)V

    .line 385
    .end local v1           #networkMode:I
    :goto_21
    return-void

    .line 383
    :cond_22
    iget-object v2, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    #getter for: Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/RoamingGuard;->access$600(Lcom/android/phone/RoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/RoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_21
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 389
    iget-object v0, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    #getter for: Lcom/android/phone/RoamingGuard;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/RoamingGuard;->access$500(Lcom/android/phone/RoamingGuard;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    const-string v1, "preferred_network_mode"

    #calls: Lcom/android/phone/RoamingGuard;->setSecureSettingValue(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingGuard;->access$300(Lcom/android/phone/RoamingGuard;Ljava/lang/String;I)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/RoamingGuard$RoamHandler;->this$0:Lcom/android/phone/RoamingGuard;

    #getter for: Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/RoamingGuard;->access$600(Lcom/android/phone/RoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 316
    :goto_5
    return-void

    .line 300
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingGuard$RoamHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 304
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingGuard$RoamHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 298
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

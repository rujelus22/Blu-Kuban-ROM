.class Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;
.super Landroid/os/Handler;
.source "ForwardingPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingPhoneHandler"
.end annotation


# static fields
.field private static final CONFIRMATION_ATTEMPTS:I = 0x6

.field public static final DELAY_MILLIS:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x446

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 471
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3cc

    .line 671
    :cond_b
    :goto_b
    return-void

    .line 473
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 474
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 477
    :cond_1d
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 478
    .local v10, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    invoke-interface {v10}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 479
    const-string v0, "SettingsRequest failed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto :goto_b

    .line 482
    :cond_34
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_3d

    .line 483
    const-string v0, "SettingsRequest ok, letting the user choose their forwarding phone"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 485
    :cond_3d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v8

    .line 488
    .local v8, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    array-length v0, v8

    if-nez v0, :cond_52

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto :goto_b

    .line 491
    :cond_52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto :goto_b

    .line 498
    .end local v8           #forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    .end local v10           #updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    :sswitch_5a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->updateVoicemailProviderStatus(Lcom/google/android/apps/googlevoice/system/ComponentManager;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 501
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0, v12}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->setResult(I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->finish()V

    goto/16 :goto_b

    .line 506
    :sswitch_90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto/16 :goto_b

    .line 510
    :sswitch_99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->setResult(I)V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->finish()V

    goto/16 :goto_b

    .line 515
    :sswitch_a5
    const/16 v0, 0x424

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 522
    :sswitch_ac
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3f2

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)V

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$402(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->setCountryCode(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->setDeviceNumber(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v2, 0x425

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v3

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_b

    .line 530
    :sswitch_101
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v1, :cond_129

    .line 532
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring canceled sms token result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 537
    :cond_129
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 538
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v1

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ApiRpc;)V

    .line 539
    const/16 v0, 0x427

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    .line 549
    :goto_145
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$402(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    goto/16 :goto_b

    .line 541
    :cond_14c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->getSMSNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1802(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;->getVerificationToken()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1902(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_18a

    .line 544
    const-string v0, "will send verification token \'%s\' to number \'%s\'"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 547
    :cond_18a
    const/16 v0, 0x426

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto :goto_145

    .line 553
    :sswitch_190
    const/16 v0, 0x42e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 557
    :sswitch_197
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto/16 :goto_b

    .line 561
    :sswitch_1a0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3f3

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.google.android.apps.googlevoice.ForwardingPhoneActivity.TOKEN_SENT"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.google.android.apps.googlevoice.ForwardingPhoneActivity.TOKEN_SENT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v9, sentIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x42e

    const/high16 v3, 0x4000

    invoke-static {v0, v1, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 566
    .local v4, sentPendingIntent:Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/system/SmsSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/SmsSender;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_b

    .line 570
    .end local v4           #sentPendingIntent:Landroid/app/PendingIntent;
    .end local v9           #sentIntent:Landroid/content/Intent;
    :sswitch_1e2
    const/16 v0, 0x442

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 574
    :sswitch_1e9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto/16 :goto_b

    .line 579
    :sswitch_1f7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3f4

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)V

    .line 580
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/4 v1, 0x6

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2202(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v1, 0x3e8

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2302(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I

    .line 583
    const/16 v0, 0x443

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 587
    :sswitch_214
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21d

    .line 588
    const-string v0, "confirming text message Token"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 590
    :cond_21d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createConfirmVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$602(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setVerificationToken(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->setCreateNewAccount(Z)V

    .line 593
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/16 v2, 0x444

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v3

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_b

    .line 598
    :sswitch_25d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, v1, :cond_285

    .line 600
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring canceled sms confirm result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 605
    :cond_285
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_2a1

    .line 606
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v1

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ApiRpc;)V

    .line 607
    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 609
    :cond_2a1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getIsVerified()Z

    move-result v0

    if-eqz v0, :cond_305

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getDeviceNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$902(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getFormattedDeviceNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1002(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_2f1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmed number via text message = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 615
    :cond_2f1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_300

    .line 616
    const/16 v0, 0x445

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 619
    :cond_300
    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 622
    :cond_305
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_30e

    .line 623
    const-string v0, "text message token not yet confirmed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 625
    :cond_30e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2206(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I

    move-result v0

    if-lez v0, :cond_351

    .line 626
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2328(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I

    .line 627
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_343

    .line 628
    const-string v0, "%d text message confirmation attempts remaining, waiting %d ms"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 632
    :cond_343
    const/16 v0, 0x443

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$2300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 634
    :cond_351
    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 641
    :sswitch_356
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$602(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$1100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->updateVoicemailProviderStatus(Lcom/google/android/apps/googlevoice/system/ComponentManager;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 645
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_38e

    .line 646
    const-string v0, "text message token confirmed, createAccount"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 648
    :cond_38e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0, v12}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->setResult(I)V

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->finish()V

    goto/16 :goto_b

    .line 654
    :sswitch_39f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 655
    const/16 v6, 0x3ec

    .line 657
    .local v6, dialogId:I
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 658
    .local v7, exception:Ljava/lang/Exception;
    instance-of v0, v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v0, :cond_3c0

    check-cast v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v7           #exception:Ljava/lang/Exception;
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->FORWARDING_IN_USE:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v0, v1, :cond_3c0

    .line 661
    const/16 v6, 0x3ed

    .line 663
    :cond_3c0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$602(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    goto/16 :goto_b

    .line 471
    :sswitch_data_3cc
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_5a
        0x3 -> :sswitch_99
        0x4 -> :sswitch_90
        0x5 -> :sswitch_a5
        0x424 -> :sswitch_ac
        0x425 -> :sswitch_101
        0x426 -> :sswitch_190
        0x427 -> :sswitch_197
        0x42e -> :sswitch_1a0
        0x42f -> :sswitch_1e2
        0x430 -> :sswitch_1e9
        0x442 -> :sswitch_1f7
        0x443 -> :sswitch_214
        0x444 -> :sswitch_25d
        0x445 -> :sswitch_356
        0x446 -> :sswitch_39f
    .end sparse-switch
.end method

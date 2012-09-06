.class Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;
.super Landroid/os/Handler;
.source "VoicemailProviderSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "message"

    .prologue
    const/16 v7, 0x4b0

    const/4 v6, -0x1

    const/16 v3, 0x3fc

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 317
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_2aa

    .line 462
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 464
    :cond_33
    :goto_33
    :sswitch_33
    return-void

    .line 319
    :sswitch_34
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 320
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$400(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    const/16 v2, 0x3f3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x3f4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_33

    .line 323
    :cond_56
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 328
    :sswitch_5a
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_75

    .line 329
    const-string v1, "credentials OK, voicemail number == \'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 332
    :cond_75
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteVoicemailSetup()Z

    move-result v1

    if-nez v1, :cond_33

    .line 333
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 338
    :sswitch_85
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 342
    :sswitch_89
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$400(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->authenticate(Landroid/app/Activity;I)V

    goto :goto_33

    .line 346
    :sswitch_95
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_b0

    .line 347
    const-string v1, "login OK, voicemail number == \'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 350
    :cond_b0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 351
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33

    .line 356
    :sswitch_c1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setResult(I)V

    .line 357
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->finish()V

    goto/16 :goto_33

    .line 361
    :sswitch_cd
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const-class v4, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.google.android.apps.googlevoice.SignOutActivity.JUST_RETURN"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x401

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_33

    .line 371
    :sswitch_e5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, splashIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    const-string v1, "com.google.adroid.apps.googlevoice.SplashActivity.QUIT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    const-string v1, "com.google.adroid.apps.googlevoice.SplashActivity.RESET_VOICEMAIL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->splashingOut:Z
    invoke-static {v1, v5}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$502(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Z)Z

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_33

    .line 385
    .end local v0           #splashIntent:Landroid/content/Intent;
    :sswitch_10d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone.Signout"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->finish()V

    goto/16 :goto_33

    .line 395
    :sswitch_124
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v2, 0x89f

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showDialog(I)V

    .line 396
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$700(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetVoicemailConfigurationRpc()Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$602(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$800(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->setCarrierCode(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->setDeviceNumber(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v3, 0x4b1

    #calls: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->taskForEmptyMessage(I)Lcom/google/android/apps/googlevoice/MessageTask;
    invoke-static {v2, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$900(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;I)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_33

    .line 404
    :sswitch_173
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v2, 0x89f

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dismissDialog(I)V

    .line 405
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->isCompletedOrException()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 406
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 407
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    #calls: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1000(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 408
    const/16 v1, 0x4b2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33

    .line 411
    :cond_1a7
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$102(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectNumber()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1102(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$202(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;->getVoicemailRedirectType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v2

    #setter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1202(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 416
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_203

    .line 417
    const-string v1, "voicemail config retrieved OK, voicemail \'%s\', diversion \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 421
    :cond_203
    const/16 v1, 0x4b3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33

    .line 428
    :sswitch_20a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailNumber(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionNumber(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionCode(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setVoicemailDiversionType(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)V

    .line 433
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteVoicemailSetup(Z)V

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->getNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_2e4

    goto/16 :goto_33

    .line 436
    :pswitch_25e
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone.VoicemailNumber"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.ForwardingNumber"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->access$1100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.ForwardingNumberTime"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->finish()V

    goto/16 :goto_33

    .line 446
    :pswitch_28f
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v2, 0xbba

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 452
    :pswitch_298
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v2, 0xbbb

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 458
    :sswitch_2a1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 317
    :sswitch_data_2aa
    .sparse-switch
        0x3f2 -> :sswitch_34
        0x3f3 -> :sswitch_5a
        0x3f4 -> :sswitch_85
        0x3fc -> :sswitch_89
        0x3fd -> :sswitch_95
        0x3fe -> :sswitch_c1
        0x401 -> :sswitch_cd
        0x402 -> :sswitch_e5
        0x403 -> :sswitch_33
        0x406 -> :sswitch_10d
        0x4b0 -> :sswitch_124
        0x4b1 -> :sswitch_173
        0x4b2 -> :sswitch_2a1
        0x4b3 -> :sswitch_20a
    .end sparse-switch

    .line 434
    :pswitch_data_2e4
    .packed-switch 0x0
        :pswitch_25e
        :pswitch_28f
        :pswitch_298
        :pswitch_298
    .end packed-switch
.end method

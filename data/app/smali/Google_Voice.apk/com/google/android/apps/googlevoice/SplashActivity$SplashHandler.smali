.class Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/SplashActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/SplashActivity;Lcom/google/android/apps/googlevoice/SplashActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;-><init>(Lcom/google/android/apps/googlevoice/SplashActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "message"

    .prologue
    const/16 v11, 0xe

    const/16 v6, 0xd

    const/4 v10, 0x0

    const/16 v2, 0xa

    const/4 v9, 0x1

    .line 307
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_3c

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SplashActivity.handleMessage(): message.what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SplashActivity.handleMessage(): message.obj = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 314
    :cond_3c
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_21c

    .line 440
    :goto_41
    return-void

    .line 316
    :sswitch_42
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 317
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, messageDone:Landroid/os/Message;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;

    move-result-object v6

    invoke-interface {v6, v1, v1}, Lcom/google/android/apps/googlevoice/system/AccountHelper;->getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_41

    .line 321
    .end local v1           #messageDone:Landroid/os/Message;
    :cond_6a
    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 326
    :sswitch_6e
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v6

    if-eqz v6, :cond_8c

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didConfigurePushNotifications()Z

    move-result v6

    if-nez v6, :cond_8c

    .line 328
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #calls: Lcom/google/android/apps/googlevoice/SplashActivity;->upgradeUpdateIntervalSetting()V
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$400(Lcom/google/android/apps/googlevoice/SplashActivity;)V

    goto :goto_41

    .line 330
    :cond_8c
    const/16 v6, 0xf

    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 339
    :sswitch_92
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v7

    sget-object v8, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v7, v8, :cond_e0

    .line 340
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_a9

    .line 341
    const-string v7, "SplashActivity START: first run already completed; loading credentials"

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 346
    :cond_a9
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v8

    if-eq v7, v8, :cond_de

    .line 350
    .local v2, nextStep:I
    :goto_bf
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto/16 :goto_41

    .end local v2           #nextStep:I
    :cond_de
    move v2, v6

    .line 346
    goto :goto_bf

    .line 353
    :cond_e0
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_114

    .line 354
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_f5

    .line 355
    const-string v6, "SplashActivity START: first run not completed, but have an account; loading credentials before starting first run activity"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 359
    :cond_f5
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v8}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto/16 :goto_41

    .line 363
    :cond_114
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_11d

    .line 364
    const-string v6, "SplashActivity START: not yet authenticated, letting the user do thatin SetupActivity"

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 367
    :cond_11d
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_41

    .line 372
    :sswitch_122
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #setter for: Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z
    invoke-static {v6, v9}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$502(Lcom/google/android/apps/googlevoice/SplashActivity;Z)Z

    .line 373
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    const-class v8, Lcom/google/android/apps/googlevoice/activity/setup/SetupStartActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.google.android.apps.googlevoice.PARENT_IS_SELF"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 377
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.google.android.apps.googlevoice.CHECK_CARRIER_PROVISIONING"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_157

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.google.android.apps.googlevoice.CHECK_CARRIER_PROVISIONING"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 379
    const-string v6, "com.google.android.apps.googlevoice.DEVICE_SETUP"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    :cond_157
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v6, v0, v2}, Lcom/google/android/apps/googlevoice/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_41

    .line 385
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_15e
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #setter for: Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z
    invoke-static {v7, v10}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$502(Lcom/google/android/apps/googlevoice/SplashActivity;Z)Z

    .line 386
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_41

    .line 390
    :sswitch_172
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #setter for: Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z
    invoke-static {v6, v10}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$502(Lcom/google/android/apps/googlevoice/SplashActivity;Z)Z

    .line 391
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1a0

    .line 394
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccount(Ljava/lang/String;)V

    .line 395
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAuthToken(Ljava/lang/String;)V

    .line 396
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setUsingLoginService(Z)V

    .line 398
    :cond_1a0
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->finish()V

    goto/16 :goto_41

    .line 402
    :sswitch_1a7
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 403
    .local v3, now:J
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v5

    .line 405
    .local v5, serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v6

    if-eqz v6, :cond_218

    .line 407
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->cancelUpdateAlarm()V

    .line 409
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 411
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->shouldReregister()Z

    move-result v6

    if-eqz v6, :cond_1e4

    .line 412
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestInboxNotificationRegistration()V

    .line 421
    :cond_1e4
    :goto_1e4
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/SplashActivity;->access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getShadowNumberRefreshTimestamp()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v6, v6, v3

    if-gez v6, :cond_1ff

    .line 425
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v3

    const-wide/32 v8, 0x5265c00

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/google/android/apps/googlevoice/ServiceManager;->scheduleShadowNumberRefreshAlarm(JJ)V

    .line 430
    :cond_1ff
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    const-class v7, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v7, "inbox"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;->this$0:Lcom/google/android/apps/googlevoice/SplashActivity;

    const/16 v7, 0x14

    invoke-virtual {v6, v0, v7}, Lcom/google/android/apps/googlevoice/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_41

    .line 416
    .end local v0           #intent:Landroid/content/Intent;
    :cond_218
    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestUpdateServiceStart()V

    goto :goto_1e4

    .line 314
    :sswitch_data_21c
    .sparse-switch
        0x0 -> :sswitch_42
        0xa -> :sswitch_122
        0xb -> :sswitch_15e
        0xc -> :sswitch_172
        0xd -> :sswitch_1a7
        0xe -> :sswitch_6e
        0xf -> :sswitch_92
        0x1f5 -> :sswitch_92
        0x1f6 -> :sswitch_92
    .end sparse-switch
.end method

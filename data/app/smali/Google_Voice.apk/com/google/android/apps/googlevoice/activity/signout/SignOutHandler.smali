.class Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "SignOutHandler.java"


# instance fields
.field private final activity:Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;

.field private final activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private enableSms:Z

.field private final idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

.field private final intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

.field private final serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private final shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

.field private final signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

.field private final smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private final unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/UnreadNotifier;Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;Lcom/google/android/apps/googlevoice/activity/IntentFactory;Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/ShadowNumbers;Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;)V
    .registers 16
    .parameter "dependencyResolver"
    .parameter "voicePreferences"
    .parameter "voiceModel"
    .parameter "unreadNotifier"
    .parameter "activity"
    .parameter "intentFactory"
    .parameter "activityHelper"
    .parameter "log"
    .parameter "serviceManager"
    .parameter "shadowNumbers"
    .parameter "signInStatusRegistrar"
    .parameter "smsOutboxManager"
    .parameter "notificationManager"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 60
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 61
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    .line 62
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activity:Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;

    .line 63
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    .line 64
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 65
    iput-object p8, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->log:Lcom/google/android/apps/common/log/GLog;

    .line 66
    new-instance v0, Lcom/google/android/apps/googlevoice/IdNumberHelper;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;

    invoke-direct {v0, p8, v1}, Lcom/google/android/apps/googlevoice/IdNumberHelper;-><init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    .line 67
    iput-object p9, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 68
    iput-object p10, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 69
    iput-object p11, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    .line 70
    iput-object p12, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 71
    iput-object p13, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v3, 0x3ed

    const/16 v2, 0x3eb

    const/16 v9, 0x3e8

    const/4 v1, 0x0

    const/16 v8, 0x3e9

    .line 81
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->getNameForValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 83
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_134

    .line 174
    :goto_38
    return-void

    .line 85
    :pswitch_39
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_43

    :goto_3d
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->enableSms:Z

    .line 86
    invoke-virtual {p0, v9}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto :goto_38

    .line 85
    :cond_43
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3d

    .line 90
    :pswitch_4c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v8}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->showDialog(I)V

    .line 91
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto :goto_38

    .line 95
    :pswitch_57
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isRegisteredForInboxNotifications()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->getDelegate()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->TOGGLE:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newPushNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38

    .line 104
    :cond_7b
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto :goto_38

    .line 109
    :pswitch_81
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->enableSms:Z

    if-eqz v1, :cond_8a

    move v1, v2

    :goto_86
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto :goto_38

    :cond_8a
    move v1, v3

    goto :goto_86

    .line 114
    :pswitch_8c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->getDelegate()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;->ENABLE:Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newSmsNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38

    .line 122
    :pswitch_a0
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto :goto_38

    .line 127
    :pswitch_a4
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteVoicemailSetup()Z

    move-result v0

    .line 128
    .local v0, shouldResetVoicemail:Z
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clear()V

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->ignoreContactsUpToDate()V

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->clear()V

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->clearOutboxes()V

    .line 132
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/UnreadNotifier;->onUserSignedOut(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activity:Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;->setSigningOut(Z)V

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activity:Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;->isJustReturn()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newSplashIntentAndQuit(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_e3
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ServiceManager;->updateWidget()V

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->clear()V

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->onSigningOut()V

    .line 142
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_38

    .line 146
    .end local v0           #shouldResetVoicemail:Z
    :pswitch_f9
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v8}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->dismissDialog(I)V

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto/16 :goto_38

    .line 152
    :pswitch_10b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v9}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->showDialog(I)V

    goto/16 :goto_38

    .line 156
    :pswitch_112
    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_38

    .line 160
    :pswitch_117
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;-><init>(Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.apps.googlevoice.UpdateService.STOPPED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestUpdateServiceStop()V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;->cancelAll()V

    goto/16 :goto_38

    .line 83
    :pswitch_data_134
    .packed-switch 0x3e8
        :pswitch_4c
        :pswitch_57
        :pswitch_81
        :pswitch_8c
        :pswitch_a0
        :pswitch_a4
        :pswitch_f9
        :pswitch_10b
        :pswitch_117
        :pswitch_112
        :pswitch_39
    .end packed-switch
.end method

.method setEnableSms(Z)V
    .registers 2
    .parameter "enableSms"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->enableSms:Z

    .line 77
    return-void
.end method

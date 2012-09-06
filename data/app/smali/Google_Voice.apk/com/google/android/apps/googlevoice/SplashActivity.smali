.class public Lcom/google/android/apps/googlevoice/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_CHECK_CARRIER_PROVISIONING:Ljava/lang/String; = "com.google.android.apps.googlevoice.CHECK_CARRIER_PROVISIONING"

.field public static final EXTRA_QUIT:Ljava/lang/String; = "com.google.adroid.apps.googlevoice.SplashActivity.QUIT"

.field public static final EXTRA_RESET_VOICEMAIL:Ljava/lang/String; = "com.google.adroid.apps.googlevoice.SplashActivity.RESET_VOICEMAIL"

.field private static final ID_CONVERSATION_LIST_ACTIVITY:I = 0x14

.field private static final ID_FINISHED:I = 0xd

.field private static final ID_GET_DEVICE_PRIMARY_ACCOUNT_DONE:I = 0xe

.field private static final ID_LOGIN:I = 0x1

.field private static final ID_NO_NEED_TO_REGISTER:I = 0xf

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS:I = 0x1f4

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS_FAILED:I = 0x1f6

.field private static final ID_REGISTER_FOR_PUSH_NOTIFICATIONS_OK:I = 0x1f5

.field private static final ID_SETUP_ACTIVITY:I = 0xa

.field private static final ID_SETUP_ACTIVITY_CANCELED:I = 0xc

.field private static final ID_SETUP_ACTIVITY_OK:I = 0xb

.field private static final ID_START:I = 0x0

.field private static final STATE_IN_SETUP_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.google.voice.SplashActivity.STATE_IN_SETUP_ACTIVITY"


# instance fields
.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private inSetupActivity:Z

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z

    .line 304
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/SplashActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/SplashActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->upgradeUpdateIntervalSetting()V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/apps/googlevoice/SplashActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z

    return p1
.end method

.method private checkDone()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 62
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_11

    .line 63
    const-string v2, "SplashActivity.checkDone(): already finishing, returning true"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 88
    :cond_11
    :goto_11
    return v1

    .line 67
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.google.adroid.apps.googlevoice.SplashActivity.QUIT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 68
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_2d

    .line 69
    const-string v3, "SplashActivity.checkDone(): QUIT intent, finishing"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 71
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.google.adroid.apps.googlevoice.SplashActivity.RESET_VOICEMAIL"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 73
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_42

    .line 74
    const-string v2, "SplashActivity.checkDone(): ... also resetting voicemail provider"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 76
    :cond_42
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderActivity;->resetVoicemailProviderIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, resetVoicemailIntent:Landroid/content/Intent;
    if-eqz v0, :cond_4b

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    .end local v0           #resetVoicemailIntent:Landroid/content/Intent;
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->finish()V

    goto :goto_11

    .line 85
    :cond_4f
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_58

    .line 86
    const-string v1, "SplashActivity.checkDone(): not done, not finishing"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    :cond_58
    move v1, v2

    .line 88
    goto :goto_11
.end method

.method private upgradeFirstRunSetting()Z
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getFirstRunCompleted()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearFirstRunCompleted()V

    .line 280
    const/4 v0, 0x1

    .line 282
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private upgradeUpdateIntervalSetting()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalSeconds()I

    move-result v0

    if-lez v0, :cond_20

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.push.REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearUpdateInterval()V

    .line 297
    return-void

    .line 294
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_1a
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v2, 0xc

    .line 155
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_32

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashActivity.onActivityResult(): requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashActivity.onActivityResult(): resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 160
    :cond_32
    sparse-switch p1, :sswitch_data_7e

    .line 202
    :goto_35
    return-void

    .line 162
    :sswitch_36
    packed-switch p2, :pswitch_data_90

    goto :goto_35

    .line 164
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v0, v1, :cond_4c

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 171
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 175
    :pswitch_54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 181
    :sswitch_5a
    packed-switch p2, :pswitch_data_98

    goto :goto_35

    .line 183
    :pswitch_5e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 186
    :pswitch_66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 192
    :sswitch_6c
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_77

    const/16 v0, 0x1f5

    :goto_73
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_35

    :cond_77
    const/16 v0, 0x1f6

    goto :goto_73

    .line 199
    :sswitch_7a
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->finish()V

    goto :goto_35

    .line 160
    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_36
        0xa -> :sswitch_5a
        0x14 -> :sswitch_7a
        0x1f4 -> :sswitch_6c
    .end sparse-switch

    .line 162
    :pswitch_data_90
    .packed-switch -0x1
        :pswitch_3a
        :pswitch_54
    .end packed-switch

    .line 181
    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_5e
        :pswitch_66
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-object v2, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 96
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_11

    .line 97
    const-string v2, "SplashActivity.onCreate()"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 100
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->checkDone()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 136
    :goto_17
    return-void

    .line 104
    :cond_18
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/SplashActivity;->requestWindowFeature(I)Z

    .line 105
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 107
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    new-instance v3, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/googlevoice/SplashActivity$SplashHandler;-><init>(Lcom/google/android/apps/googlevoice/SplashActivity;Lcom/google/android/apps/googlevoice/SplashActivity$1;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 112
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v1

    .line 113
    .local v1, signIsStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    new-instance v2, Lcom/google/android/apps/googlevoice/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/SplashActivity$1;-><init>(Lcom/google/android/apps/googlevoice/SplashActivity;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.android.apps.googlevoice.CHECK_CARRIER_PROVISIONING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.google.android.apps.googlevoice.CHECK_CARRIER_PROVISIONING"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    .local v0, checkCarrierProvisioning:Z
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVeryPersistentPreferences()Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setCheckCarrierProvisioning(Z)V

    .line 133
    .end local v0           #checkCarrierProvisioning:Z
    :cond_6e
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->upgradeFirstRunSetting()Z

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceApplication;->updateComponentSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    goto :goto_17
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 206
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 207
    const-string v0, "SplashActivity.onDestroy()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 209
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 210
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 214
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_13

    .line 215
    const-string v0, "SplashActivity.onNewIntent(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 217
    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/SplashActivity;->setIntent(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 223
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 224
    const-string v0, "SplashActivity.onPause()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 226
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 231
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 232
    const-string v0, "SplashActivity.onRestart():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 234
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 269
    const-string v0, "com.google.android.apps.google.voice.SplashActivity.STATE_IN_SETUP_ACTIVITY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z

    .line 270
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 239
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 240
    const-string v0, "SplashActivity.onResume()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 242
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->checkDone()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 244
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1b

    .line 245
    const-string v0, "SplashActivity.onResume(): done, canceling START message and finishing"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 247
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeMessages(I)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->finish()V

    .line 250
    :cond_24
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "com.google.android.apps.google.voice.SplashActivity.STATE_IN_SETUP_ACTIVITY"

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 141
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashActivity.onStart(): intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 144
    :cond_21
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/SplashActivity;->checkDone()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->inSetupActivity:Z

    if-nez v0, :cond_3a

    .line 145
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_34

    .line 146
    const-string v0, "SplashActivity.onStart(): not done and not in setup activity, sending START message"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 149
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SplashActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 151
    :cond_3a
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 254
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 255
    const-string v0, "SplashActivity.onStop()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 257
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 258
    return-void
.end method

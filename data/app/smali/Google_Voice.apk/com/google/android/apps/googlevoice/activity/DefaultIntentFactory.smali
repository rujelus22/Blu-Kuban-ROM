.class public Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory;
.super Ljava/lang/Object;
.source "DefaultIntentFactory.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/IntentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public newDoNotDisturbSettingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public newPushNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "action"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, actionString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory$1;->$SwitchMap$com$google$android$apps$googlevoice$activity$IntentFactory$PushNotificationSettingAction:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 44
    :goto_c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 32
    :pswitch_18
    const-string v0, "com.google.android.apps.googlevoice.push.REGISTER"

    .line 33
    goto :goto_c

    .line 36
    :pswitch_1b
    const-string v0, "com.google.android.apps.googlevoice.push.UNREGISTER"

    .line 37
    goto :goto_c

    .line 40
    :pswitch_1e
    const-string v0, "com.google.android.apps.googlevoice.push.TOGGLE"

    goto :goto_c

    .line 30
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public newServicePendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public newSmsNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "action"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, actionString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/googlevoice/activity/DefaultIntentFactory$1;->$SwitchMap$com$google$android$apps$googlevoice$activity$IntentFactory$SmsNotificationSettingAction:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 65
    :goto_c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 53
    :pswitch_18
    const-string v0, "com.google.android.apps.googlevoice.sms.ENABLE"

    .line 54
    goto :goto_c

    .line 57
    :pswitch_1b
    const-string v0, "com.google.android.apps.googlevoice.sms.DISABLE"

    .line 58
    goto :goto_c

    .line 61
    :pswitch_1e
    const-string v0, "com.google.android.apps.googlevoice.sms.TOGGLE"

    goto :goto_c

    .line 51
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public newSplashIntentAndQuit(Landroid/content/Context;Z)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "shouldResetVoicemail"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    const-string v1, "com.google.adroid.apps.googlevoice.SplashActivity.QUIT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v1, "com.google.adroid.apps.googlevoice.SplashActivity.RESET_VOICEMAIL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method public newUpdateWidgetIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter "context"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

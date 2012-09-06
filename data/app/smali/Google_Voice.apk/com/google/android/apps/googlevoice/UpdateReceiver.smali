.class public Lcom/google/android/apps/googlevoice/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field public static final BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final LOGIN_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final RETRY_UPDATE:Ljava/lang/String; = "com.google.android.apps.googlevoice.RETRY_UPDATE"

.field public static final SCHEDULED_UPDATE:Ljava/lang/String; = "com.google.android.apps.googlevoice.SCHEDULED_UPDATE"

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 38
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_16

    .line 39
    const-string v5, "UpdateReceiver.onReceive(Context=\'%s\', Intent=\'%s\')"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 42
    :cond_16
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    .line 44
    .local v4, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v5

    sget-object v6, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-eq v5, v6, :cond_f0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.apps.googlevoice.RETRY_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 46
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_3b

    .line 47
    const-string v5, "UpdateReceiver.onReceive(): Starting UpdateService for retry update"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 50
    :cond_3b
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestRetryUpdate(Landroid/content/Context;)V

    .line 103
    :cond_3e
    :goto_3e
    return-void

    .line 51
    :cond_3f
    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->mayUseDataInBackground()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.apps.googlevoice.LoginActivity.SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 54
    :cond_5d
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_66

    .line 55
    const-string v5, "UpdateReceiver.onReceive(): Starting UpdateService with fresh auth data"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 58
    :cond_66
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForNotification(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, now:J
    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v2

    .line 64
    .local v2, then:J
    sub-long v5, v0, v2

    const-wide/32 v7, 0x3dcc500

    cmp-long v5, v5, v7

    if-lez v5, :cond_3e

    .line 66
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->requestRegistration(Landroid/content/Context;)V

    goto :goto_3e

    .line 69
    .end local v0           #now:J
    .end local v2           #then:J
    :cond_88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 70
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_9d

    .line 71
    const-string v5, "UpdateReceiver.onReceive(): Starting UpdateService in response to incoming text message"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 74
    :cond_9d
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForNotification(Landroid/content/Context;)V

    goto :goto_3e

    .line 75
    :cond_a1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.apps.googlevoice.SCHEDULED_UPDATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 76
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_b6

    .line 77
    const-string v5, "UpdateReceiverr.onReceive(): Starting UpdateService for scheduled update"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 80
    :cond_b6
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForPeriodicUpdate(Landroid/content/Context;)V

    goto :goto_3e

    .line 81
    :cond_ba
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 82
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_cf

    .line 83
    const-string v5, "UpdateReceiver.onReceive(): Starting UpdateService on background data setting change"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 86
    :cond_cf
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForPeriodicUpdate(Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 88
    :cond_d4
    const-string v5, "UpdateReceiver.onReceive(Context=\'%s\', Intent=\'%s\'): unexpected intent!"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 93
    :cond_e5
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_3e

    .line 94
    const-string v5, "UpdateReceiver.onReceive(): configured to not use background data, ignoring."

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 99
    :cond_f0
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_3e

    .line 100
    const-string v5, "UpdateReceiver.onReceive(): First Run not yet completed, ignoring."

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_3e
.end method

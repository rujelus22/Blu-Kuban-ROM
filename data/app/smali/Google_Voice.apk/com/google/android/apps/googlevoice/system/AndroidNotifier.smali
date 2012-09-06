.class public Lcom/google/android/apps/googlevoice/system/AndroidNotifier;
.super Ljava/lang/Object;
.source "AndroidNotifier.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/Notifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/system/AndroidNotifier$ClearUnreadNotificationListenerService;
    }
.end annotation


# static fields
.field public static final ACTION_GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field private static final ID_NOTIFICATION_AUTHENTICATE:I = 0x3eb

.field private static final ID_NOTIFICATION_INBOX_REGISTRATION_FAILED:I = 0x3ec

.field private static final ID_NOTIFICATION_SMS_FAILED:I = 0x3ed

.field private static final ID_NOTIFICATION_UNREAD:I = 0x3e9


# instance fields
.field private final checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V
    .registers 7
    .parameter "context"
    .parameter "voicePreferences"
    .parameter "clockUtils"
    .parameter "checkinLog"
    .parameter "serverSettings"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 67
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 68
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 70
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    .line 72
    return-void
.end method

.method public static setFlashLights(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 3
    .parameter "notification"
    .parameter "prefs"

    .prologue
    .line 238
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationLight()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    const v0, -0xff0100

    iput v0, p0, Landroid/app/Notification;->ledARGB:I

    .line 240
    const/16 v0, 0x190

    iput v0, p0, Landroid/app/Notification;->ledOnMS:I

    .line 241
    const/16 v0, 0x834

    iput v0, p0, Landroid/app/Notification;->ledOffMS:I

    .line 242
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 244
    :cond_19
    return-void
.end method

.method public static setSoundAndVibrate(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 3
    .parameter "notification"
    .parameter "prefs"

    .prologue
    .line 225
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 226
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v0, :cond_10

    .line 227
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 229
    :cond_10
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationVibrate()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 230
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 232
    :cond_1c
    return-void
.end method

.method public static setSoundVibrateAndFlash(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 2
    .parameter "notification"
    .parameter "prefs"

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundAndVibrate(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 218
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setFlashLights(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 219
    return-void
.end method

.method private showNewCallNotification([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Z
    .registers 12
    .parameter "newlyArrivedCalls"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 107
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v8, v9}, Lcom/google/android/apps/googlevoice/VoiceUtil;->displayTextMessageStatusBarNotification(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v1

    .line 109
    .local v1, displayTextNotification:Z
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewVoicemail()Z

    move-result v8

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVvmEnabled()Z

    move-result v8

    if-nez v8, :cond_2b

    move v2, v6

    .line 111
    .local v2, displayVoicemailNotification:Z
    :goto_1b
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1e
    if-ge v3, v4, :cond_38

    aget-object v5, v0, v3

    .line 112
    .local v5, newlyArrivedCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    if-eqz v1, :cond_2d

    iget-object v8, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget-object v9, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne v8, v9, :cond_2d

    .line 121
    .end local v5           #newlyArrivedCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_2a
    :goto_2a
    return v6

    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v2           #displayVoicemailNotification:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2b
    move v2, v7

    .line 109
    goto :goto_1b

    .line 116
    .restart local v0       #arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .restart local v2       #displayVoicemailNotification:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #newlyArrivedCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_2d
    if-eqz v2, :cond_35

    iget-object v8, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget-object v9, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-eq v8, v9, :cond_2a

    .line 111
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .end local v5           #newlyArrivedCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_38
    move v6, v7

    .line 121
    goto :goto_2a
.end method


# virtual methods
.method public cancelAuthenticationNotification()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 183
    return-void
.end method

.method public cancelInboxNotificationRegistrationExpiredNotification()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 269
    return-void
.end method

.method public cancelSmsFailedNotification()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 297
    return-void
.end method

.method public cancelUnreadNotification()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v1, "AN: Notification removed."

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public notifyAccountTypeChange(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
    .registers 16
    .parameter "oldType"
    .parameter "newType"

    .prologue
    .line 187
    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->getNumber()I

    move-result v11

    if-le v10, v11, :cond_5e

    const/4 v7, 0x1

    .line 188
    .local v7, upgrade:Z
    :goto_b
    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->stat_sys_gvoice:I

    .line 189
    .local v3, icon:I
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    if-eqz v7, :cond_60

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_upgrade_ticker:I

    :goto_13
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 194
    .local v8, when:J
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 196
    .local v4, notification:Landroid/app/Notification;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    if-eqz v7, :cond_63

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_upgrade_title:I

    :goto_26
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, contentTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    if-eqz v7, :cond_66

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_upgrade_content:I

    :goto_30
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, contentText:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const-class v12, Lcom/google/android/apps/googlevoice/SplashActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x400

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 202
    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {v10, v11, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 204
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    invoke-virtual {v4, v10, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 205
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v4, v10}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundVibrateAndFlash(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 207
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v11, 0x3e9

    invoke-virtual {v10, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    return-void

    .line 187
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentText:Ljava/lang/String;
    .end local v2           #contentTitle:Ljava/lang/String;
    .end local v3           #icon:I
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    .end local v6           #tickerText:Ljava/lang/String;
    .end local v7           #upgrade:Z
    .end local v8           #when:J
    :cond_5e
    const/4 v7, 0x0

    goto :goto_b

    .line 189
    .restart local v3       #icon:I
    .restart local v7       #upgrade:Z
    :cond_60
    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_downgrade_ticker:I

    goto :goto_13

    .line 196
    .restart local v4       #notification:Landroid/app/Notification;
    .restart local v6       #tickerText:Ljava/lang/String;
    .restart local v8       #when:J
    :cond_63
    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_downgrade_title:I

    goto :goto_26

    .line 198
    .restart local v2       #contentTitle:Ljava/lang/String;
    :cond_66
    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_account_downgrade_content:I

    goto :goto_30
.end method

.method public notifyAuthentication()V
    .registers 11

    .prologue
    .line 159
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const-class v7, Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v2, loginIntent:Landroid/content/Intent;
    const-string v6, "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUsingLoginService()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v6, "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v6, "com.google.android.apps.googlevoice.LoginActivity.BROADCAST_SUCCESS"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const/high16 v6, 0x3800

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->stat_notify_error:I

    .line 169
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    .local v4, when:J
    new-instance v3, Landroid/app/Notification;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 171
    .local v3, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x800

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    sget v8, Lcom/google/android/apps/googlevoice/R$string;->login_notification_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    sget v9, Lcom/google/android/apps/googlevoice/R$string;->login_notification_body:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 177
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v7, 0x3eb

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 178
    return-void
.end method

.method public notifyInboxNotificationRegistrationExpired()V
    .registers 13

    .prologue
    .line 248
    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->stat_sys_gvoice:I

    .line 249
    .local v3, icon:I
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_inbox_registration_ticker:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 252
    .local v7, when:J
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 254
    .local v4, notification:Landroid/app/Notification;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_inbox_registration_title:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, contentTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->notification_inbox_registration_content:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, contentText:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const-class v11, Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 258
    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x800

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 260
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    invoke-virtual {v4, v9, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 261
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-static {v4, v9}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->setSoundVibrateAndFlash(Landroid/app/Notification;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 263
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    const/16 v10, 0x3ec

    invoke-virtual {v9, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 264
    return-void
.end method

.method public notifySmsFailed(Ljava/util/Map;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, exceptionsBySmsPhoneCall:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/googlevoice/core/PhoneCall;Ljava/lang/Exception;>;"
    const/16 v4, 0x3ed

    .line 276
    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->displayTextMessageStatusBarNotification(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 278
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 279
    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/system/AndroidSmsFailureNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 286
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 287
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 292
    .end local v0           #notification:Landroid/app/Notification;
    :cond_2b
    :goto_2b
    return-void

    .line 289
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->cancelSmsFailedNotification()V

    goto :goto_2b
.end method

.method public notifyUnread([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V
    .registers 10
    .parameter "unreadCalls"
    .parameter "newlyArrivedCalls"

    .prologue
    const/16 v6, 0x3e9

    const/4 v5, 0x0

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v2, "AN: notification request received."

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 78
    array-length v1, p1

    if-lez v1, :cond_45

    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->showNewCallNotification([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 79
    new-instance v1, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/system/AndroidUnreadNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 82
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/googlevoice/system/AndroidNotifier$ClearUnreadNotificationListenerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x800

    invoke-static {v1, v5, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v2, "AN: Notification displayed."

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 104
    .end local v0           #notification:Landroid/app/Notification;
    :goto_44
    return-void

    .line 97
    :cond_45
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v2, "AN: Notification ignored. numUnreadCalls: %d, newlyArrivedCalls: %d displayTextMessageStatusBarNotification: %b notifyWhenNewVoicemail: %b"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v5, v6}, Lcom/google/android/apps/googlevoice/VoiceUtil;->displayTextMessageStatusBarNotification(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->notifyWhenNewVoicemail()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    goto :goto_44
.end method

.method public sendBroadcastReceivedSms(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "phoneNumber"
    .parameter "text"

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "com.google.android.apps.googlevoice.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidNotifier;->context:Landroid/content/Context;

    const-string v2, "com.google.android.apps.googlevoice.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 306
    return-void
.end method

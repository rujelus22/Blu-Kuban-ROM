.class public interface abstract Lcom/google/android/apps/googlevoice/activity/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;,
        Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;
    }
.end annotation


# virtual methods
.method public abstract newDoNotDisturbSettingIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract newPushNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;)Landroid/content/Intent;
.end method

.method public abstract newServicePendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
.end method

.method public abstract newSmsNotificationSettingIntent(Landroid/content/Context;Lcom/google/android/apps/googlevoice/activity/IntentFactory$SmsNotificationSettingAction;)Landroid/content/Intent;
.end method

.method public abstract newSplashIntentAndQuit(Landroid/content/Context;Z)Landroid/content/Intent;
.end method

.method public abstract newUpdateWidgetIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

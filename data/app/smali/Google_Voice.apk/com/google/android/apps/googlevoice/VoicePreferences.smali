.class public interface abstract Lcom/google/android/apps/googlevoice/VoicePreferences;
.super Ljava/lang/Object;
.source "VoicePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearAccessNumber()V
.end method

.method public abstract clearDoNotCallNumber()V
.end method

.method public abstract clearFirstRunCompleted()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearUpdateInterval()V
.end method

.method public abstract didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
.end method

.method public abstract didCompleteVoicemailSetup()Z
.end method

.method public abstract didConfigurePushNotifications()Z
.end method

.method public abstract disableCallInterceptor()V
.end method

.method public abstract ensureInterceptorStateForAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
.end method

.method public abstract ensureInterceptorStateForMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V
.end method

.method public abstract getAccessNumber()Ljava/lang/String;
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccountBalance()I
.end method

.method public abstract getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getDisplayableAccountBalance()Ljava/lang/String;
.end method

.method public abstract getDoNotCallNumber()Ljava/lang/String;
.end method

.method public abstract getFirstRunCompleted()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFormattedForwardingNumber()Ljava/lang/String;
.end method

.method public abstract getForwardingNumber()Ljava/lang/String;
.end method

.method public abstract getInboxNotificationRoutingInfo()Ljava/lang/String;
.end method

.method public abstract getInboxNotificationTimestamp()J
.end method

.method public abstract getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
.end method

.method public abstract getModeString()Ljava/lang/String;
.end method

.method public abstract getNotificationId()Ljava/lang/String;
.end method

.method public abstract getNotificationLight()Z
.end method

.method public abstract getNotificationRingtoneUri()Landroid/net/Uri;
.end method

.method public abstract getNotificationUpdateCompleted()Z
.end method

.method public abstract getNotificationVibrate()Z
.end method

.method public abstract getShadowNumberRefreshTimestamp()J
.end method

.method public abstract getShouldUpdateInBackground()Z
.end method

.method public abstract getSubscriberNumber()Ljava/lang/String;
.end method

.method public abstract getUpdateIntervalSeconds()I
.end method

.method public abstract getUpdateIntervalString()Ljava/lang/String;
.end method

.method public abstract getUsingLoginService()Z
.end method

.method public abstract getVoicemailDiversionCode()Ljava/lang/String;
.end method

.method public abstract getVoicemailDiversionNumber()Ljava/lang/String;
.end method

.method public abstract getVoicemailDiversionType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
.end method

.method public abstract getVoicemailNumber()Ljava/lang/String;
.end method

.method public abstract getVoicemailPlaybackViaSpeaker()Z
.end method

.method public abstract getVvmEnabled()Z
.end method

.method public abstract isFullSubscriber()Z
.end method

.method public abstract isRegisteredForInboxNotifications()Z
.end method

.method public abstract mayUseDataInBackground()Z
.end method

.method public abstract notifyWhenNewTextMessage()Z
.end method

.method public abstract notifyWhenNewVoicemail()Z
.end method

.method public abstract removeInboxNotificationRegistrationTimestamp()V
.end method

.method public abstract removeInboxNotificationRoutingInfo()V
.end method

.method public abstract removeShadowNumberRefreshTimestamp()V
.end method

.method public abstract setAccessNumber(Ljava/lang/String;)V
.end method

.method public abstract setAccount(Ljava/lang/String;)V
.end method

.method public abstract setAccountBalance(I)V
.end method

.method public abstract setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
.end method

.method public abstract setAuthToken(Ljava/lang/String;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract setDidCompleteAppSetup(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V
.end method

.method public abstract setDidCompleteVoicemailSetup(Z)V
.end method

.method public abstract setDidConfigurePushNotifications(Z)V
.end method

.method public abstract setDisplayableAccountBalance(Ljava/lang/String;)V
.end method

.method public abstract setDoNotCallNumber(Ljava/lang/String;)V
.end method

.method public abstract setForwardingNumber(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInboxNotificationRegistrationTimestamp(J)V
.end method

.method public abstract setInboxNotificationRoutingInfo(Ljava/lang/String;)V
.end method

.method public abstract setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V
.end method

.method public abstract setNotificatinoUpdateCompleted(Z)V
.end method

.method public abstract setNotificationId(Ljava/lang/String;)V
.end method

.method public abstract setNotifyWhenNewTextMessage(Z)V
.end method

.method public abstract setNotifyWhenNewVoicemail(Z)V
.end method

.method public abstract setShadowNumberRefreshTimestamp(J)V
.end method

.method public abstract setSubscriberNumber(Ljava/lang/String;)V
.end method

.method public abstract setUpdateIntervalSeconds(I)V
.end method

.method public abstract setUsingLoginService(Z)V
.end method

.method public abstract setVoicemailDiversionCode(Ljava/lang/String;)V
.end method

.method public abstract setVoicemailDiversionNumber(Ljava/lang/String;)V
.end method

.method public abstract setVoicemailDiversionType(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)V
.end method

.method public abstract setVoicemailNumber(Ljava/lang/String;)V
.end method

.method public abstract setVoicemailPlaybackViaSpeaker(Z)V
.end method

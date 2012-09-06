.class public interface abstract Lcom/google/android/apps/googlevoice/settings/ServerSettings;
.super Ljava/lang/Object;
.source "ServerSettings.java"


# virtual methods
.method public abstract fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
.end method

.method public abstract getDoNotDisturb()Z
.end method

.method public abstract getEmailNotificationAddresses()[Ljava/lang/String;
.end method

.method public abstract getForwardingPhoneNames()[Ljava/lang/String;
.end method

.method public abstract getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;
.end method

.method public abstract getMaxForwardingPhones()I
.end method

.method public abstract getScreenBehaviour()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
.end method

.method public abstract getSmsNotificationPhoneNames()[Ljava/lang/String;
.end method

.method public abstract getTemporaryForwardingNumber()Ljava/lang/String;
.end method

.method public abstract getTemporaryForwardingNumberFormatted()Ljava/lang/String;
.end method

.method public abstract getUseDIDAsCallerId()Z
.end method

.method public abstract hasForwardingPhones()Z
.end method

.method public abstract update(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V
.end method

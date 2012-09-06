.class public interface abstract Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
.super Ljava/lang/Object;
.source "UpdateSettingsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
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

.method public abstract getSMSNotificationPhoneNames()[Ljava/lang/String;
.end method

.method public abstract getScreenBehaviour()Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
.end method

.method public abstract getTemporaryForwardingNumber()Ljava/lang/String;
.end method

.method public abstract getTemporaryForwardingNumberFormatted()Ljava/lang/String;
.end method

.method public abstract getUseDIDAsCallerId()Z
.end method

.method public abstract setDoNotDisturb(Z)V
.end method

.method public abstract setEmailNotificationAddresses([Ljava/lang/String;)V
.end method

.method public abstract setForwardingPhoneNames([Ljava/lang/String;)V
.end method

.method public abstract setForwardingPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V
.end method

.method public abstract setSMSNotificationPhones([Ljava/lang/String;)V
.end method

.method public abstract setScreenBehaviour(Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;)V
.end method

.method public abstract setTemporaryForwardingNumber(Ljava/lang/String;)V
.end method

.method public abstract setUseDIDAsCallerID(Z)V
.end method

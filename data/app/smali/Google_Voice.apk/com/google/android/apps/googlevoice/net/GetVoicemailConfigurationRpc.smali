.class public interface abstract Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
.super Ljava/lang/Object;
.source "GetVoicemailConfigurationRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
.method public abstract getVoicemailNumber()Ljava/lang/String;
.end method

.method public abstract getVoicemailRedirectNumber()Ljava/lang/String;
.end method

.method public abstract getVoicemailRedirectString()Ljava/lang/String;
.end method

.method public abstract getVoicemailRedirectType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
.end method

.method public abstract setCarrierCode(Ljava/lang/String;)V
.end method

.method public abstract setDeviceNumber(Ljava/lang/String;)V
.end method

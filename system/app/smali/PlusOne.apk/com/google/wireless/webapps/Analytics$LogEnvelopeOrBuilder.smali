.class public interface abstract Lcom/google/wireless/webapps/Analytics$LogEnvelopeOrBuilder;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogEnvelopeOrBuilder"
.end annotation


# virtual methods
.method public abstract getBuildNumber()Ljava/lang/String;
.end method

.method public abstract getClient()Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
.end method

.method public abstract getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
.end method

.method public abstract getCustomValueCount()I
.end method

.method public abstract getCustomValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEvent(I)Lcom/google/wireless/webapps/Analytics$Event;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getSendTimeMsec()J
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract hasBuildNumber()Z
.end method

.method public abstract hasClient()Z
.end method

.method public abstract hasPlatform()Z
.end method

.method public abstract hasSendTimeMsec()Z
.end method

.method public abstract hasVersion()Z
.end method

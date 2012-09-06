.class public interface abstract Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;
.super Ljava/lang/Object;
.source "GetAccountStatusRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
.method public abstract getAccountBalance()I
.end method

.method public abstract getAlternateDID()[Ljava/lang/String;
.end method

.method public abstract getDisplayableAccountBalance()Ljava/lang/String;
.end method

.method public abstract getFormattedAlternateDID()[Ljava/lang/String;
.end method

.method public abstract getFormattedPrimaryDID()Ljava/lang/String;
.end method

.method public abstract getLabels()[Lcom/google/android/apps/googlevoice/core/Label;
.end method

.method public abstract getPrimaryDID()Ljava/lang/String;
.end method

.method public abstract getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
.end method

.method public abstract hasActiveInUse()Z
.end method

.method public abstract isActiveInUse()Z
.end method

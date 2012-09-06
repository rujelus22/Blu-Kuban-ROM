.class public interface abstract Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;
.super Ljava/lang/Object;
.source "CheckCarrierProvisioningRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
.method public abstract dataDeletedWhenProvisioned()Z
.end method

.method public abstract getCheckedPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getProvisionError()Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
.end method

.method public abstract hasAccountAlreadyProvisioned()Z
.end method

.method public abstract hasAlreadyProvisioned()Z
.end method

.method public abstract hasDataDeletedWhenProvisioned()Z
.end method

.method public abstract hasProvisionError()Z
.end method

.method public abstract hasProvisionable()Z
.end method

.method public abstract hasVerifyNeeded()Z
.end method

.method public abstract isAccountAlreadyProvisioned()Z
.end method

.method public abstract isAlreadyProvisioned()Z
.end method

.method public abstract isProvisionable()Z
.end method

.method public abstract setPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract verifyNeeded()Z
.end method

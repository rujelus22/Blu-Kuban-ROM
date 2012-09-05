.class public Lcom/vlingo/client/tos/TermsOfServiceManager;
.super Ljava/lang/Object;
.source "TermsOfServiceManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTOSRequired()Z
    .registers 1

    .prologue
    .line 12
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTOSAccepted()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSamsungDisclaimerAccepted()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

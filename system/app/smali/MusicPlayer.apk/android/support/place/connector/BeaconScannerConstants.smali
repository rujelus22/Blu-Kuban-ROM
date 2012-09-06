.class public Landroid/support/place/connector/BeaconScannerConstants;
.super Ljava/lang/Object;
.source "BeaconScannerConstants.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .parameter "context"

    .prologue
    .line 14
    invoke-static {p0}, Landroid/support/place/connector/BrokerConnection;->getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, apk:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 17
    const/4 v1, 0x0

    .line 22
    :goto_7
    return-object v1

    .line 19
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.athome.broker.service.BeaconScannerService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7
.end method

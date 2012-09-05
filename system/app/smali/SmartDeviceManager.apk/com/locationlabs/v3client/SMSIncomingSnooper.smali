.class public Lcom/locationlabs/v3client/SMSIncomingSnooper;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 27
    if-eqz p2, :cond_48

    .line 28
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->f:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_48

    .line 31
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 32
    array-length v0, p0

    new-array v1, v0, [Landroid/telephony/SmsMessage;

    move v2, v4

    .line 33
    :goto_25
    array-length v0, p0

    if-ge v2, v0, :cond_36

    .line 34
    aget-object v0, p0, v2

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    aput-object v0, v1, v2

    .line 33
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 36
    :cond_36
    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lam;->a(JLjava/lang/String;Z)Lcg;

    move-result-object v0

    .line 42
    invoke-static {p1, v0, v4}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 46
    :cond_48
    return-void
.end method

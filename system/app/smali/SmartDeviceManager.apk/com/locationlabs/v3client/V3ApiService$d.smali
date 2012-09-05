.class final Lcom/locationlabs/v3client/V3ApiService$d;
.super Lcom/locationlabs/v3client/V3ApiService$n;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/locationlabs/v3client/V3ApiService$n",
        "<",
        "Ljava/lang/String;",
        "Lcy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$d;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 283
    const-string v0, "com.locationlabs.v3client.action.CLAIM_PHONE_NUMBER"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/locationlabs/v3client/V3ApiService$n;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 279
    const-string v0, "CLAIM SUCCESS!"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lw;->a(Z)V

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;Lw;)Z

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcq;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "MO_SMS_VERIFY_INTERVAL_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_3a

    const-string v0, "no prescribed verify interval, not starting periodic sms prompts"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    invoke-static {p1}, Lcom/locationlabs/v3client/FeatureService;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/locationlabs/v3client/V3ApiService$d;->c:Lcom/locationlabs/v3client/V3ApiService;

    invoke-static {v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/locationlabs/v3client/HeartbeatService;->a(Landroid/content/Context;)V

    return-void

    :cond_3a
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    if-eqz v0, :cond_89

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.locationlabs.v3client.action.ACTION_PERIODIC_NUMBER_DETECTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-class v4, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next periodic MO SMS @ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_2e

    :cond_89
    const-string v0, "no account, not starting periodic sms prompts"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_2e
.end method

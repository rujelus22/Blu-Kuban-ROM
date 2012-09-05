.class public Lcom/locationlabs/v3client/MoSmsPhoneNumberService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "MoSmsPhoneNumberService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    const-string v1, "com.locationlabs.v3client.action.ACTION_PROMPT_FOR_EXTENDED_CHALLENGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-class v1, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 86
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v8

    .line 89
    const-string v0, "MO_SMS_PORT"

    invoke-static {v0, v2}, Ln;->a(Ljava/lang/String;I)I

    move-result v0

    .line 90
    const-string v1, "SMS_SCHEME"

    invoke-static {v1}, Ln;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    if-eq v0, v2, :cond_19

    if-nez v1, :cond_21

    .line 92
    :cond_19
    new-instance v0, Leq;

    const-string v1, "missing MO_SMS_PORT or SMS_SCHEME"

    invoke-direct {v0, v1}, Leq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_21
    new-instance v5, Lem;

    iget-object v2, v8, Lcq;->b:Ljava/lang/String;

    invoke-direct {v5, v1, v0, v2}, Lem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    iget-object v4, v8, Lcq;->a:Ljava/lang/String;

    const-string v3, "C"

    new-instance v0, Lek;

    iget-object v1, v5, Lem;->a:Ljava/lang/String;

    iget v2, v5, Lem;->b:I

    iget-object v7, v5, Lem;->c:Ljava/lang/String;

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Lek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 100
    iget-object v1, v8, Lcq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lek;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v8, Lcq;->c:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/locationlabs/util/android/SMSSender;->b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 105
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 106
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_18

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_18
    invoke-interface {v0}, Lw;->f()Ljava/lang/String;

    move-result-object v2

    .line 110
    if-nez v2, :cond_22

    .line 111
    invoke-interface {v0, v1}, Lw;->b(Ljava/lang/String;)V

    .line 122
    :cond_21
    :goto_21
    return-void

    .line 113
    :cond_22
    if-eqz v1, :cond_21

    .line 114
    invoke-interface {v0}, Lw;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Lw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 117
    const-string v2, "SIM serial number has changed. invalidating account."

    invoke-static {v2}, Li;->c(Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v1}, Lw;->b(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/locationlabs/v3client/AccountService;->b(Landroid/content/Context;)V

    goto :goto_21
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 69
    :cond_6
    :goto_6
    return-void

    .line 50
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_PROMPT_FOR_EXTENDED_CHALLENGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 52
    :try_start_13
    invoke-direct {p0, p0}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->b(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-direct {p0, p0, v0, v1}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->a(Landroid/content/Context;J)V
    :try_end_1d
    .catch Leq; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    .line 54
    :catch_1e
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to prompt for extended challenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 58
    :cond_36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_PERIODIC_NUMBER_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 60
    :try_start_42
    invoke-direct {p0, p0}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->b(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MO_SMS_VERIFY_INTERVAL_MILLIS"

    invoke-static {v2}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, p0, v0, v1}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->a(Landroid/content/Context;J)V
    :try_end_53
    .catch Leq; {:try_start_42 .. :try_end_53} :catch_54

    goto :goto_6

    .line 62
    :catch_54
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to send periodic MO SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 66
    :cond_6c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.action.ACTION_CHECK_SIM_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    invoke-direct {p0, p0}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->b(Landroid/content/Context;)V

    goto :goto_6
.end method

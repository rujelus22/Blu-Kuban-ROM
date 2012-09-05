.class public Lcom/locationlabs/v3client/AccountService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "AccountService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 177
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lw;->e()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "claimed number is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 180
    if-nez v0, :cond_46

    .line 181
    invoke-static {p0}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyManager number is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    .line 184
    :cond_46
    return-object v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    const-string v1, "network"

    invoke-static {v1}, Ln;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_b

    move-object v0, v1

    .line 85
    :cond_a
    :goto_a
    return-object v0

    .line 69
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 70
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_16
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 78
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static a(Landroid/content/Context;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.action.GET_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/locationlabs/v3client/AccountService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1c

    .line 259
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    :goto_1b
    return-void

    .line 261
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 262
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 263
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 264
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1b
.end method

.method static a(Landroid/content/Context;Lw;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 333
    if-nez p1, :cond_43

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    move-object v1, v0

    .line 335
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.locationlabs.action.CLAIM_ALARM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/locationlabs/v3client/AccountService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 336
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 337
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 339
    invoke-interface {v1}, Lw;->h()Z

    move-result v3

    .line 340
    if-eqz v3, :cond_32

    .line 342
    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 352
    :goto_31
    return v3

    .line 345
    :cond_32
    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->d(Landroid/content/Context;)J

    move-result-wide v4

    .line 346
    invoke-interface {v1}, Lw;->g()I

    move-result v6

    .line 348
    invoke-virtual {v0, v7, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 349
    add-int/lit8 v0, v6, 0x1

    invoke-interface {v1, v0}, Lw;->a(I)V

    goto :goto_31

    :cond_43
    move-object v1, p1

    goto :goto_8
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.action.ACCOUNT_INVALID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/locationlabs/v3client/AccountService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 326
    invoke-interface {v0, v1}, Lw;->a(Z)V

    .line 327
    invoke-interface {v0, v1}, Lw;->a(I)V

    .line 329
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;Lw;)Z

    .line 330
    return-void
.end method

.method public static d(Landroid/content/Context;)J
    .registers 6
    .parameter

    .prologue
    .line 382
    const-string v0, "VERIFY_CHALLENGE_INITIAL_INTERVAL_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 383
    const-string v2, "VERIFY_CHALLENGE_INTERVAL_MAX_BACKOFFS"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    .line 385
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v3

    .line 386
    invoke-interface {v3}, Lw;->g()I

    move-result v3

    .line 388
    if-le v3, v2, :cond_1d

    .line 390
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    shl-long/2addr v0, v2

    add-long/2addr v0, v3

    .line 391
    return-wide v0

    :cond_1d
    move v2, v3

    goto :goto_16
.end method

.method private static e(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;Lw;)Z

    move-result v0

    .line 358
    if-nez v0, :cond_1a

    .line 361
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Lw;->b()Lcq;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcq;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 364
    invoke-static {p0}, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;->a(Landroid/content/Context;)V

    .line 379
    :cond_1a
    :goto_1a
    return-void

    .line 367
    :cond_1b
    invoke-static {p0}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_25

    .line 369
    invoke-static {p0, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 372
    :cond_25
    const-string v0, "!verified && null #"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "com.locationlabs.action.GET_ACCOUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 45
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->i()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_49

    :cond_2b
    move v0, v12

    :goto_2c
    if-nez v0, :cond_4b

    invoke-interface {v1}, Lw;->i()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;J)V

    .line 51
    :cond_48
    :goto_48
    return-void

    :cond_49
    move v0, v11

    .line 45
    goto :goto_2c

    :cond_4b
    invoke-interface {v1}, Lw;->b()Lcq;

    move-result-object v0

    if-nez v0, :cond_95

    invoke-static {p0}, Le;->a(Landroid/content/Context;)I

    move-result v10

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/AccountService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lw;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ld;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0}, Le;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7e

    move v11, v12

    :cond_7e
    new-instance v0, Lee;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v11}, Lee;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string v1, "com.locationlabs.v3client.action.GET_ACCOUNT"

    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_48

    :cond_95
    invoke-virtual {v0}, Lcq;->a()Z

    move-result v2

    if-eqz v2, :cond_bd

    move-object v2, v6

    :goto_9c
    if-eqz v2, :cond_c2

    invoke-interface {v1}, Lw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    invoke-interface {v1, v6}, Lw;->a(Ljava/lang/String;)V

    const-string v0, "MDN actually changed!"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    invoke-static {p0, v6}, Laf;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->c(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Laf;->a(Landroid/content/Context;)V

    goto :goto_48

    :cond_bd
    invoke-static {p0}, Lal;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9c

    :cond_c2
    invoke-interface {v1}, Lw;->h()Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v0, "Claim !verified; challenge check alarm"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->e(Landroid/content/Context;)V

    goto/16 :goto_48

    :cond_d2
    invoke-virtual {v0}, Lcq;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.locationlabs.v3client.action.ACTION_CHECK_SIM_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/MoSmsPhoneNumberService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_48

    .line 46
    :cond_ec
    const-string v1, "com.locationlabs.action.ACCOUNT_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 47
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0, v6}, Lw;->a(Lcq;)V

    invoke-interface {v0, v6}, Lw;->a(Ljava/lang/String;)V

    invoke-interface {v0, v11}, Lw;->a(Z)V

    invoke-interface {v0}, Lw;->p()V

    invoke-interface {v0, v6}, Lw;->a(Lcz;)V

    invoke-interface {v0, v11}, Lw;->a(Z)V

    invoke-interface {v0, v6}, Lw;->a(Ljava/lang/Long;)V

    invoke-interface {v0, v6}, Lw;->b(Ljava/lang/Long;)V

    invoke-interface {v0, v6}, Lw;->a(Landroid/location/Location;)V

    invoke-interface {v0, v6}, Lw;->c(Ljava/lang/Long;)V

    invoke-interface {v0, v6}, Lw;->d(Ljava/lang/Long;)V

    invoke-interface {v0, v2, v3}, Lw;->a(J)V

    invoke-interface {v0, v2, v3}, Lw;->b(J)V

    invoke-interface {v0, v2, v3}, Lw;->c(J)V

    invoke-interface {v0, v2, v3}, Lw;->d(J)V

    invoke-interface {v0, v2, v3}, Lw;->f(J)V

    invoke-interface {v0, v2, v3}, Lw;->e(J)V

    invoke-interface {v0, v11}, Lw;->b(Z)V

    invoke-interface {v0, v11}, Lw;->c(Z)V

    invoke-interface {v0, v11}, Lw;->d(Z)V

    invoke-static {p0}, Lcom/locationlabs/v3client/FeatureService;->b(Landroid/content/Context;)V

    const-string v0, "RETRY_AFTER_INVALID_ACCOUNT_MILLIS"

    invoke-static {v0}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/AccountService;->a(Landroid/content/Context;J)V

    invoke-static {}, Ln;->a()V

    goto/16 :goto_48

    .line 48
    :cond_145
    const-string v1, "com.locationlabs.action.CLAIM_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 49
    invoke-static {p0}, Lcom/locationlabs/v3client/AccountService;->e(Landroid/content/Context;)V

    goto/16 :goto_48
.end method

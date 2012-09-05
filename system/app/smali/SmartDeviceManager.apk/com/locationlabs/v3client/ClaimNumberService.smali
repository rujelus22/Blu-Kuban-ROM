.class public Lcom/locationlabs/v3client/ClaimNumberService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    const-string v0, "ClaimNumberService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.CLAIM_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.locationlabs.v3client.extra.CLAIM_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "com.locationlabs.v3client.extra.PH_NUM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 28
    const-string v0, "com.locationlabs.v3client.action.CLAIM_NUMBER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.CLAIM_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.locationlabs.v3client.extra.PH_NUM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-nez v1, :cond_7c

    .line 33
    :try_start_23
    new-instance v2, Leq;

    const-string v3, "Can\'t get phone number"

    invoke-direct {v2, v3}, Leq;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catch Leq; {:try_start_23 .. :try_end_2b} :catch_2b

    .line 38
    :catch_2b
    move-exception v2

    .line 39
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.locationlabs.v3client.action.RECLAIM_NUMBER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    const/high16 v4, 0x800

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lz;

    const-string v4, "GetNumberForClaimCode"

    invoke-direct {v1, v4}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v3, v0, v2}, Lz;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t claim number, will retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 52
    :cond_7b
    :goto_7b
    return-void

    .line 36
    :cond_7c
    :try_start_7c
    new-instance v2, Lcy;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.locationlabs.v3client.action.CLAIM_PHONE_NUMBER"

    invoke-virtual {v2}, Lct;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    new-instance v2, Lz;

    const-string v3, "GetNumberForClaimCode"

    invoke-direct {v2, v3}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lz;->b(Landroid/content/Context;)V
    :try_end_9c
    .catch Leq; {:try_start_7c .. :try_end_9c} :catch_2b

    goto :goto_7b

    .line 46
    :cond_9d
    const-string v0, "com.locationlabs.v3client.action.RECLAIM_NUMBER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 47
    new-instance v0, Lz;

    const-string v1, "GetNumberForClaimCode"

    invoke-direct {v0, v1}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 50
    aget-object v1, v0, v5

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/ClaimNumberService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method

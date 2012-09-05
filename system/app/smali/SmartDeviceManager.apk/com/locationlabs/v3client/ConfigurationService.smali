.class public Lcom/locationlabs/v3client/ConfigurationService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    const-string v0, "ConfigurationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.CHECK_CONFIGURATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, "com.locationlabs.v3client.extra.NEW_CONFIGURATION_HASH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    const-string v0, "com.locationlabs.v3client.action.CHECK_CONFIGURATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.locationlabs.v3client.extra.NEW_CONFIGURATION_HASH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Lw;->d()Ljava/lang/String;

    move-result-object v1

    .line 45
    if-nez v1, :cond_22

    const-string v1, "-"

    .line 49
    :cond_22
    if-eqz v0, :cond_2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 51
    :cond_2a
    invoke-static {p0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;)V

    .line 54
    :cond_2d
    return-void
.end method

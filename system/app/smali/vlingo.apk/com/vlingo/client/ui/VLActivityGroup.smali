.class public Lcom/vlingo/client/ui/VLActivityGroup;
.super Landroid/app/ActivityGroup;
.source "VLActivityGroup.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstance"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 20
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    const-string v1, "com.vlingo.client.ui.extra.FINISH_ACTIVITY"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, finishActivity:Z
    if-eqz v0, :cond_f

    .line 48
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->finish()V

    .line 50
    :cond_f
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "com.vlingo.client.app.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivityGroup;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "com.vlingo.client.app.extra.STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivityGroup;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 42
    return-void
.end method

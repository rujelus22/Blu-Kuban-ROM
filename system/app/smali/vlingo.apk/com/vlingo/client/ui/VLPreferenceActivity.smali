.class public Lcom/vlingo/client/ui/VLPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "VLPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstance"

    .prologue
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 24
    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->reinit()V

    .line 25
    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->resetCustomizablePrompts()V

    .line 28
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    .line 30
    .local v0, canChangeIcon:Z
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    if-eqz v0, :cond_1f

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/vlingo/client/ui/VLPreferenceActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/VLPreferenceActivity;->setVolumeControlStream(I)V

    .line 36
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "com.vlingo.client.app.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "com.vlingo.client.app.extra.STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 57
    return-void
.end method

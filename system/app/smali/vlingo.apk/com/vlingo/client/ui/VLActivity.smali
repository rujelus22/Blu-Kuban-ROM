.class public Lcom/vlingo/client/ui/VLActivity;
.super Landroid/app/Activity;
.source "VLActivity.java"


# static fields
.field public static final EXTRA_FINISH_ACTIVITY:Ljava/lang/String; = "com.vlingo.client.ui.extra.FINISH_ACTIVITY"

.field public static final EXTRA_VOICE_COMMAND:Ljava/lang/String; = "EXTRA_VOICE_COMMAND"

.field public static final MENU_HELP:I = 0x0

.field public static final MENU_LAST:I = 0x64

.field public static final MENU_SETTINGS:I = 0x2

.field public static final MENU_VOICE_TALK:I = 0x3

.field public static final MENU_WCIS:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeDefaultMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x3

    const v1, 0x7f0902de

    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/VLActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 116
    const v0, 0x7f090291

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02014f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstance"

    .prologue
    const/4 v2, 0x3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    .line 42
    .local v0, canChangeIcon:Z
    if-eqz v0, :cond_12

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/vlingo/client/ui/VLActivity;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_12
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/vlingo/client/ui/VLActivity;->setVolumeControlStream(I)V

    .line 48
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    const-string v1, "com.vlingo.client.ui.extra.FINISH_ACTIVITY"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, finishActivity:Z
    if-eqz v0, :cond_f

    .line 75
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->finish()V

    .line 77
    :cond_f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 136
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 124
    :pswitch_a
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->showAbout()V

    goto :goto_9

    .line 127
    :pswitch_e
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->showWCIS()V

    goto :goto_9

    .line 130
    :pswitch_12
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->showSettings()V

    goto :goto_9

    .line 133
    :pswitch_16
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/vlingo/client/ui/VLActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 122
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
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

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vlingo/client/ui/VLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale(Landroid/content/res/Resources;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/VlingoApplicationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.vlingo.client.app.action.ACTIVITY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "com.vlingo.client.app.extra.STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method

.method protected showAbout()V
    .registers 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/help/AboutScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method protected showSettings()V
    .registers 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method protected showWCIS()V
    .registers 4

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    const-string v1, "EXTRA_VOICE_COMMAND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/VLActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

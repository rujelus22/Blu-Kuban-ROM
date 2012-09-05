.class public abstract Lcom/infraware/common/baseactivity/BaseListActivity;
.super Landroid/app/ListActivity;
.source "BaseListActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# instance fields
.field private m_nLocaleType:I

.field private m_nOrientation:I

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 16
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    .line 17
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 15
    return-void
.end method


# virtual methods
.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SdCardUnMounted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/infraware/common/baseactivity/BaseListActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->finish()V

    .line 101
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 75
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 53
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 54
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    if-eq v1, v0, :cond_1a

    .line 55
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    .line 56
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    invoke-virtual {v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetLocale(I)V

    .line 57
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onLocaleChange(I)V

    .line 60
    :cond_1a
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_29

    .line 61
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/baseactivity/BaseListActivity;->onChangeScreen(I)V

    .line 63
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    .line 68
    :cond_29
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nLocaleType:I

    .line 29
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    .line 30
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 31
    iget v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/common/baseactivity/BaseListActivity;->onChangeScreen(I)V

    .line 33
    new-instance v0, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v0}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 34
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v0, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 35
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseListActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/common/baseactivity/BaseListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/common/baseactivity/BaseListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 89
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 90
    return-void
.end method

.method public abstract onLocaleChange(I)V
.end method

.method public onPivotLock(I)V
    .registers 2
    .parameter "nMode"

    .prologue
    .line 92
    return-void
.end method

.method protected setResultFromSettingActivity()V
    .registers 2

    .prologue
    .line 78
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseListActivity;->m_nOrientation:I

    .line 79
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

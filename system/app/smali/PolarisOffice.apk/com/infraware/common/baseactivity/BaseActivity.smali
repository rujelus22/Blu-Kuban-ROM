.class public abstract Lcom/infraware/common/baseactivity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;


# static fields
.field static final DOWNLOAD_CANCEL:I = 0x1

.field static final DOWNLOAD_CONFIRM_ERROR:I = 0x4

.field static final DOWNLOAD_LATEST_VERSION:I = 0x2

.field static final DOWNLOAD_NETWORK_ERROR:I = 0x3

.field static final DOWNLOAD_SUCCESS:I


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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    .line 17
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 15
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    return v0
.end method

.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 5
    .parameter "nowAction"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SdCardUnMounted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/infraware/common/baseactivity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->finish()V

    .line 104
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 78
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 57
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 58
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    if-eq v1, v0, :cond_1a

    .line 59
    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    .line 60
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    invoke-virtual {v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetLocale(I)V

    .line 61
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/baseactivity/BaseActivity;->onLocaleChange(I)V

    .line 64
    :cond_1a
    iget v1, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_29

    .line 65
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/baseactivity/BaseActivity;->onChangeScreen(I)V

    .line 66
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    .line 71
    :cond_29
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nLocaleType:I

    .line 34
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    .line 35
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 36
    iget v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/common/baseactivity/BaseActivity;->onChangeScreen(I)V

    .line 38
    new-instance v0, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v0}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 39
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v0, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 40
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/common/baseactivity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/common/baseactivity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method public abstract onLocaleChange(I)V
.end method

.method public onPivotLock(I)V
    .registers 2
    .parameter "nMode"

    .prologue
    .line 95
    return-void
.end method

.method protected setResultFromSettingActivity()V
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/infraware/common/baseactivity/BaseActivity;->m_nOrientation:I

    .line 82
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

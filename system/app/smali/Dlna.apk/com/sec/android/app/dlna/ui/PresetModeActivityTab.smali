.class public Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "PresetModeActivityTab.java"

# interfaces
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# static fields
.field public static mPresetModeActivityContext:Landroid/content/Context;

.field static notifier:Landroid/app/NotificationManager;


# instance fields
.field private final CLASS:Ljava/lang/String;

.field private final ENABLE_TAB_BUTTON:I

.field private final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field notification:Landroid/app/Notification;

.field private settings:Landroid/view/MenuItem;

.field private tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    .line 88
    sput-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mPresetModeActivityContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 31
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "PresetModeActivityTab."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->CLASS:Ljava/lang/String;

    .line 34
    const/16 v0, 0x457

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->ENABLE_TAB_BUTTON:I

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mMenu:Landroid/view/Menu;

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notification:Landroid/app/Notification;

    .line 176
    new-instance v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab$1;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;)Landroid/view/Menu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public static cancelNotify()V
    .registers 3

    .prologue
    .line 65
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresetModeActivityTab.cancelNotify() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    if-eqz v0, :cond_23

    .line 67
    sget-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 69
    :cond_23
    return-void
.end method


# virtual methods
.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_c

    .line 196
    :goto_3
    return-void

    .line 193
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 191
    :pswitch_data_c
    .packed-switch 0x2f5
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const v5, 0x7f09004f

    const v3, 0x7f090033

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    const-string v0, "DLNA"

    const-string v1, "PresetModeActivityTab.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->requestWindowFeature(I)Z

    .line 96
    sput-object p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mPresetModeActivityContext:Landroid/content/Context;

    .line 97
    sget-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mPresetModeActivityContext:Landroid/content/Context;

    if-nez v0, :cond_22

    .line 98
    const-string v0, "DLNA"

    const-string v1, "mPresetModeActivityContext is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.startAllShare"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    :try_start_29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_bf

    .line 107
    :goto_2c
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 127
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-nez v0, :cond_9f

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->setEnabled(Z)V

    .line 130
    :cond_9f
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager;->addActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V

    .line 132
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 133
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/dlna/DLNAManager;->setAutoIP(Z)V

    .line 134
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager;->init(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->showNotify()V

    .line 137
    return-void

    .line 104
    :catch_bf
    move-exception v0

    .line 105
    const-string v0, "DLNA"

    const-string v1, "Fail to broadcast \'startAllShare\'"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 152
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->settings:Landroid/view/MenuItem;

    .line 154
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "DLNA"

    const-string v1, "PresetModeActivityTab.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWifiLock()V

    .line 74
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setAutoIP(Z)V

    .line 75
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 79
    const-string v0, "DLNA"

    const-string v1, "PresetModeActivityTab.onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onLowMemory()V

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 159
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-nez v0, :cond_29

    .line 160
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 171
    :goto_27
    const/4 v0, 0x1

    .line 173
    :goto_28
    return v0

    .line 163
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_39

    move-result v0

    if-nez v0, :cond_3d

    .line 164
    const/4 v0, 0x0

    goto :goto_28

    .line 165
    :catch_39
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_27

    .line 173
    :cond_4e
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_28
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->Server_Started:Z

    if-nez v0, :cond_17

    .line 143
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 147
    :goto_10
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mMenu:Landroid/view/Menu;

    .line 148
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 145
    :cond_17
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_10
.end method

.method public showNotify()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 47
    const-string v2, "DLNA"

    const-string v3, "PresetModeActivityTab.showNotify()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    .line 50
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200aa

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notification:Landroid/app/Notification;

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notification:Landroid/app/Notification;

    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, notify_intent:Landroid/content/Intent;
    const/high16 v2, 0x13a0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 60
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 61
    sget-object v2, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notifier:Landroid/app/NotificationManager;

    const/16 v3, 0x1001

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    return-void
.end method

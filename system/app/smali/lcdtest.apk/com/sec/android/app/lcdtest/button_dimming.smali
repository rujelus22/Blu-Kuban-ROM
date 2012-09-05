.class public Lcom/sec/android/app/lcdtest/button_dimming;
.super Landroid/app/Activity;
.source "button_dimming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mLayout:Landroid/widget/LinearLayout;

.field mState:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doPauseAction()V
    .registers 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, brightness:I
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_dimming;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v0

    .line 88
    :goto_b
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/button_dimming;->setBrightness(I)V

    .line 89
    return-void

    .line 85
    :catch_f
    move-exception v1

    .line 86
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method private setBrightness(I)V
    .registers 6
    .parameter "brightness"

    .prologue
    .line 65
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 67
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_f

    .line 68
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 73
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_f
    :goto_f
    return-void

    .line 70
    :catch_10
    move-exception v0

    .line 71
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "button_dimming"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50
    iget v1, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mState:I

    if-ne v1, v3, :cond_13

    .line 51
    const-string v1, "button_dimming"

    const-string v2, "Normal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_dimming;->doPauseAction()V

    .line 53
    iput v4, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mState:I

    .line 61
    :cond_12
    :goto_12
    return-void

    .line 54
    :cond_13
    iget v1, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mState:I

    if-ne v1, v4, :cond_12

    .line 55
    const-string v1, "button_dimming"

    const-string v2, "DIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v0, 0x14

    .line 57
    .local v0, brightness:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/button_dimming;->setBrightness(I)V

    .line 58
    iput v3, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mState:I

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080003

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/button_dimming;->setContentView(I)V

    .line 27
    invoke-virtual {p0, v4}, Lcom/sec/android/app/lcdtest/button_dimming;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mLayout:Landroid/widget/LinearLayout;

    .line 28
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 30
    invoke-virtual {p0, v4}, Lcom/sec/android/app/lcdtest/button_dimming;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, dimming_view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const/16 v0, 0x14

    .line 34
    .local v0, brightness:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/button_dimming;->setBrightness(I)V

    .line 35
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_dimming;->mState:I

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 42
    const/16 v0, 0x17

    if-eq p1, v0, :cond_e

    const/16 v0, 0x42

    if-eq p1, v0, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    .line 44
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_dimming;->finish()V

    .line 46
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_dimming;->doPauseAction()V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

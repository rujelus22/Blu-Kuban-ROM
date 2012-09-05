.class public Lcom/sec/android/app/clockpackage/timer/TimerAlarm;
.super Landroid/app/Activity;
.source "TimerAlarm.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;
    }
.end annotation


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field mHandler:Landroid/os/Handler;

.field mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

.field private mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private initViews()V
    .registers 12

    .prologue
    const v10, 0x7f020256

    const v9, 0x7f02016b

    const v8, 0x7f020003

    const/4 v7, 0x0

    .line 176
    const-string v2, "TIMER"

    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, ".timer.input.time"

    const-string v3, "00:00:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, inputTime:Ljava/lang/String;
    const v2, 0x7f0e0124

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x7f0e0008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f02014e

    const v4, 0x7f02016c

    const v5, 0x7f020002

    const v6, 0x7f020016

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setLeftTabResources(IIII)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v2, v7, v9, v8, v10}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    .line 187
    const-string v2, "SPH-D710"

    const-string v3, "SGH-I927"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f020164

    invoke-virtual {v2, v7, v9, v8, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    .line 200
    :goto_57
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setLeftHintText(I)V

    .line 201
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setOnTriggerListener(Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab$OnTriggerListener;)V

    .line 211
    return-void

    .line 193
    :cond_6a
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v2, v7, v9, v8, v10}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->setRightTabResources(IIII)V

    goto :goto_57
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_14

    move v0, v1

    .line 262
    .local v0, up:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 261
    .end local v0           #up:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 266
    .restart local v0       #up:Z
    :pswitch_16
    if-eqz v0, :cond_13

    .line 267
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    goto :goto_13

    .line 262
    :pswitch_data_1c
    .packed-switch 0x18
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method finishTimer(Z)V
    .registers 7
    .parameter "isStopService"

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->release()V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_11

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    .line 222
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1f

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 224
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 226
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    if-eqz v1, :cond_2a

    .line 228
    :try_start_23
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_28} :catch_3a

    .line 232
    :goto_28
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    .line 234
    :cond_2a
    if-eqz p1, :cond_36

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, ".timer.playsound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->stopService(Landroid/content/Intent;)Z

    .line 236
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finish()V

    .line 237
    return-void

    .line 229
    :catch_3a
    move-exception v0

    .line 230
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "TimerAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 245
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->setContentView(I)V

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->initViews()V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, isCallStateOffHook:Z
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x80080

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/timer/PowerController;->acquire(Landroid/content/Context;)V

    .line 82
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    .line 84
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    :cond_2d
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;Lcom/sec/android/app/clockpackage/timer/TimerAlarm$1;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 91
    const-string v3, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/timer/TimerAlarm$ShutdownReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-string v3, ".timer.playsound"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, playTimer:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->activityManager:Landroid/app/ActivityManager;

    .line 99
    new-instance v3, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    iput-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerAlarm;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 251
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->finishTimer(Z)V

    .line 248
    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 160
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_11

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    if-eqz v1, :cond_1a

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->mSelector:Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/timer/TimerSlidingTab;->inactiveHandle()V

    .line 172
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/PowerController;->reenableKeyguard()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 143
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_12

    .line 145
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 148
    :cond_12
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->initViews()V

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/PowerController;->disableKeyguard(Landroid/content/Context;)V

    .line 152
    return-void
.end method

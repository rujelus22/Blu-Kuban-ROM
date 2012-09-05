.class public Lcom/samsung/handsfreeactivation/ActSuccess;
.super Landroid/app/Activity;
.source "ActSuccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;
    }
.end annotation


# instance fields
.field private mApp:Lcom/samsung/client/DMApp;

.field private profileToPrlTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/handsfreeactivation/ActSuccess;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/handsfreeactivation/ActSuccess;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "ActSuccess"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    .line 28
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 30
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->setContentView(I)V

    .line 31
    new-instance v0, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/handsfreeactivation/ActSuccess$ProfileToPRLTimer;-><init>(Lcom/samsung/handsfreeactivation/ActSuccess;JJ)V

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    .line 32
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 34
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActSuccess;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 35
    .local v6, okbtn:Landroid/widget/Button;
    new-instance v0, Lcom/samsung/handsfreeactivation/ActSuccess$1;

    invoke-direct {v0, p0}, Lcom/samsung/handsfreeactivation/ActSuccess$1;-><init>(Lcom/samsung/handsfreeactivation/ActSuccess;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    const-string v0, "ActSuccess"

    const-string v1, "onDestroy.... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    const-string v0, "ActSuccess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    packed-switch p1, :pswitch_data_5c

    .line 107
    :goto_1d
    return v3

    .line 88
    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/ActSuccess;->finish()V

    .line 89
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v4}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 91
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v3}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 92
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 93
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v3}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_1d

    .line 94
    :cond_3e
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 95
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v3}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_1d

    .line 97
    :cond_4c
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 98
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 99
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v4}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_1d

    .line 86
    :pswitch_data_5c
    .packed-switch 0x4
        :pswitch_1e
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 118
    const-string v1, "ActSuccess"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "ActSuccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 166
    :cond_32
    :goto_32
    return-void

    .line 146
    :cond_33
    new-array v0, v5, [Landroid/content/Intent;

    .line 147
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 148
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 152
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/ActSuccess;->finish()V

    .line 153
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->profileToPrlTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 154
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 155
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v5}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 156
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 157
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_32

    .line 158
    :cond_74
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 159
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_32

    .line 161
    :cond_82
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 162
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 163
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActSuccess;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_32
.end method

.class public Lcom/samsung/handsfreeactivation/StartUp;
.super Landroid/app/Activity;
.source "StartUp.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private errCode:I

.field private errDlg:Landroid/app/AlertDialog;

.field private mApp:Lcom/samsung/client/DMApp;

.field public mAppCancel:Z

.field public mStartUpHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 29
    iput v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->errCode:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    .line 100
    new-instance v0, Lcom/samsung/handsfreeactivation/StartUp$2;

    invoke-direct {v0, p0}, Lcom/samsung/handsfreeactivation/StartUp$2;-><init>(Lcom/samsung/handsfreeactivation/StartUp;)V

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mStartUpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/handsfreeactivation/StartUp;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/handsfreeactivation/StartUp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/handsfreeactivation/StartUp;->doCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/handsfreeactivation/StartUp;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method private doCancel()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 83
    const-string v0, "StartUp"

    const-string v1, "doCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    if-nez v0, :cond_17

    .line 85
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 86
    iput-boolean v2, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 87
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->stopSession()V

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 94
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 95
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 96
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 97
    return-void
.end method


# virtual methods
.method public gotoFailure(I)V
    .registers 5
    .parameter "err"

    .prologue
    .line 300
    const-string v0, "StartUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput p1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errCode:I

    .line 302
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/StartUp;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_24

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/StartUp;->showDialog(I)V

    .line 305
    :cond_24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const-string v1, "StartUp"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    .line 47
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 48
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 49
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v3}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 51
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/samsung/handsfreeactivation/StartUp;->setContentView(I)V

    .line 52
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v3, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 53
    iput-boolean v3, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 54
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/samsung/handsfreeactivation/StartUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->cancel:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->cancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/handsfreeactivation/StartUp$1;

    invoke-direct {v2, p0}, Lcom/samsung/handsfreeactivation/StartUp$1;-><init>(Lcom/samsung/handsfreeactivation/StartUp;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->hfaStartSession()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 73
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 74
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 76
    const-string v1, "StartUp"

    const-string v2, "clear HFA failure notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/handsfreeactivation/StartUp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 78
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 80
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_6d
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_50

    .line 296
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 261
    :pswitch_5
    const v1, 0x7f050029

    invoke-virtual {p0, v1}, Lcom/samsung/handsfreeactivation/StartUp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, errStr:Ljava/lang/String;
    const-string v1, "###"

    iget-object v2, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    iget v3, p0, Lcom/samsung/handsfreeactivation/StartUp;->errCode:I

    invoke-virtual {v2, v3}, Lcom/samsung/client/DMApp;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050016

    new-instance v3, Lcom/samsung/handsfreeactivation/StartUp$3;

    invoke-direct {v3, p0}, Lcom/samsung/handsfreeactivation/StartUp$3;-><init>(Lcom/samsung/handsfreeactivation/StartUp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    .line 273
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/handsfreeactivation/StartUp$4;

    invoke-direct {v2, p0}, Lcom/samsung/handsfreeactivation/StartUp$4;-><init>(Lcom/samsung/handsfreeactivation/StartUp;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    goto :goto_4

    .line 258
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    const-string v0, "StartUp"

    const-string v1, "onDestroy() ............ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p0, :cond_18

    .line 168
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 170
    :cond_18
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v0, "StartUp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnKeyDown -KEYCODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    packed-switch p1, :pswitch_data_2e

    .line 138
    const/4 v0, 0x1

    :goto_1d
    return v0

    .line 132
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/StartUp;->mStartUpHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mStartUpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d

    .line 130
    :pswitch_data_2e
    .packed-switch 0x4
        :pswitch_1e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    const-string v0, "StartUp"

    const-string v1, "onPause() ............ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/StartUp;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    :cond_9
    const-string v0, "StartUp"

    const-string v1, "onResume() ............ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 189
    const-string v0, "StartUp"

    const-string v1, "onStop() ............ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 194
    const-string v1, "StartUp"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "StartUp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 253
    :cond_32
    :goto_32
    return-void

    .line 223
    :cond_33
    new-array v0, v5, [Landroid/content/Intent;

    .line 224
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 225
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 230
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    if-nez v1, :cond_7a

    .line 231
    iget-boolean v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    if-nez v1, :cond_67

    .line 232
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v5, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 233
    iput-boolean v5, p0, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 234
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->stopSession()V

    .line 246
    :cond_67
    :goto_67
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 247
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 249
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/StartUp;->finish()V

    goto :goto_32

    .line 237
    :cond_7a
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->errDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/StartUp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v4}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_67
.end method

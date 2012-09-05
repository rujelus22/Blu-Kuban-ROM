.class public Lcom/samsung/fumo/SendStatus;
.super Landroid/app/Activity;
.source "SendStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/fumo/SendStatus$StatusTimer;
    }
.end annotation


# instance fields
.field keylistner:Landroid/content/DialogInterface$OnKeyListener;

.field private mApp:Lcom/samsung/client/DMApp;

.field public mPrgDlg:Landroid/app/ProgressDialog;

.field private ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    .line 25
    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;

    .line 94
    new-instance v0, Lcom/samsung/fumo/SendStatus$3;

    invoke-direct {v0, p0}, Lcom/samsung/fumo/SendStatus$3;-><init>(Lcom/samsung/fumo/SendStatus;)V

    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->keylistner:Landroid/content/DialogInterface$OnKeyListener;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/fumo/SendStatus;)Lcom/samsung/fumo/SendStatus$StatusTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/fumo/SendStatus;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method private cancelDldStatus()V
    .registers 3

    .prologue
    .line 116
    const-string v0, "SendStatus"

    const-string v1, "cancelDldStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/SendStatus;->showDialog(I)V

    .line 119
    return-void
.end method

.method private updateStatus()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "SendStatus"

    const-string v1, "updateStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/SendStatus;->showDialog(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "SendStatus"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    .line 35
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 36
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v2}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 38
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 39
    new-instance v0, Lcom/samsung/fumo/SendStatus$StatusTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/SendStatus$StatusTimer;-><init>(Lcom/samsung/fumo/SendStatus;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/fumo/SendStatus;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_dld_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    .line 42
    invoke-direct {p0}, Lcom/samsung/fumo/SendStatus;->cancelDldStatus()V

    .line 43
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus$StatusTimer;->start()Landroid/os/CountDownTimer;

    .line 48
    :goto_47
    return-void

    .line 47
    :cond_48
    invoke-direct {p0}, Lcom/samsung/fumo/SendStatus;->updateStatus()V

    goto :goto_47
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 52
    packed-switch p1, :pswitch_data_4e

    .line 92
    const/4 v1, 0x0

    :goto_5
    return-object v1

    .line 55
    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f05003b

    invoke-virtual {p0, v1}, Lcom/samsung/fumo/SendStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 58
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->keylistner:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 60
    new-instance v1, Lcom/samsung/fumo/SendStatus$1;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/SendStatus$1;-><init>(Lcom/samsung/fumo/SendStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    .line 71
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    goto :goto_5

    .line 75
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :pswitch_2a
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f05003c

    invoke-virtual {p0, v1}, Lcom/samsung/fumo/SendStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 78
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->keylistner:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 79
    new-instance v1, Lcom/samsung/fumo/SendStatus$2;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/SendStatus$2;-><init>(Lcom/samsung/fumo/SendStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    iput-object v0, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    .line 89
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    goto :goto_5

    .line 52
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2a
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    const-string v0, "SendStatus"

    const-string v1, "onDestroy ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 175
    const-string v0, "SendStatus"

    const-string v1, "onStop ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->ststimer:Lcom/samsung/fumo/SendStatus$StatusTimer;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus$StatusTimer;->cancel()V

    .line 177
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 131
    const-string v1, "SendStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 170
    :cond_2b
    :goto_2b
    return-void

    .line 159
    :cond_2c
    new-array v0, v5, [Landroid/content/Intent;

    .line 160
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 161
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 165
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2b

    .line 166
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    iget-object v1, p0, Lcom/samsung/fumo/SendStatus;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v5, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    goto :goto_2b
.end method

.method public removeUpdateStatus()V
    .registers 3

    .prologue
    .line 122
    const-string v0, "SendStatus"

    const-string v1, "removeUpdateStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    .line 124
    iget-object v0, p0, Lcom/samsung/fumo/SendStatus;->mPrgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    :cond_10
    return-void
.end method

.class public Lcom/samsung/fumo/FWUpdateComplete;
.super Landroid/app/Activity;
.source "FWUpdateComplete.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApp:Lcom/samsung/client/DMApp;

.field private mDlg:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "FWUpdateComplete"

    iput-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    .line 25
    iput-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/fumo/FWUpdateComplete;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v1, "FWUpdateComplete"

    const-string v2, "onCreate ..... "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    .line 33
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 34
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 36
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 37
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/fumo/FWUpdateComplete;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fwUpdateDialog"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FWUpdateComplete;->showDialog(I)V

    .line 42
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f050016

    const v3, 0x108009b

    .line 47
    const-string v0, "FWUpdateComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    packed-switch p1, :pswitch_data_84

    .line 96
    :goto_21
    :pswitch_21
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    return-object v0

    .line 52
    :pswitch_24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/fumo/FWUpdateComplete$1;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FWUpdateComplete$1;-><init>(Lcom/samsung/fumo/FWUpdateComplete;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    .line 62
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/fumo/FWUpdateComplete$2;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FWUpdateComplete$2;-><init>(Lcom/samsung/fumo/FWUpdateComplete;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_21

    .line 74
    :pswitch_4e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050043

    invoke-virtual {p0, v1}, Lcom/samsung/fumo/FWUpdateComplete;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/fumo/FWUpdateComplete$3;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FWUpdateComplete$3;-><init>(Lcom/samsung/fumo/FWUpdateComplete;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    .line 85
    iget-object v0, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/fumo/FWUpdateComplete$4;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FWUpdateComplete$4;-><init>(Lcom/samsung/fumo/FWUpdateComplete;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_21

    .line 49
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_24
        :pswitch_21
        :pswitch_4e
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 102
    const-string v1, "FWUpdateComplete"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v1, "FWUpdateComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 143
    :cond_31
    :goto_31
    return-void

    .line 131
    :cond_32
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/Intent;

    .line 132
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 133
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 137
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_31

    .line 139
    const-string v1, "FWUpdateComplete"

    const-string v2, "onUserLeaveHint() ............ Dialog not null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/samsung/fumo/FWUpdateComplete;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_31
.end method

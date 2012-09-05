.class public Lcom/samsung/fumo/UpdateSoftware;
.super Landroid/app/Activity;
.source "UpdateSoftware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;
    }
.end annotation


# instance fields
.field private hfaPrlFumoUpdate:Z

.field homekeyevent:Z

.field private mApp:Lcom/samsung/client/DMApp;

.field private mPrgDlg:Landroid/app/ProgressDialog;

.field private mUpdDeferDlg:Landroid/app/AlertDialog;

.field private mdnmsidchanged:Z

.field private noButton:Landroid/widget/Button;

.field private txtView:Landroid/widget/TextView;

.field private updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    .line 34
    iput-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    .line 38
    iput-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    .line 39
    iput-boolean v0, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    .line 40
    iput-boolean v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mdnmsidchanged:Z

    .line 259
    iput-boolean v0, p0, Lcom/samsung/fumo/UpdateSoftware;->homekeyevent:Z

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/fumo/UpdateSoftware;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/fumo/UpdateSoftware;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->resetPhone()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->showCancelUpdateDlg()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->cancelUpdDlg()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/fumo/UpdateSoftware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->updatedone()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/fumo/UpdateSoftware;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/fumo/UpdateSoftware;Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;)Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    return-object p1
.end method

.method private cancelUpdDlg()V
    .registers 6

    .prologue
    .line 190
    const-string v2, "UpdateSoftware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUpdate homekeyevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/fumo/UpdateSoftware;->homekeyevent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "UpdateSoftware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUpdate HfaInitiated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/fumo/UpdateSoftware;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, data:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 196
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "UpgradePending"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    if-eqz v2, :cond_51

    .line 200
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    invoke-virtual {v2}, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;->cancel()V

    .line 203
    :cond_51
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->updatedone()V

    .line 204
    return-void
.end method

.method private resetPhone()V
    .registers 6

    .prologue
    .line 225
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->lowBattery()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 226
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080020

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050034

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/UpdateSoftware;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050016

    new-instance v4, Lcom/samsung/fumo/UpdateSoftware$7;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/UpdateSoftware$7;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, dlg:Landroid/app/AlertDialog;
    new-instance v2, Lcom/samsung/fumo/UpdateSoftware$8;

    invoke-direct {v2, p0}, Lcom/samsung/fumo/UpdateSoftware$8;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    .end local v0           #dlg:Landroid/app/AlertDialog;
    :goto_3e
    return-void

    .line 249
    :cond_3f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f05003a

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/UpdateSoftware;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    .local v1, resetAlert:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    invoke-virtual {p0}, Lcom/samsung/fumo/UpdateSoftware;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->updateSoftware()V

    goto :goto_3e
.end method

.method private showCancelUpdateDlg()V
    .registers 4

    .prologue
    .line 172
    const-string v1, "UpdateSoftware"

    const-string v2, "updateStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f05003d

    invoke-virtual {p0, v1}, Lcom/samsung/fumo/UpdateSoftware;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 177
    new-instance v1, Lcom/samsung/fumo/UpdateSoftware$6;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/UpdateSoftware$6;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 185
    iput-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mPrgDlg:Landroid/app/ProgressDialog;

    .line 186
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 187
    return-void
.end method

.method private updatedone()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    iget-boolean v2, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    if-eqz v2, :cond_35

    .line 208
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 209
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 210
    iget-boolean v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mdnmsidchanged:Z

    if-eqz v2, :cond_20

    .line 211
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/fumo/UpdateSoftware;->homekeyevent:Z

    if-nez v3, :cond_1e

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    .line 221
    :goto_1d
    return-void

    :cond_1e
    move v0, v1

    .line 211
    goto :goto_1a

    .line 213
    :cond_20
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->resetRadio()V

    .line 214
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 215
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 216
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_1d

    .line 219
    :cond_35
    iget-object v2, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/fumo/UpdateSoftware;->homekeyevent:Z

    if-nez v3, :cond_3f

    :goto_3b
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_1d

    :cond_3f
    move v0, v1

    goto :goto_3b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v4, "UpdateSoftware"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/UpdateSoftware;->setContentView(I)V

    .line 50
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    .line 51
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 52
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 53
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    .line 54
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mdnmsidchanged:Z

    .line 56
    const v4, 0x7f050039

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/UpdateSoftware;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, msg:Ljava/lang/String;
    const-string v4, "DMAPP_STATE"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/samsung/fumo/UpdateSoftware;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, data:Landroid/content/SharedPreferences;
    const-string v4, "FUMO_DESCRIPTION"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, description:Ljava/lang/String;
    const-string v4, "FUMO_UPD_TIME"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, update_time:Ljava/lang/String;
    const-string v4, "UpdateSoftware"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v4, "Description"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v4, "XX"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const v4, 0x7f070052

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/UpdateSoftware;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->txtView:Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->txtView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v4, 0x7f070054

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/UpdateSoftware;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->yesButton:Landroid/widget/Button;

    .line 70
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->yesButton:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/fumo/UpdateSoftware$1;

    invoke-direct {v5, p0}, Lcom/samsung/fumo/UpdateSoftware$1;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v4, 0x7f070055

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/UpdateSoftware;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->noButton:Landroid/widget/Button;

    .line 83
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->noButton:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/fumo/UpdateSoftware$2;

    invoke-direct {v5, p0}, Lcom/samsung/fumo/UpdateSoftware$2;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-boolean v4, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    if-nez v4, :cond_a8

    .line 96
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 97
    iget-object v4, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 99
    :cond_a8
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 122
    const-string v1, "UpdateSoftware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/samsung/fumo/UpdateSoftware$3;

    invoke-direct {v0, p0}, Lcom/samsung/fumo/UpdateSoftware$3;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    .line 140
    .local v0, keylistner:Landroid/content/DialogInterface$OnKeyListener;
    packed-switch p1, :pswitch_data_56

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_24
    return-object v1

    .line 144
    :pswitch_25
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050046

    new-instance v3, Lcom/samsung/fumo/UpdateSoftware$4;

    invoke-direct {v3, p0}, Lcom/samsung/fumo/UpdateSoftware$4;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    .line 153
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/fumo/UpdateSoftware$5;

    invoke-direct {v2, p0}, Lcom/samsung/fumo/UpdateSoftware$5;-><init>(Lcom/samsung/fumo/UpdateSoftware;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    goto :goto_24

    .line 140
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    const-string v0, "UpdateSoftware"

    const-string v1, "OnKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    packed-switch p1, :pswitch_data_16

    .line 330
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 323
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->cancelUpdate()V

    .line 325
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->showCancelUpdateDlg()V

    goto :goto_a

    .line 321
    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    const-string v0, "UpdateSoftware"

    const-string v1, "onPause ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/samsung/fumo/UpdateSoftware;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    const-string v0, "UpdateSoftware"

    const-string v1, "onResume... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/fumo/UpdateSoftware;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 336
    const-string v0, "UpdateSoftware"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 264
    const-string v1, "UpdateSoftware"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "UpdateSoftware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 316
    :cond_32
    :goto_32
    return-void

    .line 293
    :cond_33
    new-array v0, v5, [Landroid/content/Intent;

    .line 294
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 295
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 300
    iput-boolean v5, p0, Lcom/samsung/fumo/UpdateSoftware;->homekeyevent:Z

    .line 302
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_60

    .line 303
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mUpdDeferDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_32

    .line 306
    :cond_60
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mPrgDlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_70

    .line 307
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mPrgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    :goto_69
    invoke-virtual {p0}, Lcom/samsung/fumo/UpdateSoftware;->finish()V

    .line 313
    invoke-direct {p0}, Lcom/samsung/fumo/UpdateSoftware;->cancelUpdDlg()V

    goto :goto_32

    .line 309
    :cond_70
    iget-object v1, p0, Lcom/samsung/fumo/UpdateSoftware;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->cancelUpdate()V

    goto :goto_69
.end method

.method public removeUpdateStatus()V
    .registers 7

    .prologue
    .line 358
    const-string v0, "UpdateSoftware"

    const-string v1, "removeUpdateStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mPrgDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    .line 360
    iget-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->mPrgDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/fumo/UpdateSoftware;->hfaPrlFumoUpdate:Z

    if-eqz v0, :cond_20

    .line 364
    new-instance v0, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;-><init>(Lcom/samsung/fumo/UpdateSoftware;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/UpdateSoftware;->updatecancelDlgTimer:Lcom/samsung/fumo/UpdateSoftware$UpdateCancelDlgTimer;

    .line 367
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/UpdateSoftware;->showDialog(I)V

    .line 368
    return-void
.end method

.class public Lcom/samsung/deviceconfiguration/DeviceConfiguration;
.super Landroid/app/Activity;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/deviceconfiguration/DeviceConfiguration$CustomDialog;,
        Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;,
        Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;
    }
.end annotation


# instance fields
.field private dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

.field private errCode:I

.field homekeyevent:Z

.field private mApp:Lcom/samsung/client/DMApp;

.field private mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

.field private mPrgDlg:Landroid/app/Dialog;

.field public mUpdated:Z

.field private sessionstatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mUpdated:Z

    .line 27
    iput-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    .line 28
    iput-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 29
    iput-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    .line 30
    iput v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->errCode:I

    .line 46
    iput v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 371
    iput-boolean v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    .line 444
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->cancelSession()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcDone()V

    return-void
.end method

.method private cancelSession()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 296
    const-string v0, "DeviceConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    if-ne v0, v3, :cond_2b

    .line 299
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v3, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 300
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->stopSession()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 303
    :cond_2b
    return-void
.end method

.method private dcDone()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    const-string v2, "DeviceConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcDone homekeyevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "DeviceConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcDone userCancel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v4, v4, Lcom/samsung/client/DMApp;->userCancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v2, "DeviceConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dcDone sessionstatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    if-eqz v2, :cond_5b

    .line 324
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    invoke-virtual {v2}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;->cancel()V

    .line 327
    :cond_5b
    iget v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    packed-switch v2, :pswitch_data_b8

    .line 361
    :cond_60
    :goto_60
    :pswitch_60
    return-void

    .line 330
    :pswitch_61
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->finish()V

    .line 331
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 332
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 333
    iget-boolean v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    if-nez v0, :cond_60

    .line 334
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    goto :goto_60

    .line 340
    :pswitch_78
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->finish()V

    .line 341
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 342
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 343
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    if-nez v3, :cond_8f

    :goto_8b
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_60

    :cond_8f
    move v0, v1

    goto :goto_8b

    .line 348
    :pswitch_91
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->finish()V

    .line 349
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 350
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 351
    iget-object v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    if-nez v3, :cond_a8

    :goto_a4
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_60

    :cond_a8
    move v0, v1

    goto :goto_a4

    .line 356
    :pswitch_aa
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->finish()V

    .line 357
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 358
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto :goto_60

    .line 327
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_60
        :pswitch_61
        :pswitch_60
        :pswitch_78
        :pswitch_91
    .end packed-switch
.end method


# virtual methods
.method public getDialogHandler()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public gotoFailure(I)V
    .registers 5
    .parameter "err"

    .prologue
    .line 277
    const-string v0, "DeviceConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure err : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    iput p1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->errCode:I

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    .line 284
    return-void
.end method

.method public gotoSuccess()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    .line 254
    const-string v0, "DeviceConfiguration"

    const-string v1, "gotoSuccess .... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 259
    iget-boolean v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mUpdated:Z

    if-eqz v0, :cond_4a

    .line 260
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 261
    new-instance v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;JJ)V

    iput-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    .line 262
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 269
    :goto_2e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    .line 274
    :goto_32
    return-void

    .line 263
    :cond_33
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 264
    new-instance v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;JJ)V

    iput-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->dcToRebootTimer:Lcom/samsung/deviceconfiguration/DeviceConfiguration$DcToRebootTimer;

    .line 265
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    goto :goto_2e

    .line 267
    :cond_47
    iput v6, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    goto :goto_2e

    .line 271
    :cond_4a
    iput v6, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 272
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    goto :goto_32
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "DeviceConfiguration"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    .line 55
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v4}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 56
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 59
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2a

    .line 60
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 63
    :cond_2a
    new-instance v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;)V

    iput-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    .line 65
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 66
    const-string v0, "DeviceConfiguration"

    const-string v1, "DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 68
    invoke-virtual {p0, v4}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    .line 79
    :goto_46
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 80
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 81
    return-void

    .line 69
    :cond_51
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 70
    const-string v0, "DeviceConfiguration"

    const-string v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput v2, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 72
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    goto :goto_46

    .line 74
    :cond_67
    iput v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->sessionstatus:I

    .line 75
    invoke-virtual {p0, v2}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->showDialog(I)V

    goto :goto_46
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v8, 0x108009b

    const/4 v4, 0x1

    const v7, 0x1080027

    const v5, 0x7f050009

    const v6, 0x7f050016

    .line 104
    new-instance v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;

    invoke-direct {v2, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$1;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    .line 124
    .local v2, keylistner:Landroid/content/DialogInterface$OnKeyListener;
    packed-switch p1, :pswitch_data_17c

    .line 249
    const/4 v0, 0x0

    :goto_16
    return-object v0

    .line 127
    :pswitch_17
    new-instance v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration$CustomDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$CustomDialog;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;Landroid/content/Context;)V

    .line 128
    .local v0, dialog:Landroid/app/ProgressDialog;
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    sget-boolean v3, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v3, :cond_54

    .line 129
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    :goto_2c
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 134
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 135
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isInRestrictLockMode()Z

    move-result v3

    if-nez v3, :cond_49

    .line 136
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$2;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$2;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    :cond_49
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 150
    iput-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto :goto_16

    .line 131
    :cond_54
    const v3, 0x7f050028

    invoke-virtual {p0, v3}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 155
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :pswitch_5f
    const v3, 0x7f050029

    invoke-virtual {p0, v3}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, errStr:Ljava/lang/String;
    const-string v3, "###"

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    iget v5, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->errCode:I

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$3;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$3;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 169
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_16

    .line 174
    .end local v1           #errStr:Ljava/lang/String;
    :pswitch_a7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f05002a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$4;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$4;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 187
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 188
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_16

    .line 192
    :pswitch_da
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f05002c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$5;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$5;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 205
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 206
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_16

    .line 210
    :pswitch_10d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050066

    invoke-virtual {p0, v4}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$6;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$6;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 224
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_16

    .line 229
    :pswitch_144
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {p0, v4}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/deviceconfiguration/DeviceConfiguration$7;

    invoke-direct {v4, p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration$7;-><init>(Lcom/samsung/deviceconfiguration/DeviceConfiguration;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    .line 244
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mOnDlgDismiss:Lcom/samsung/deviceconfiguration/DeviceConfiguration$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 245
    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_16

    .line 124
    nop

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_5f
        :pswitch_a7
        :pswitch_da
        :pswitch_10d
        :pswitch_144
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 425
    const-string v0, "DeviceConfiguration"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    const-string v0, "DeviceConfiguration"

    const-string v1, "onPause() ............ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    const-string v0, "DeviceConfiguration"

    const-string v1, "onResume ........"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 420
    const-string v0, "DeviceConfiguration"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 376
    const-string v1, "DeviceConfiguration"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v1, "DeviceConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 415
    :cond_32
    :goto_32
    return-void

    .line 405
    :cond_33
    new-array v0, v5, [Landroid/content/Intent;

    .line 406
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 407
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 411
    iput-boolean v5, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->homekeyevent:Z

    .line 412
    invoke-direct {p0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->cancelSession()V

    .line 413
    iget-object v1, p0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_32
.end method

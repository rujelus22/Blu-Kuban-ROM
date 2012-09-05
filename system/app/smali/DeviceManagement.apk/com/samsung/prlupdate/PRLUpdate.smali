.class public Lcom/samsung/prlupdate/PRLUpdate;
.super Landroid/app/Activity;
.source "PRLUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/prlupdate/PRLUpdate$CustomDialog;,
        Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;,
        Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;,
        Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;
    }
.end annotation


# instance fields
.field private errCode:I

.field private freshActivity:Z

.field private fullScreens:Z

.field private hfaPrl:Z

.field private hfaPrlWinBtn:Landroid/widget/Button;

.field private hfaPrlWinDescText:Landroid/widget/TextView;

.field private hfaPrlWinProgressBar:Landroid/widget/ProgressBar;

.field homekeyevent:Z

.field private mApp:Lcom/samsung/client/DMApp;

.field private mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

.field private mPrgDlg:Landroid/app/Dialog;

.field public mPrlUpadteHandler:Landroid/os/Handler;

.field public mUpdateAvailable:Z

.field private mdnmsidchanged:Z

.field private niaPrl:Z

.field private previousActivity:Landroid/app/Activity;

.field private prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

.field private sessionstatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    .line 36
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 37
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    .line 38
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinProgressBar:Landroid/widget/ProgressBar;

    .line 39
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinDescText:Landroid/widget/TextView;

    .line 41
    iput v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->errCode:I

    .line 42
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    .line 43
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->niaPrl:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    .line 46
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->fullScreens:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->freshActivity:Z

    .line 48
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->previousActivity:Landroid/app/Activity;

    .line 74
    iput v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 75
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    .line 76
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    .line 78
    iput-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    .line 685
    iput-boolean v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    .line 755
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$13;

    invoke-direct {v0, p0}, Lcom/samsung/prlupdate/PRLUpdate$13;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrlUpadteHandler:Landroid/os/Handler;

    .line 869
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/prlupdate/PRLUpdate;->cancelSession()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/prlupdate/PRLUpdate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/prlupdate/PRLUpdate;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/prlupdate/PRLUpdate;Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;)Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    return-object p1
.end method

.method private cancelSession()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 567
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession hfa_prl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    if-ne v0, v3, :cond_4d

    .line 571
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v3, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 572
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->stopSession()V

    .line 574
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_52

    .line 575
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_4e

    .line 576
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 588
    :cond_4d
    :goto_4d
    return-void

    .line 578
    :cond_4e
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4d

    .line 581
    :cond_52
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 582
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4d

    .line 584
    :cond_5e
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4d
.end method

.method private moveToHfaPrlDoneWindow(I)V
    .registers 7
    .parameter "dlgtype"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 192
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHfaPrlDoneWindow .....success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-ne p1, v4, :cond_40

    .line 194
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinDescText:Landroid/widget/TextView;

    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :goto_24
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 206
    if-ne p1, v4, :cond_54

    .line 207
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/prlupdate/PRLUpdate$2;

    invoke-direct {v1, p0}, Lcom/samsung/prlupdate/PRLUpdate$2;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :goto_3f
    return-void

    .line 195
    :cond_40
    if-ne p1, v3, :cond_4b

    .line 196
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinDescText:Landroid/widget/TextView;

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_24

    .line 199
    :cond_4b
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinDescText:Landroid/widget/TextView;

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_24

    .line 214
    :cond_54
    if-ne p1, v3, :cond_61

    .line 215
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/prlupdate/PRLUpdate$3;

    invoke-direct {v1, p0}, Lcom/samsung/prlupdate/PRLUpdate$3;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f

    .line 222
    :cond_61
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/prlupdate/PRLUpdate$4;

    invoke-direct {v1, p0}, Lcom/samsung/prlupdate/PRLUpdate$4;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f
.end method

.method private prlDone()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 592
    const-string v2, "PRLUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prlDone homekeyevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v2, "PRLUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prlDone userCancel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v4, v4, Lcom/samsung/client/DMApp;->userCancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v2, "PRLUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prlDone sessionstatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    if-eqz v2, :cond_5b

    .line 609
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    invoke-virtual {v2}, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;->cancel()V

    .line 612
    :cond_5b
    iget v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    packed-switch v2, :pswitch_data_102

    .line 674
    :cond_60
    :goto_60
    :pswitch_60
    return-void

    .line 615
    :pswitch_61
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 616
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 617
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 618
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    if-nez v0, :cond_60

    .line 619
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    goto :goto_60

    .line 625
    :pswitch_78
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 626
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 627
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 628
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    if-nez v3, :cond_8f

    :goto_8b
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_60

    :cond_8f
    move v0, v1

    goto :goto_8b

    .line 633
    :pswitch_91
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 634
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 635
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    if-nez v3, :cond_a3

    :goto_9f
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_60

    :cond_a3
    move v0, v1

    goto :goto_9f

    .line 640
    :pswitch_a5
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 641
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 642
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 643
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 644
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 645
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_60

    .line 650
    :pswitch_c2
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 651
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 652
    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 653
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 654
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 655
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    if-nez v0, :cond_e2

    .line 656
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 658
    :cond_e2
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_60

    .line 663
    :pswitch_e9
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 664
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->setFumoAlarm()V

    goto/16 :goto_60

    .line 669
    :pswitch_f3
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->finish()V

    .line 670
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 671
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto/16 :goto_60

    .line 612
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_60
        :pswitch_61
        :pswitch_78
        :pswitch_a5
        :pswitch_c2
        :pswitch_e9
        :pswitch_91
    .end packed-switch
.end method

.method private showHfaPrlProgressWindow()V
    .registers 3

    .prologue
    .line 174
    const-string v0, "PRLUpdate"

    const-string v1, "showHfaPrlProgressWindow ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->setContentView(I)V

    .line 177
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinDescText:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinProgressBar:Landroid/widget/ProgressBar;

    .line 179
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/prlupdate/PRLUpdate$1;

    invoke-direct {v1, p0}, Lcom/samsung/prlupdate/PRLUpdate$1;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method


# virtual methods
.method public gotoFailure(I)V
    .registers 9
    .parameter "err"

    .prologue
    const/4 v6, 0x1

    .line 518
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure sessionstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUpdateAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hfa_prl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    if-ne v0, v6, :cond_84

    .line 528
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_85

    .line 529
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 537
    :goto_6a
    iput p1, p0, Lcom/samsung/prlupdate/PRLUpdate;->errCode:I

    .line 538
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_91

    .line 539
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_8d

    .line 540
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 541
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;-><init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V

    .line 553
    :goto_81
    invoke-virtual {p0, v6}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    .line 555
    :cond_84
    return-void

    .line 532
    :cond_85
    const-string v0, "PRLUpdate"

    const-string v1, "session ran fast session completed even before the progress diloag opened. OR it is a full screen window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 543
    :cond_8d
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_81

    .line 546
    :cond_91
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 547
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_81

    .line 549
    :cond_9d
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_81
.end method

.method public gotoSuccess()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 426
    const-string v0, "PRLUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoSuccess sessionstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUpdateAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hfa_prl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    if-ne v0, v4, :cond_4f

    .line 435
    :try_start_3b
    iget v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    if-eq v0, v4, :cond_50

    .line 436
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_45

    .line 438
    :catch_45
    move-exception v6

    .line 439
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "PRLUpdate"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4f
    :goto_4f
    return-void

    .line 443
    :cond_50
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mUpdateAvailable:Z

    if-eqz v0, :cond_bb

    .line 444
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->fullScreens:Z

    if-eqz v0, :cond_7b

    .line 445
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_77

    .line 446
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->moveToHfaPrlDoneWindow(I)V

    .line 467
    :goto_60
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_a7

    .line 468
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;-><init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    .line 469
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_9f

    .line 470
    iput v7, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4f

    .line 448
    :cond_77
    invoke-direct {p0, v5}, Lcom/samsung/prlupdate/PRLUpdate;->moveToHfaPrlDoneWindow(I)V

    goto :goto_60

    .line 451
    :cond_7b
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_93

    .line 452
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 460
    :goto_8a
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_9b

    .line 461
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    goto :goto_60

    .line 455
    :cond_93
    const-string v0, "PRLUpdate"

    const-string v1, "session ran fast session completed even before the progress diloag opened. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 463
    :cond_9b
    invoke-virtual {p0, v5}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    goto :goto_60

    .line 472
    :cond_9f
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->resetRadio()V

    .line 473
    iput v8, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4f

    .line 476
    :cond_a7
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 477
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4f

    .line 479
    :cond_b3
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->resetRadio()V

    .line 480
    iput v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_4f

    .line 484
    :cond_bb
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->fullScreens:Z

    if-eqz v0, :cond_da

    .line 486
    invoke-virtual {p0, v7}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    .line 499
    :goto_c2
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_f9

    .line 500
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;-><init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->prlToFumoTimer:Lcom/samsung/prlupdate/PRLUpdate$PRLtoFUMOTimer;

    .line 501
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_f5

    .line 502
    iput v7, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto/16 :goto_4f

    .line 488
    :cond_da
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_ed

    .line 489
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 496
    :goto_e9
    invoke-virtual {p0, v7}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    goto :goto_c2

    .line 492
    :cond_ed
    const-string v0, "PRLUpdate"

    const-string v1, "session ran fast, session completed even before the progress diloag opened. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 504
    :cond_f5
    iput v8, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto/16 :goto_4f

    .line 507
    :cond_f9
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 508
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto/16 :goto_4f

    .line 510
    :cond_106
    iput v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto/16 :goto_4f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "PRLUpdate"

    const-string v1, "onCreate ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    .line 91
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->previousActivity:Landroid/app/Activity;

    .line 92
    sget-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->previousActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    if-eqz v0, :cond_33

    .line 93
    iput-boolean v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->freshActivity:Z

    .line 94
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->previousActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getDialogHandler()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 97
    :cond_33
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v5}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v4, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 100
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v4}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    .line 103
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    .line 104
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "niaprl"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->niaPrl:Z

    .line 105
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->AreFullScreensReqd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->fullScreens:Z

    .line 107
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_73

    .line 108
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 111
    :cond_73
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;-><init>(Lcom/samsung/prlupdate/PRLUpdate;Lcom/samsung/prlupdate/PRLUpdate$1;)V

    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    .line 113
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    const-string v3, "prl_enable"

    invoke-virtual {v2, v3}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 115
    :cond_91
    const-string v0, "PRLUpdate"

    const-string v1, "DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_c1

    .line 117
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_be

    .line 118
    iput v5, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 119
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;-><init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V

    .line 131
    :goto_ac
    invoke-virtual {p0, v6}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    .line 167
    :cond_af
    :goto_af
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-nez v0, :cond_bd

    .line 168
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 169
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 171
    :cond_bd
    return-void

    .line 121
    :cond_be
    iput v6, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_ac

    .line 124
    :cond_c1
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 125
    iput v8, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_ac

    .line 127
    :cond_cc
    iput v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_ac

    .line 132
    :cond_cf
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 133
    const-string v0, "PRLUpdate"

    const-string v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->hfaPrl:Z

    if-eqz v0, :cond_fa

    .line 135
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_f7

    .line 136
    iput v5, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 137
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/prlupdate/PRLUpdate$RebootTimer;-><init>(Lcom/samsung/prlupdate/PRLUpdate;JJ)V

    .line 149
    :goto_f2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    goto :goto_af

    .line 139
    :cond_f7
    iput v6, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_f2

    .line 142
    :cond_fa
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isBC10BC14Changed()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 143
    iput v8, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_f2

    .line 145
    :cond_105
    iput v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    goto :goto_f2

    .line 152
    :cond_108
    iput v7, p0, Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I

    .line 154
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->fullScreens:Z

    if-eqz v0, :cond_112

    .line 155
    invoke-direct {p0}, Lcom/samsung/prlupdate/PRLUpdate;->showHfaPrlProgressWindow()V

    goto :goto_af

    .line 157
    :cond_112
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->freshActivity:Z

    if-eqz v0, :cond_af

    .line 158
    invoke-virtual {p0, v4}, Lcom/samsung/prlupdate/PRLUpdate;->showDialog(I)V

    goto :goto_af
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const v9, 0x1080027

    const v8, 0x7f050009

    const v7, 0x7f050016

    const/4 v6, 0x0

    .line 255
    const-string v3, "PRLUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog ..... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Lcom/samsung/prlupdate/PRLUpdate$5;

    invoke-direct {v2, p0}, Lcom/samsung/prlupdate/PRLUpdate$5;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 275
    .local v2, keylistner:Landroid/content/DialogInterface$OnKeyListener;
    packed-switch p1, :pswitch_data_1e2

    .line 422
    const/4 v0, 0x0

    :goto_2c
    return-object v0

    .line 278
    :pswitch_2d
    new-instance v0, Lcom/samsung/prlupdate/PRLUpdate$CustomDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/prlupdate/PRLUpdate$CustomDialog;-><init>(Lcom/samsung/prlupdate/PRLUpdate;Landroid/content/Context;)V

    .line 279
    .local v0, dialog:Landroid/app/ProgressDialog;
    iget-boolean v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->niaPrl:Z

    if-eqz v3, :cond_6b

    .line 280
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    :goto_40
    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 285
    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 286
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isInRestrictLockMode()Z

    move-result v3

    if-nez v3, :cond_62

    .line 288
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$6;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$6;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    :cond_62
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 301
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 302
    iput-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto :goto_2c

    .line 282
    :cond_6b
    const v3, 0x7f05002e

    invoke-virtual {p0, v3}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 307
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :pswitch_76
    const v3, 0x7f05002f

    invoke-virtual {p0, v3}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, errStr:Ljava/lang/String;
    const-string v3, "###"

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget v5, p0, Lcom/samsung/prlupdate/PRLUpdate;->errCode:I

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$7;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$7;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 321
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 322
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 324
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 327
    .end local v1           #errStr:Ljava/lang/String;
    :pswitch_c3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050030

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$8;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$8;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 339
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 340
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 341
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 342
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 345
    :pswitch_fe
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050032

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$9;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$9;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 360
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 361
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 362
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 366
    :pswitch_139
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050067

    invoke-virtual {p0, v4}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$10;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$10;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 379
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 380
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 381
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 386
    :pswitch_175
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050030

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$11;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$11;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 397
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 398
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 399
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 400
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 403
    :pswitch_1a5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050033

    invoke-virtual {p0, v4}, Lcom/samsung/prlupdate/PRLUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/prlupdate/PRLUpdate$12;

    invoke-direct {v4, p0}, Lcom/samsung/prlupdate/PRLUpdate$12;-><init>(Lcom/samsung/prlupdate/PRLUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 416
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 417
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/prlupdate/PRLUpdate;->mOnDlgDismiss:Lcom/samsung/prlupdate/PRLUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 418
    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 419
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 275
    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_76
        :pswitch_c3
        :pswitch_fe
        :pswitch_139
        :pswitch_1a5
        :pswitch_175
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 819
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 820
    const-string v0, "PRLUpdate"

    const-string v1, "onDestroy ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 791
    const-string v0, "PRLUpdate"

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

    .line 793
    packed-switch p1, :pswitch_data_36

    .line 803
    :goto_1d
    return v4

    .line 795
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrlUpadteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrlUpadteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1d

    .line 799
    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrlUpadteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrlUpadteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1d

    .line 793
    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    const-string v0, "PRLUpdate"

    const-string v1, "onPause ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    const-string v0, "PRLUpdate"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/samsung/prlupdate/PRLUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 808
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 809
    iget-boolean v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->freshActivity:Z

    if-nez v0, :cond_c

    .line 812
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate;->previousActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 814
    :cond_c
    const-string v0, "PRLUpdate"

    const-string v1, "onStop ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 689
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 690
    const-string v1, "PRLUpdate"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v1, "PRLUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 733
    :cond_32
    :goto_32
    return-void

    .line 719
    :cond_33
    new-array v0, v5, [Landroid/content/Intent;

    .line 720
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 721
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 725
    iput-boolean v5, p0, Lcom/samsung/prlupdate/PRLUpdate;->homekeyevent:Z

    .line 726
    invoke-direct {p0}, Lcom/samsung/prlupdate/PRLUpdate;->cancelSession()V

    .line 727
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-nez v1, :cond_61

    .line 728
    invoke-direct {p0}, Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V

    goto :goto_32

    .line 730
    :cond_61
    iget-object v1, p0, Lcom/samsung/prlupdate/PRLUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_32
.end method

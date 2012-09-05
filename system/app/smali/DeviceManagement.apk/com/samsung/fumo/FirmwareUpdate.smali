.class public Lcom/samsung/fumo/FirmwareUpdate;
.super Landroid/app/Activity;
.source "FirmwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;,
        Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;,
        Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;
    }
.end annotation


# instance fields
.field private cifumo_after_gota:Z

.field private current:I

.field private errCode:I

.field private freshActivity:Z

.field private fullScreens:Z

.field private hfaPrlFumo:Z

.field private hfaPrlFumoWinBodyText:Landroid/widget/TextView;

.field private hfaPrlFumoWinBtn:Landroid/widget/Button;

.field private hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

.field private hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

.field homekeyevent:Z

.field private mApp:Lcom/samsung/client/DMApp;

.field public mFwUpdateHandler:Landroid/os/Handler;

.field private mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

.field private mPrgDlg:Landroid/app/Dialog;

.field private max:I

.field private mdnmsidchanged:Z

.field private previousActivity:Landroid/app/Activity;

.field private sessionstatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 37
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    .line 39
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBodyText:Landroid/widget/TextView;

    .line 40
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    .line 41
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    .line 43
    iput v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->errCode:I

    .line 44
    iput v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->max:I

    .line 45
    iput v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->current:I

    .line 57
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    .line 58
    iput-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    .line 60
    iput-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    .line 61
    iput-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->freshActivity:Z

    .line 63
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->previousActivity:Landroid/app/Activity;

    .line 79
    iput v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 80
    iput-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 853
    iput-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    .line 906
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$13;

    invoke-direct {v0, p0}, Lcom/samsung/fumo/FirmwareUpdate$13;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mFwUpdateHandler:Landroid/os/Handler;

    .line 974
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/fumo/FirmwareUpdate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->cancelSession()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/fumo/FirmwareUpdate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/fumo/FirmwareUpdate;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/fumo/FirmwareUpdate;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/fumo/FirmwareUpdate;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/fumo/FirmwareUpdate;Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;)Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    return-object p1
.end method

.method private cancelSession()V
    .registers 9

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 702
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession hfa_prl_fumo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession sessionstatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession cifumo_after_gota : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-ne v1, v4, :cond_95

    .line 707
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v4, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 708
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->stopSession()V

    .line 710
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v1, :cond_92

    .line 711
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v1, :cond_8f

    .line 712
    iput v7, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 719
    :goto_69
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v1, v4, :cond_8e

    .line 721
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_76

    .line 722
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 728
    :cond_76
    const-string v1, "FirmwareUpdate"

    const-string v2, "cancelSession popping GOTA complete dialog...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SYNCML_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, i:Landroid/content/Intent;
    const-string v1, "dialog"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 732
    iput-boolean v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    .line 764
    .end local v0           #i:Landroid/content/Intent;
    :cond_8e
    :goto_8e
    return-void

    .line 714
    :cond_8f
    iput v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_69

    .line 717
    :cond_92
    iput v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_69

    .line 735
    :cond_95
    iget v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8e

    .line 738
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v4, v1, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 739
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->cancelDld()V

    .line 740
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v1, :cond_d6

    .line 741
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v1, :cond_d3

    .line 742
    iput v7, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 749
    :goto_ad
    iget-boolean v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v1, v4, :cond_8e

    .line 750
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v1, :cond_ba

    .line 751
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 757
    :cond_ba
    const-string v1, "FirmwareUpdate"

    const-string v2, "cancelSession popping GOTA complete dialog...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SYNCML_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "dialog"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 761
    iput-boolean v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    goto :goto_8e

    .line 744
    .end local v0           #i:Landroid/content/Intent;
    :cond_d3
    iput v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_ad

    .line 747
    :cond_d6
    iput v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_ad
.end method

.method private fumoDone()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumoDone homekeyevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumoDone mApp.userCancel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v4, v4, Lcom/samsung/client/DMApp;->userCancel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumoDone userCancelDld : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v4, v4, Lcom/samsung/client/DMApp;->userCancelDld:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumoDone sessionstatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumoDone cifumo_after_gota  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    if-eqz v2, :cond_91

    .line 786
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    invoke-virtual {v2}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;->cancel()V

    .line 789
    :cond_91
    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    packed-switch v2, :pswitch_data_12a

    .line 838
    :pswitch_96
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 839
    const-string v0, "FirmwareUpdate"

    const-string v1, "fumoDone ERROR STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_a0
    return-void

    .line 792
    :pswitch_a1
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 793
    iget-boolean v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    if-nez v2, :cond_ad

    .line 794
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 796
    :cond_ad
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    if-nez v3, :cond_b7

    :goto_b3
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_a0

    :cond_b7
    move v0, v1

    goto :goto_b3

    .line 801
    :pswitch_b9
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 802
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 803
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 804
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    if-nez v3, :cond_d0

    :goto_cc
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_a0

    :cond_d0
    move v0, v1

    goto :goto_cc

    .line 809
    :pswitch_d2
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 810
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 811
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 812
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 813
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 814
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_a0

    .line 818
    :pswitch_ef
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 819
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 820
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 821
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    if-nez v0, :cond_105

    .line 822
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 824
    :cond_105
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 825
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 826
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_a0

    .line 830
    :pswitch_115
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 831
    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    if-nez v3, :cond_123

    :goto_11e
    invoke-virtual {v2, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto/16 :goto_a0

    :cond_123
    move v0, v1

    goto :goto_11e

    .line 835
    :pswitch_125
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    goto/16 :goto_a0

    .line 789
    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_115
        :pswitch_96
        :pswitch_96
        :pswitch_a1
        :pswitch_d2
        :pswitch_ef
        :pswitch_b9
        :pswitch_125
    .end packed-switch
.end method

.method private moveToHfaPrlFumoDldProgressWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string v0, "FirmwareUpdate"

    const-string v1, "showHfaPrlFumoDldProgressWindow ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBodyText:Landroid/widget/TextView;

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 227
    return-void
.end method

.method private moveToHfaPrlFumoNoUpdateWindow()V
    .registers 3

    .prologue
    .line 230
    const-string v0, "FirmwareUpdate"

    const-string v1, "showHfaPrlFumoDldProgressWindow ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBodyText:Landroid/widget/TextView;

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/fumo/FirmwareUpdate$2;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FirmwareUpdate$2;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method private showHfaPrlFumoProgressWindow()V
    .registers 3

    .prologue
    .line 205
    const-string v0, "FirmwareUpdate"

    const-string v1, "showHfaPrlFumoProgressWindow ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->setContentView(I)V

    .line 208
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBodyText:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    .line 210
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/fumo/FirmwareUpdate$1;

    invoke-direct {v1, p0}, Lcom/samsung/fumo/FirmwareUpdate$1;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method


# virtual methods
.method public dldError()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 587
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dldError sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-eq v0, v7, :cond_25

    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    .line 594
    :cond_25
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_5e

    .line 595
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 596
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 603
    :goto_34
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_6a

    .line 604
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_66

    .line 605
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 606
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 613
    :goto_4b
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v0, v7, :cond_6d

    .line 614
    const-string v0, "FirmwareUpdate"

    const-string v1, "dldError show DIALOG_ANDROID_UPDATE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    .line 616
    iput-boolean v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    .line 621
    :cond_5d
    :goto_5d
    return-void

    .line 598
    :cond_5e
    const-string v0, "FirmwareUpdate"

    const-string v1, "session ran fast download error happened even before the progress diloag opened. OR it is a full screen window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 608
    :cond_66
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_4b

    .line 611
    :cond_6a
    iput v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_4b

    .line 618
    :cond_6d
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_5d
.end method

.method public dlprogress(II)V
    .registers 9
    .parameter "max"
    .parameter "current"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 492
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dlprogress sessionstatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iput p1, p0, Lcom/samsung/fumo/FirmwareUpdate;->max:I

    .line 495
    iput p2, p0, Lcom/samsung/fumo/FirmwareUpdate;->current:I

    .line 496
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-ne v0, v3, :cond_5e

    .line 497
    iput v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 498
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    if-eqz v0, :cond_43

    .line 499
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->moveToHfaPrlFumoDldProgressWindow()V

    .line 527
    :cond_42
    :goto_42
    return-void

    .line 501
    :cond_43
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_56

    .line 502
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 503
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 509
    :goto_52
    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_42

    .line 505
    :cond_56
    const-string v0, "FirmwareUpdate"

    const-string v1, "session ran fast , dl progress happened  even before the progress diloag opened. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 512
    :cond_5e
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-ne v0, v4, :cond_42

    .line 513
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    if-eqz v0, :cond_7e

    .line 514
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-ne v0, v3, :cond_73

    .line 515
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 517
    :cond_73
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 518
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_42

    .line 520
    :cond_7e
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-virtual {v0}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->isIndeterminate()Z

    move-result v0

    if-ne v0, v3, :cond_8f

    .line 521
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-virtual {v0, v5}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setIndeterminate(Z)V

    .line 523
    :cond_8f
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMax(I)V

    .line 524
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-virtual {v0, p2}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setProgress(I)V

    goto :goto_42
.end method

.method public gotoFailure(I)V
    .registers 10
    .parameter "err"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 531
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-eq v0, v7, :cond_2f

    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    .line 540
    :cond_2f
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_6a

    .line 541
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 549
    :goto_3e
    iput p1, p0, Lcom/samsung/fumo/FirmwareUpdate;->errCode:I

    .line 550
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_76

    .line 551
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_72

    .line 552
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 553
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 560
    :goto_57
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v0, v7, :cond_79

    .line 561
    const-string v0, "FirmwareUpdate"

    const-string v1, "gotoFailure show DIALOG_ANDROID_UPDATE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    .line 563
    iput-boolean v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    .line 568
    :cond_69
    :goto_69
    return-void

    .line 544
    :cond_6a
    const-string v0, "FirmwareUpdate"

    const-string v1, "session ran fast session completed even before the progress diloag opened. OR it is a full screen window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 555
    :cond_72
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_57

    .line 558
    :cond_76
    iput v6, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_57

    .line 565
    :cond_79
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_69
.end method

.method public gotosuccess()V
    .registers 4

    .prologue
    .line 571
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotosuccess sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 577
    :cond_24
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 578
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_31

    .line 579
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 584
    :cond_30
    :goto_30
    return-void

    .line 581
    :cond_31
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V

    goto :goto_30
.end method

.method public noUpdateAlert()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 624
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noUpdateAlert sessionstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    if-eq v0, v3, :cond_25

    iget v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 631
    :cond_25
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    if-eqz v0, :cond_44

    .line 632
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->moveToHfaPrlFumoNoUpdateWindow()V

    .line 651
    :goto_2c
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_76

    .line 652
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_72

    .line 653
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 654
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 662
    :cond_43
    :goto_43
    return-void

    .line 634
    :cond_44
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_66

    .line 635
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 642
    :goto_53
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v0, v3, :cond_6e

    .line 643
    const-string v0, "FirmwareUpdate"

    const-string v1, "noUpdateAltert show DIALOG_ANDROID_UPDATE_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    .line 645
    iput-boolean v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    goto :goto_2c

    .line 638
    :cond_66
    const-string v0, "FirmwareUpdate"

    const-string v1, "session ran fast no update alert happened even before the progress diloag opened. OR it is a full screen window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 647
    :cond_6e
    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_2c

    .line 656
    :cond_72
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_43

    .line 659
    :cond_76
    iput v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_43
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x2

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "FirmwareUpdate"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firmware_download_started"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 88
    .local v6, downloadStarted:Z
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Cifumo_after_gota_update"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    .line 90
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() cifumo_after_gota  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    .line 97
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->previousActivity:Landroid/app/Activity;

    .line 98
    sget-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->previousActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    if-eqz v0, :cond_64

    .line 99
    iput-boolean v8, p0, Lcom/samsung/fumo/FirmwareUpdate;->freshActivity:Z

    .line 100
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->previousActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-virtual {v0}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->getDialogHandler()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 103
    :cond_64
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v3}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 104
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v8, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 106
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v8, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 107
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v8}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 108
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->AreFullScreensReqd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    .line 110
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->isMdnMsidChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    .line 112
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9d

    .line 113
    sget-object v0, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 116
    :cond_9d
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 119
    .local v7, sp:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;-><init>(Lcom/samsung/fumo/FirmwareUpdate;Lcom/samsung/fumo/FirmwareUpdate$1;)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    .line 121
    if-nez v6, :cond_186

    .line 122
    const-string v0, "UpgradePending"

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c5

    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-nez v0, :cond_c5

    .line 124
    const-string v0, "FirmwareUpdate"

    const-string v1, "DMApp.UPGRADE_PENDING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->finish()V

    .line 202
    :cond_c4
    :goto_c4
    return-void

    .line 129
    :cond_c5
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    const-string v3, "fumo_enable"

    invoke-virtual {v2, v3}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 131
    :cond_db
    const-string v0, "FirmwareUpdate"

    const-string v1, "DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_10b

    .line 133
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_108

    .line 134
    iput v10, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 135
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 143
    :goto_f6
    invoke-virtual {p0, v9}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    .line 198
    :cond_f9
    :goto_f9
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-nez v0, :cond_c4

    .line 199
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 200
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    goto :goto_c4

    .line 137
    :cond_108
    iput v9, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_f6

    .line 140
    :cond_10b
    iput v8, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_f6

    .line 144
    :cond_10e
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v0

    if-eqz v0, :cond_13f

    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-nez v0, :cond_13f

    .line 145
    const-string v0, "FirmwareUpdate"

    const-string v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_13c

    .line 147
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_139

    .line 148
    iput v10, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 149
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 157
    :goto_135
    invoke-virtual {p0, v10}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_f9

    .line 151
    :cond_139
    iput v9, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_135

    .line 154
    :cond_13c
    iput v8, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_135

    .line 158
    :cond_13f
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->lowBattery()Z

    move-result v0

    if-eqz v0, :cond_171

    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-nez v0, :cond_171

    .line 159
    const-string v0, "FirmwareUpdate"

    const-string v1, "Low Battery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumo:Z

    if-eqz v0, :cond_16e

    .line 161
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mdnmsidchanged:Z

    if-eqz v0, :cond_16b

    .line 162
    iput v10, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 163
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;-><init>(Lcom/samsung/fumo/FirmwareUpdate;JJ)V

    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->hfaRebootTimer:Lcom/samsung/fumo/FirmwareUpdate$RebootTimer;

    .line 171
    :goto_166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto :goto_f9

    .line 165
    :cond_16b
    iput v9, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_166

    .line 168
    :cond_16e
    iput v8, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    goto :goto_166

    .line 174
    :cond_171
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 175
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    if-eqz v0, :cond_17d

    .line 176
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->showHfaPrlFumoProgressWindow()V

    goto/16 :goto_f9

    .line 178
    :cond_17d
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->freshActivity:Z

    if-eqz v0, :cond_f9

    .line 179
    invoke-virtual {p0, v8}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto/16 :goto_f9

    .line 184
    :cond_186
    iput v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->sessionstatus:I

    .line 185
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->fullScreens:Z

    if-eqz v0, :cond_194

    .line 186
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->showHfaPrlFumoProgressWindow()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->moveToHfaPrlFumoDldProgressWindow()V

    goto/16 :goto_f9

    .line 189
    :cond_194
    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->showDialog(I)V

    goto/16 :goto_f9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const v10, 0x1080027

    const v9, 0x7f050009

    const/4 v8, 0x1

    const v7, 0x7f050016

    const/4 v6, 0x0

    .line 264
    const-string v3, "FirmwareUpdate"

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

    .line 265
    new-instance v2, Lcom/samsung/fumo/FirmwareUpdate$3;

    invoke-direct {v2, p0}, Lcom/samsung/fumo/FirmwareUpdate$3;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 289
    .local v2, keylistner:Landroid/content/DialogInterface$OnKeyListener;
    packed-switch p1, :pswitch_data_288

    .line 488
    const/4 v3, 0x0

    :goto_2c
    return-object v3

    .line 291
    :pswitch_2d
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;-><init>(Lcom/samsung/fumo/FirmwareUpdate;Landroid/content/Context;)V

    .line 292
    .local v0, dialog:Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;
    const v3, 0x7f050037

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v0, v8}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setProgressStyle(I)V

    .line 294
    invoke-virtual {v0, v8}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setIndeterminate(Z)V

    .line 295
    invoke-virtual {v0, v8}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setCancelable(Z)V

    .line 296
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 297
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$4;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$4;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v0, v3, v4}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 306
    iget v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->max:I

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMax(I)V

    .line 307
    iget v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->current:I

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setProgress(I)V

    .line 308
    invoke-virtual {v0, v2}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 310
    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 311
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto :goto_2c

    .line 314
    .end local v0           #dialog:Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;
    :pswitch_6b
    new-instance v0, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;-><init>(Lcom/samsung/fumo/FirmwareUpdate;Landroid/content/Context;)V

    .line 315
    .restart local v0       #dialog:Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;
    iget-boolean v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->cifumo_after_gota:Z

    if-ne v3, v8, :cond_ab

    .line 316
    const v3, 0x7f050044

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    :goto_7e
    invoke-virtual {v0, v8}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setIndeterminate(Z)V

    .line 325
    invoke-virtual {v0, v8}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setCancelable(Z)V

    .line 326
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isInRestrictLockMode()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 328
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$5;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$5;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v0, v3, v4}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 341
    :cond_a0
    invoke-virtual {v0, v2}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 342
    invoke-virtual {v0, v6}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setCanceledOnTouchOutside(Z)V

    .line 344
    iput-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 345
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto :goto_2c

    .line 318
    :cond_ab
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    sget-boolean v3, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v3, :cond_bc

    .line 319
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_7e

    .line 321
    :cond_bc
    const v3, 0x7f050035

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_7e

    .line 349
    .end local v0           #dialog:Lcom/samsung/fumo/FirmwareUpdate$DownloadDialog;
    :pswitch_c7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080020

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050034

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$6;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$6;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 364
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 365
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 366
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 368
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 372
    :pswitch_106
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050036

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$7;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$7;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 386
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 387
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 388
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 389
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 393
    :pswitch_145
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050043

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$8;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$8;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 404
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 406
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 407
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 411
    :pswitch_184
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050068

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$9;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$9;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 424
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 425
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 426
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 427
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 430
    :pswitch_1c0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f050069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05003e

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$10;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$10;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 443
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 445
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 446
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 449
    :pswitch_1ff
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f05003f

    invoke-virtual {p0, v4}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$11;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$11;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 462
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 464
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 465
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 468
    :pswitch_23b
    const v3, 0x7f050040

    invoke-virtual {p0, v3}, Lcom/samsung/fumo/FirmwareUpdate;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, errStr:Ljava/lang/String;
    const-string v3, "###"

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    iget v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->errCode:I

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050069

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/fumo/FirmwareUpdate$12;

    invoke-direct {v4, p0}, Lcom/samsung/fumo/FirmwareUpdate$12;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    .line 482
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/fumo/FirmwareUpdate;->mOnDlgDismiss:Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 483
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 484
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 485
    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 289
    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_106
        :pswitch_2d
        :pswitch_c7
        :pswitch_184
        :pswitch_1c0
        :pswitch_1ff
        :pswitch_23b
        :pswitch_145
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 948
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 949
    const-string v0, "FirmwareUpdate"

    const-string v1, "onDestroy ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 256
    const-string v0, "FirmwareUpdate"

    const-string v1, "onPause ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    const-string v0, "FirmwareUpdate"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/samsung/fumo/FirmwareUpdate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 937
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 938
    iget-boolean v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->freshActivity:Z

    if-nez v0, :cond_c

    .line 941
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate;->previousActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 943
    :cond_c
    const-string v0, "FirmwareUpdate"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 857
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 858
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********** onUserLeaveHint() ishomeScreenLaunched() ********** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->ishomeScreenLaunched()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 903
    :cond_49
    :goto_49
    return-void

    .line 889
    :cond_4a
    new-array v0, v5, [Landroid/content/Intent;

    .line 890
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 891
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 895
    iput-boolean v5, p0, Lcom/samsung/fumo/FirmwareUpdate;->homekeyevent:Z

    .line 896
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->cancelSession()V

    .line 897
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    if-nez v1, :cond_78

    .line 898
    invoke-direct {p0}, Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V

    goto :goto_49

    .line 900
    :cond_78
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_49
.end method

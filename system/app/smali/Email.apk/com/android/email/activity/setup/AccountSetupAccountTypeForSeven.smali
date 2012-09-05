.class public Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;
    }
.end annotation


# instance fields
.field public KEY_STAGE:Ljava/lang/String;

.field private accountEMail:Ljava/lang/String;

.field private imapButton:Landroid/widget/Button;

.field private isDefault:Ljava/lang/Boolean;

.field mConnector:Landroid/os/Bundle;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDuplicateAccountName:Ljava/lang/String;

.field mIsPop:Z

.field mIspName:Ljava/lang/String;

.field private mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

.field mStage:I

.field mUseSameSettings:Z

.field nextButton:Landroid/view/MenuItem;

.field private popButton:Landroid/widget/Button;

.field previousButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    .line 80
    const-string v0, "stage"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->KEY_STAGE:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    .line 90
    iput v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 1083
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showingPopupDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->stopConnectionTimeOut()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->checkDuplicationAccount()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->changePrefToPremiumConnector()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finishSetup(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method private addAccountForSeven()Z
    .registers 5

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->addAccount(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 785
    const/4 v1, 0x1

    :goto_10
    return v1

    .line 781
    :catch_11
    move-exception v0

    .line 782
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 783
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private checkDuplicationAccount()V
    .registers 3

    .prologue
    .line 789
    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 790
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 799
    :cond_d
    return-void
.end method

.method private finishSetup(II)V
    .registers 10
    .parameter "eMailAccountKey"
    .parameter "sevenAccountId"

    .prologue
    const/4 v5, 0x0

    .line 851
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->restoreAccountWithId(I)V

    .line 855
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;II)V

    .line 859
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 862
    .local v3, tempString:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 866
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setResult(I)V

    .line 867
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    .line 868
    return-void
.end method

.method private initCurrentStage()V
    .registers 18

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    packed-switch v14, :pswitch_data_2ea

    .line 479
    :goto_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v14, :cond_2d

    .line 480
    const v14, 0x7f100028

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 481
    .local v5, imapButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v14, 0x7f100027

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 484
    .local v8, popButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    .end local v5           #imapButton:Landroid/widget/Button;
    .end local v8           #popButton:Landroid/widget/Button;
    :cond_2d
    return-void

    .line 291
    :pswitch_2e
    const v14, 0x7f040010

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    .line 293
    const v14, 0x7f100027

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->popButton:Landroid/widget/Button;

    .line 294
    const v14, 0x7f100028

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->imapButton:Landroid/widget/Button;

    .line 296
    const v14, 0x7f10002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 297
    .local v4, desc:Landroid/widget/TextView;
    sget-object v14, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_ISP_MATCH:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v14}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v14

    invoke-static {v14}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, text:Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 302
    .end local v4           #desc:Landroid/widget/TextView;
    .end local v12           #text:Ljava/lang/String;
    :pswitch_6d
    const v14, 0x7f04001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v14, :cond_14a

    const v14, 0x7f100054

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0800e2

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :goto_8c
    const v14, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 306
    .local v11, server:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v14, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 309
    .local v9, portIn:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v14, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 312
    .local v2, checkSSL:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 331
    const v14, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 332
    .local v1, checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v14, :cond_15d

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7

    .line 304
    .end local v1           #checkAuth:Landroid/widget/CheckBox;
    .end local v2           #checkSSL:Landroid/widget/CheckBox;
    .end local v9           #portIn:Landroid/widget/EditText;
    .end local v11           #server:Landroid/widget/EditText;
    :cond_14a
    const v14, 0x7f100054

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0800e3

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8c

    .line 337
    .restart local v1       #checkAuth:Landroid/widget/CheckBox;
    .restart local v2       #checkSSL:Landroid/widget/CheckBox;
    .restart local v9       #portIn:Landroid/widget/EditText;
    .restart local v11       #server:Landroid/widget/EditText;
    :cond_15d
    const v14, 0x7f10006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 342
    .end local v1           #checkAuth:Landroid/widget/CheckBox;
    .end local v2           #checkSSL:Landroid/widget/CheckBox;
    .end local v9           #portIn:Landroid/widget/EditText;
    .end local v11           #server:Landroid/widget/EditText;
    :pswitch_16d
    const v14, 0x7f040024

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    .line 343
    const v14, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 344
    .restart local v11       #server:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v14, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 347
    .local v10, portOut:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const v14, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 350
    .restart local v2       #checkSSL:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 352
    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    const v14, 0x7f1000a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 363
    .local v6, layout:Landroid/widget/LinearLayout;
    const v14, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 365
    .restart local v1       #checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 388
    const v14, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 389
    .local v3, checkSameSettings:Landroid/widget/CheckBox;
    const v14, 0x7f1000ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 390
    .local v13, username:Landroid/widget/EditText;
    const v14, 0x7f1000af

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 392
    .local v7, password:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 393
    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 408
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-eqz v14, :cond_29e

    .line 409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v15, "username"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v15, "password"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :goto_292
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_2e7

    const/4 v14, 0x0

    :goto_299
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 414
    :cond_29e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 419
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_292

    .line 421
    :cond_2e7
    const/16 v14, 0x8

    goto :goto_299

    .line 289
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_6d
        :pswitch_16d
    .end packed-switch
.end method

.method private onNext()V
    .registers 18

    .prologue
    .line 506
    const/4 v13, 0x0

    .line 511
    .local v13, server:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d0

    .line 512
    const v1, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #server:Landroid/widget/EditText;
    check-cast v13, Landroid/widget/EditText;

    .line 513
    .restart local v13       #server:Landroid/widget/EditText;
    const v1, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 514
    .local v11, portIn:Landroid/widget/EditText;
    const v1, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 515
    .local v9, checkSSL:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v1, :cond_c2

    .line 522
    const v1, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 523
    .local v8, checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    .end local v8           #checkAuth:Landroid/widget/CheckBox;
    :cond_c2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    .line 619
    .end local v9           #checkSSL:Landroid/widget/CheckBox;
    .end local v11           #portIn:Landroid/widget/EditText;
    :cond_cf
    :goto_cf
    return-void

    .line 528
    :cond_d0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_cf

    .line 529
    const v1, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #server:Landroid/widget/EditText;
    check-cast v13, Landroid/widget/EditText;

    .line 530
    .restart local v13       #server:Landroid/widget/EditText;
    const v1, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 531
    .local v12, portOut:Landroid/widget/EditText;
    const v1, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 532
    .restart local v9       #checkSSL:Landroid/widget/CheckBox;
    const v1, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 534
    .restart local v8       #checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_208

    .line 543
    const v1, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    .line 544
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-nez v1, :cond_208

    .line 545
    const v1, 0x7f1000ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 546
    .local v15, username:Landroid/widget/EditText;
    const v1, 0x7f1000af

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 547
    .local v10, password:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .end local v10           #password:Landroid/widget/EditText;
    .end local v15           #username:Landroid/widget/EditText;
    :cond_208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 559
    move-object/from16 v0, p0

    iget v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b5

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    .line 561
    .local v14, sevenAccountId:I
    const/4 v1, -0x1

    if-ne v14, v1, :cond_250

    .line 562
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->startConnectionTimeOut()V

    goto/16 :goto_cf

    .line 566
    :cond_250
    const/4 v7, 0x0

    .line 568
    .local v7, c:Landroid/database/Cursor;
    :try_start_251
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "sevenAccountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 573
    if-eqz v7, :cond_29d

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_29d

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v14, v0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_28f
    .catchall {:try_start_251 .. :try_end_28f} :catchall_296

    .line 592
    if-eqz v7, :cond_cf

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_cf

    .line 592
    :catchall_296
    move-exception v1

    if-eqz v7, :cond_29c

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 592
    :cond_29c
    throw v1

    :cond_29d
    if-eqz v7, :cond_2a2

    .line 593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_2a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 600
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto/16 :goto_cf

    .line 603
    .end local v7           #c:Landroid/database/Cursor;
    .end local v14           #sevenAccountId:I
    :cond_2b5
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_cf
.end method

.method private restoreAccountWithId(I)V
    .registers 5
    .parameter "accountid"

    .prologue
    .line 871
    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 873
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 874
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 876
    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 877
    return-void
.end method

.method private setIncomingServerType(Z)V
    .registers 8
    .parameter "isPopType"

    .prologue
    .line 629
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, email:Ljava/lang/String;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, domain:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_75

    const-string v2, "pop."

    :goto_34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_78

    const/16 v2, 0x6e

    :goto_63
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void

    .line 631
    :cond_75
    const-string v2, "imap."

    goto :goto_34

    .line 633
    :cond_78
    const/16 v2, 0x8f

    goto :goto_63
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 20
    .parameter "arg0"

    .prologue
    .line 639
    const/4 v14, 0x0

    .line 643
    .local v14, server:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v1, :cond_5e

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f100027

    if-ne v1, v2, :cond_5a

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "isp_type"

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v1, :cond_5c

    const/4 v1, 0x2

    :goto_22
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 648
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setIncomingServerType(Z)V

    .line 765
    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_59

    .line 768
    if-eqz v14, :cond_49

    .line 769
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 770
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v14}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 772
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_49
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 773
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->invalidateOptionsMenu()V

    .line 776
    :cond_59
    :goto_59
    return-void

    .line 644
    :cond_5a
    const/4 v1, 0x0

    goto :goto_11

    .line 645
    :cond_5c
    const/4 v1, 0x3

    goto :goto_22

    .line 649
    :cond_5e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_121

    .line 650
    const v1, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #server:Landroid/widget/EditText;
    check-cast v14, Landroid/widget/EditText;

    .line 651
    .restart local v14       #server:Landroid/widget/EditText;
    const v1, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 652
    .local v12, portIn:Landroid/widget/EditText;
    const v1, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 653
    .local v9, checkSSL:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v1, :cond_2e

    .line 660
    const v1, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 661
    .local v8, checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2e

    .line 664
    .end local v8           #checkAuth:Landroid/widget/CheckBox;
    .end local v9           #checkSSL:Landroid/widget/CheckBox;
    .end local v12           #portIn:Landroid/widget/EditText;
    :cond_121
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25b

    .line 665
    const v1, 0x7f10006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #server:Landroid/widget/EditText;
    check-cast v14, Landroid/widget/EditText;

    .line 666
    .restart local v14       #server:Landroid/widget/EditText;
    const v1, 0x7f10006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 667
    .local v13, portOut:Landroid/widget/EditText;
    const v1, 0x7f10006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 668
    .restart local v9       #checkSSL:Landroid/widget/CheckBox;
    const v1, 0x7f100070

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 670
    .restart local v8       #checkAuth:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 679
    const v1, 0x7f1000ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    .line 680
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-nez v1, :cond_2e

    .line 681
    const v1, 0x7f1000ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 682
    .local v16, username:Landroid/widget/EditText;
    const v1, 0x7f1000af

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 683
    .local v11, password:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 689
    .end local v8           #checkAuth:Landroid/widget/CheckBox;
    .end local v9           #checkSSL:Landroid/widget/CheckBox;
    .end local v11           #password:Landroid/widget/EditText;
    .end local v13           #portOut:Landroid/widget/EditText;
    .end local v16           #username:Landroid/widget/EditText;
    :cond_25b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 699
    move-object/from16 v0, p0

    iget v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30f

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 701
    .local v15, sevenAccountId:I
    const/4 v1, -0x1

    if-ne v15, v1, :cond_2aa

    .line 702
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->startConnectionTimeOut()V

    goto/16 :goto_59

    .line 706
    :cond_2aa
    const/4 v7, 0x0

    .line 708
    .local v7, c:Landroid/database/Cursor;
    :try_start_2ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "sevenAccountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 713
    if-eqz v7, :cond_2f7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2f7

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v15, v0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2e9
    .catchall {:try_start_2ab .. :try_end_2e9} :catchall_2f0

    .line 732
    if-eqz v7, :cond_59

    .line 733
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_59

    .line 732
    :catchall_2f0
    move-exception v1

    if-eqz v7, :cond_2f6

    .line 733
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_2f6
    throw v1

    :cond_2f7
    if-eqz v7, :cond_2fc

    .line 733
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_2fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    .line 746
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto/16 :goto_59

    .line 749
    .end local v7           #c:Landroid/database/Cursor;
    .end local v15           #sevenAccountId:I
    :cond_30f
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_2e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const v3, 0x7f0c0177

    .line 261
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->popButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    .local v1, popButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->imapButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .local v0, imapButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_22

    .line 269
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    :cond_22
    if-eqz v0, :cond_2e

    .line 273
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    :cond_2e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->popButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->imapButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 134
    .local v0, actionBar:Landroid/app/ActionBar;
    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 136
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    .line 137
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 138
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "_connector"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIspName:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, domain:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "is_default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->isDefault:Ljava/lang/Boolean;

    .line 146
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "25"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v2, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_160

    const-string v2, "pop."

    :goto_fe
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v2, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_163

    const/16 v2, 0x6e

    :goto_11b
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v4, "isp_type"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_166

    const/4 v2, 0x2

    :goto_12b
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    iget-object v3, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    .line 173
    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 177
    new-instance v2, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;)V

    invoke-direct {v2, v3, v4}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 179
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v2, v3}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 181
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setResult(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    .line 183
    return-void

    .line 162
    :cond_160
    const-string v2, "imap."

    goto :goto_fe

    .line 164
    :cond_163
    const/16 v2, 0x8f

    goto :goto_11b

    .line 167
    :cond_166
    const/4 v2, 0x3

    goto :goto_12b
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 803
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    .line 804
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$10;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 816
    :goto_39
    return-object v0

    :cond_3a
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_39
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 221
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v0, :cond_13

    .line 222
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_13
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_11
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 210
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 214
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 215
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onDestroy()V

    .line 216
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 833
    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    .line 834
    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-le v1, v0, :cond_12

    .line 835
    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 837
    :try_start_e
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_18

    .line 847
    :goto_11
    return v0

    .line 843
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_11

    .line 847
    :cond_16
    const/4 v0, 0x0

    goto :goto_11

    .line 838
    :catch_18
    move-exception v1

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_26

    .line 254
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 256
    :goto_b
    return v0

    .line 242
    :sswitch_c
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v0, :cond_15

    .line 243
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    .line 256
    :goto_13
    const/4 v0, 0x1

    goto :goto_b

    .line 245
    :cond_15
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    .line 246
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    .line 247
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->invalidateOptionsMenu()V

    goto :goto_13

    .line 251
    :sswitch_22
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onNext()V

    goto :goto_13

    .line 240
    :sswitch_data_26
    .sparse-switch
        0x7f10002d -> :sswitch_22
        0x7f1002e6 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    .line 198
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 8
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 821
    packed-switch p1, :pswitch_data_1e

    .line 830
    :cond_3
    :goto_3
    return-void

    .line 823
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 824
    check-cast v0, Landroid/app/AlertDialog;

    .line 825
    .local v0, alert:Landroid/app/AlertDialog;
    const v1, 0x7f0800d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 821
    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 232
    const v0, 0x7f1002e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->previousButton:Landroid/view/MenuItem;

    .line 233
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-eqz v0, :cond_16

    .line 234
    const v0, 0x7f10002d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->nextButton:Landroid/view/MenuItem;

    .line 235
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    .line 193
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStart()V

    .line 188
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStop()V

    .line 203
    return-void
.end method

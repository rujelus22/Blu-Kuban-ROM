.class public Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;


# instance fields
.field private accountId:J

.field mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mOffPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mPeakScheduleSpinner:Landroid/widget/Spinner;

.field private mSevenAccountKey:I

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;

.field private sso_id:Ljava/lang/String;

.field private sso_isp:Ljava/lang/String;

.field private sso_pw:Ljava/lang/String;

.field private zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    .line 490
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Lcom/digc/seven/Z7MailHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->optionsComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;I[Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;

    return-object v0
.end method

.method public static actionOptions(Landroid/app/Activity;II)V
    .registers 9
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "sevenAccountId"

    .prologue
    const/4 v3, 0x0

    .line 119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "account_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v1, "seven_account_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "SSO_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "SSO_PW"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "SSO_ISP"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method private enableSyncWindowSpinner()V
    .registers 16

    .prologue
    .line 593
    const v11, 0x7f100080

    invoke-virtual {p0, v11}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 594
    const v11, 0x7f100083

    invoke-virtual {p0, v11}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 595
    const v11, 0x7f100086

    invoke-virtual {p0, v11}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 597
    move-object v0, p0

    .line 598
    .local v0, context:Landroid/content/Context;
    const/4 v11, 0x2

    new-array v4, v11, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x0

    new-instance v12, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f0803b0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v4, v11

    const/4 v11, 0x1

    new-instance v12, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0x7f0803af

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v12, v4, v11

    .line 603
    .local v4, peakTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v3, p0, v11, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 605
    .local v3, peakTypeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v11, 0x1090009

    invoke-virtual {v3, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 607
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 608
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 610
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v12, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 611
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v12, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 614
    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, salesCode:Ljava/lang/String;
    const-string v11, "ORA"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "FTM"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "ORO"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "ONE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "AMN"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ad

    const-string v11, "IDE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 618
    :cond_ad
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 622
    :cond_b3
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0010

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 624
    .local v10, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 628
    .local v7, windowEntries:[Ljava/lang/CharSequence;
    array-length v11, v7

    new-array v8, v11, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 629
    .local v8, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v1, -0x1

    .line 630
    .local v1, defaultIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_ce
    array-length v11, v7

    if-ge v2, v11, :cond_fd

    .line 631
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 632
    .local v6, value:I
    new-instance v11, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget-object v13, v7, v2

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v11, v8, v2

    .line 633
    int-to-long v11, v6

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_fa

    .line 634
    move v1, v2

    .line 630
    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 638
    .end local v6           #value:I
    :cond_fd
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    invoke-direct {v9, p0, v11, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 640
    .local v9, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v11, 0x1090009

    invoke-virtual {v9, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 641
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v11, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 643
    if-ltz v1, :cond_117

    .line 644
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v11, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 646
    :cond_117
    return-void
.end method

.method private onDone()V
    .registers 15

    .prologue
    .line 324
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 327
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    .local v0, amountToSync:I
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 329
    .local v9, peak:I
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v10, v10, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 331
    .local v8, offPeak:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v3, changedSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    int-to-long v12, v0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_52

    .line 334
    const-string v10, "pref_truc_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_52
    if-nez v9, :cond_11f

    if-nez v8, :cond_11f

    .line 338
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :goto_70
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    int-to-long v11, v0

    iput-wide v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 349
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v9, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    .line 350
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v8, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    .line 351
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setShowImage(Z)V

    .line 353
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, calendar:Z
    const/4 v4, 0x0

    .line 359
    .local v4, contacts:Z
    :try_start_8b
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    if-eqz v10, :cond_ac

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 360
    const/4 v4, 0x1

    .line 361
    const-string v10, "checkbox_sync_contacts"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    const/16 v12, 0x102

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/digc/seven/Z7MailHandler;->setServiceState(III)I

    .line 370
    :cond_ac
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    if-eqz v10, :cond_cd

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 371
    const/4 v1, 0x1

    .line 372
    const-string v10, "checkbox_sync_calendar"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    const/16 v12, 0x101

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/digc/seven/Z7MailHandler;->setServiceState(III)I
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_cd} :catch_15d

    .line 401
    :cond_cd
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e0

    .line 402
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    invoke-direct {v11, p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;Ljava/util/HashMap;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 435
    :cond_e0
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {p0, v10}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSyncSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 438
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 441
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v10

    and-int/lit16 v7, v10, -0x102

    .line 444
    .local v7, newFlags:I
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_102

    .line 445
    or-int/lit8 v7, v7, 0x1

    .line 447
    :cond_102
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 452
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 454
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v10}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 462
    move v2, v1

    .line 463
    .local v2, calendar2:Z
    move v5, v4

    .line 474
    .local v5, contacts2:Z
    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {v10}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 484
    .end local v2           #calendar2:Z
    .end local v5           #contacts2:Z
    .end local v7           #newFlags:I
    :goto_11e
    return-void

    .line 340
    .end local v1           #calendar:Z
    .end local v4           #contacts:Z
    :cond_11f
    const/4 v10, 0x1

    if-ne v9, v10, :cond_141

    const/4 v10, 0x1

    if-ne v8, v10, :cond_141

    .line 341
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_70

    .line 344
    :cond_141
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->PEAK_TIME_KEYS:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_70

    .line 378
    .restart local v1       #calendar:Z
    .restart local v4       #contacts:Z
    :catch_15d
    move-exception v6

    .line 379
    .local v6, e:Landroid/os/RemoteException;
    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    new-instance v11, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;

    invoke-direct {v11, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {p0, v6, v10, v11}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_11e
.end method

.method private optionsComplete()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 542
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 544
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_d

    .line 545
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 546
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 551
    :cond_d
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->setResult(I)V

    .line 552
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    .line 553
    return-void
.end method

.method private saveAccountAndFinish()V
    .registers 2

    .prologue
    .line 569
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$7;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 585
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .registers 4
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 518
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$6;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 282
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 284
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_10

    .line 285
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 288
    :cond_10
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 289
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V

    .line 561
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    .line 650
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onBackPressed()V

    .line 651
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 314
    :cond_7
    :goto_7
    return-void

    .line 304
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    if-nez v0, :cond_7

    .line 305
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDonePressed:Z

    goto :goto_7

    .line 296
    nop

    :pswitch_data_14
    .packed-switch 0x7f10002d
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    const v2, 0x7f10002d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 265
    .local v0, nextButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .local v1, nextButtonLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_24

    .line 269
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    :cond_24
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v8, 0x8

    .line 177
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, i:Landroid/content/Intent;
    const-string v3, "account_key"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->accountId:J

    .line 181
    const-string v3, "seven_account_key"

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    .line 183
    const-string v3, "SSO_ID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_id:Ljava/lang/String;

    .line 184
    const-string v3, "SSO_PW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_pw:Ljava/lang/String;

    .line 185
    const-string v3, "SSO_ISP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->sso_isp:Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 188
    const v3, 0x7f040020

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->setContentView(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 194
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 196
    :try_start_4a
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_50} :catch_176

    .line 201
    :goto_50
    const v3, 0x7f100088

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncWindowView:Landroid/widget/Spinner;

    .line 202
    const v3, 0x7f100082

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 203
    const v3, 0x7f100085

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mOffPeakScheduleSpinner:Landroid/widget/Spinner;

    .line 204
    const v3, 0x7f100043

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    .line 205
    const v3, 0x7f100090

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    .line 207
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSevenAccountKey:I

    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountName(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, ispName:Ljava/lang/String;
    const-string v3, "yahoo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "msn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    :cond_a7
    const-string v3, "FEATURE_JPN_DCM_EMAIL"

    invoke-static {v3}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f5

    .line 215
    const v3, 0x7f100095

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v3, 0x7f100096

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 217
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const-string v3, "yahoo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 221
    const v3, 0x7f100098

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    const v3, 0x7f100099

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 223
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_f5
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->enableSyncWindowSpinner()V

    .line 234
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-nez v3, :cond_104

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 235
    :cond_104
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    :cond_109
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNotifyView:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_181

    move v3, v4

    :goto_116
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    const v3, 0x7f10007d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const v3, 0x7f100089

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const v3, 0x7f10008c

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const v3, 0x7f100092

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v3, 0x7f1000a1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v3, 0x7f10009e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAutoSetup()Z

    move-result v3

    if-nez v3, :cond_162

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_165

    .line 250
    :cond_162
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V

    .line 253
    :cond_165
    const v3, 0x7f10002d

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNextButton:Landroid/widget/Button;

    .line 254
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void

    .line 197
    .end local v2           #ispName:Ljava/lang/String;
    :catch_176
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NullPointerException;
    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->accountId:J

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    goto/16 :goto_50

    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #ispName:Ljava/lang/String;
    :cond_181
    move v3, v5

    .line 237
    goto :goto_116
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 142
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 144
    :goto_b
    return v0

    .line 139
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onBackPressed()V

    .line 144
    const/4 v0, 0x1

    goto :goto_b

    .line 137
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 164
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 168
    :cond_14
    return-void
.end method

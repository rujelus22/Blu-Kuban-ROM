.class public Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;
.super Landroid/app/ListActivity;
.source "AccountSetupBasicsChoiceProviderForKOR.java"


# static fields
.field public static final mProviderDomains:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProvidersForLGT:[Ljava/lang/String;

.field private static final mProvidersForSKT:[Ljava/lang/String;


# instance fields
.field private final ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

.field private mReportAccountAuthenticatorError:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProviderDomains:Ljava/util/HashMap;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NATE"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Hotmail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hotmail"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForLGT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 26
    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 29
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_14

    .line 30
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 32
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_14

    .line 33
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 37
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_14
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 38
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    .line 108
    .local v2, flowMode:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    .line 167
    :cond_e
    :goto_e
    return-void

    .line 112
    :cond_f
    const/4 v4, 0x6

    if-ne v2, v4, :cond_39

    .line 113
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 114
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_39

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_39

    .line 115
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 116
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 121
    :goto_2f
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    goto :goto_e

    .line 119
    :cond_33
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_2f

    .line 138
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SHV-E120K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_7a

    .line 144
    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForLGT:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    :goto_51
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 162
    .local v1, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 163
    if-eqz v1, :cond_e

    .line 164
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    goto :goto_e

    .line 151
    .end local v1           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_7a
    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_51
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 173
    long-to-int v1, p4

    .line 175
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 179
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 190
    :goto_1d
    return-void

    .line 182
    :cond_1e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v2, "ProviderChoiceAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "ProviderChoiceData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v0, "accountAuthenticatorResponse"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 86
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 87
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 88
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 89
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 90
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    .line 96
    :goto_25
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    .line 101
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_28
    return-void

    .line 93
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_29
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_25
.end method

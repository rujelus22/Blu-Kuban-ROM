.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
    }
.end annotation


# static fields
.field private static final PROFILE_URI:Landroid/net/Uri;


# instance fields
.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->PROFILE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method private finishActivity()V
    .registers 4

    .prologue
    .line 193
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    if-eqz v1, :cond_d

    .line 194
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    .line 205
    :goto_9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 206
    return-void

    .line 196
    :cond_d
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 197
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_19

    .line 198
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_9

    .line 202
    :cond_19
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_9
.end method

.method private onNext()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 217
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->setDisplayName(Ljava/lang/String;)V

    .line 221
    :cond_21
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/Account;->setSenderName(Ljava/lang/String;)V

    .line 226
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/Account;)V

    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method private prefillNameFromProfile()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 136
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupNames$2;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/AccountSetupNames$2;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSetupNames$2;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 150
    return-void
.end method

.method private validateFields()V
    .registers 5

    .prologue
    .line 168
    const/4 v0, 0x1

    .line 170
    .local v0, enableNextButton:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v2, :cond_26

    .line 171
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 173
    const/4 v0, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f0800c2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 179
    .end local v1           #userName:Ljava/lang/String;
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    return-void

    .line 176
    .restart local v1       #userName:Ljava/lang/String;
    :cond_2c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_26
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_c

    .line 293
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    return-void

    .line 291
    :pswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    goto :goto_3

    .line 289
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finishActivity()V

    .line 190
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 162
    :goto_7
    return-void

    .line 159
    :pswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_7

    .line 157
    :pswitch_data_c
    .packed-switch 0x7f0e0010
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x4

    .line 67
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 69
    const v5, 0x7f04000e

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 70
    const v5, 0x7f0e0027

    invoke-static {p0, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 71
    const v5, 0x7f0e0029

    invoke-static {p0, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 72
    const v5, 0x7f0e0028

    invoke-static {p0, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, accountNameLabel:Landroid/view/View;
    const v5, 0x7f0e0010

    invoke-static {p0, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    .line 74
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 90
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v6, 0x0

    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 93
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 94
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_61

    .line 95
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unexpected null account"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_61
    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v5, :cond_6d

    .line 98
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unexpected null hostauth"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_6d
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    .line 102
    .local v3, flowMode:I
    if-eq v3, v8, :cond_85

    if-eq v3, v9, :cond_85

    .line 104
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 105
    .local v1, accountEmail:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 112
    .end local v1           #accountEmail:Ljava/lang/String;
    :cond_85
    const-string v5, "eas"

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 113
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-eqz v5, :cond_a6

    .line 114
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 115
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_9d
    :goto_9d
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    .line 130
    if-ne v3, v8, :cond_a5

    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    .line 133
    :cond_a5
    return-void

    .line 117
    :cond_a6
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b8

    .line 118
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 119
    :cond_b8
    if-eq v3, v8, :cond_9d

    if-eq v3, v9, :cond_9d

    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V

    goto :goto_9d
.end method

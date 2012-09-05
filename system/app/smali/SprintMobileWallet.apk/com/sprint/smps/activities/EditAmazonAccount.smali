.class public Lcom/sprint/smps/activities/EditAmazonAccount;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "EditAmazonAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Edit Amazon Account"

.field private static parentActivity:Lcom/sprint/smps/activities/EditAmazonAccount;


# instance fields
.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/sprint/smps/activities/EditAmazonAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/EditAmazonAccount;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/EditAmazonAccount;->parentActivity:Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z

    .line 37
    sput-object p0, Lcom/sprint/smps/activities/EditAmazonAccount;->parentActivity:Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 38
    const-string v0, "Edit Amazon Account"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/EditAmazonAccount;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sprint/smps/activities/EditAmazonAccount;->parentActivity:Lcom/sprint/smps/activities/EditAmazonAccount;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/EditAmazonAccount;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/EditAmazonAccount;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/EditAmazonAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/EditAmazonAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private savePaymentAccount()V
    .registers 3

    .prologue
    .line 128
    new-instance v0, Lcom/sprint/smps/activities/EditAmazonAccount$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/EditAmazonAccount$2;-><init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V

    .line 147
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/EditAmazonAccount$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditAmazonAccount$4;-><init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 195
    return-void
.end method

.method private validateData(Ljava/lang/String;)Z
    .registers 3
    .parameter "acctNickName"

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->errorMessage:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->viewToHaveFocus:Landroid/view/View;

    .line 118
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 119
    :cond_d
    const-string v0, "Account nickname must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->errorMessage:Ljava/lang/String;

    .line 120
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->viewToHaveFocus:Landroid/view/View;

    .line 123
    :cond_1c
    iget-object v0, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 97
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f08001e

    if-ne v2, v3, :cond_2d

    .line 100
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, acctNickName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->validateData(Ljava/lang/String;)Z

    move-result v1

    .line 102
    .local v1, valid:Z
    if-eqz v1, :cond_2e

    .line 104
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->showDialog(I)V

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->successful:Z

    .line 106
    invoke-direct {p0}, Lcom/sprint/smps/activities/EditAmazonAccount;->savePaymentAccount()V

    .line 111
    .end local v0           #acctNickName:Ljava/lang/String;
    .end local v1           #valid:Z
    :cond_2d
    :goto_2d
    return-void

    .line 109
    .restart local v0       #acctNickName:Ljava/lang/String;
    .restart local v1       #valid:Z
    :cond_2e
    const-string v2, "Payment Account"

    iget-object v3, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->errorMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/smps/activities/EditAmazonAccount;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v2, v3, p0, v4}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080008

    const/4 v4, 0x7

    .line 44
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 46
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/EditAmazonAccount;->requestWindowFeature(I)Z

    .line 47
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->setContentView(I)V

    .line 49
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Edit Amazon Account"

    invoke-virtual {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sprint/smps/activities/EditAmazonAccount;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 52
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060030

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/EditAmazonAccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v1, Lcom/sprint/smps/activities/EditAmazonAccount$1;

    invoke-direct {v1, p0}, Lcom/sprint/smps/activities/EditAmazonAccount$1;-><init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V

    .line 60
    .local v1, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    const v2, 0x7f08001e

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget-object v2, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    if-eqz v2, :cond_72

    .line 67
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/EditAmazonAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_72
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 71
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 156
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 157
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, changing payment account..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    new-instance v2, Lcom/sprint/smps/activities/EditAmazonAccount$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/EditAmazonAccount$3;-><init>(Lcom/sprint/smps/activities/EditAmazonAccount;)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    move-object v0, v1

    .line 176
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 76
    const-string v0, "Edit Amazon Account"

    invoke-static {v0}, Lcom/sprint/smps/activities/EditAmazonAccount;->dismissActivity(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 81
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 82
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 83
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 88
    if-eqz p1, :cond_8

    .line 90
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 91
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 93
    :cond_8
    return-void
.end method

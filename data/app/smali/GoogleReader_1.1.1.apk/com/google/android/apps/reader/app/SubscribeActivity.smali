.class public Lcom/google/android/apps/reader/app/SubscribeActivity;
.super Landroid/app/Activity;
.source "SubscribeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR:I = 0x2

.field private static final DIALOG_PROGRESS:I = 0x1

.field private static final DIALOG_WEBFEED_CONFIRMATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SubscribeActivity"

.field private static final WEBFEED_HELP_URI:Landroid/net/Uri;


# instance fields
.field private mSearch:Landroid/widget/EditText;

.field private mService:Landroid/widget/Spinner;

.field private mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

.field private mTopic:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "http://www.google.com/support/reader/bin/answer.py?answer=172963"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/app/SubscribeActivity;->WEBFEED_HELP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/app/SubscribeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->cancelTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/SubscribeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showWebfeedHelp()V

    return-void
.end method

.method private addSearchFeed()V
    .registers 8

    .prologue
    .line 160
    iget-object v4, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 162
    iget-object v4, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, topic:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mService:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;

    .line 164
    .local v1, service:Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;->getUrlPattern()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, pattern:Ljava/lang/String;
    const-string v4, "%1"

    const-string v5, "%s"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, url:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->startQuickAdd(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private addSubscription()V
    .registers 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, url:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->startQuickAdd(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private cancelTask()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->setCallback(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->cancel(Z)Z

    .line 317
    iput-object v2, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    .line 319
    :cond_12
    return-void
.end method

.method private createErrorDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 285
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 286
    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v1, 0x7f0d007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createProgressDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 270
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0d0043

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 273
    new-instance v1, Lcom/google/android/apps/reader/app/SubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$1;-><init>(Lcom/google/android/apps/reader/app/SubscribeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 279
    return-object v0
.end method

.method private createWebfeedConfirmationDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 294
    const v1, 0x7f0d007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v1, 0x7f0d0067

    new-instance v2, Lcom/google/android/apps/reader/app/SubscribeActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$2;-><init>(Lcom/google/android/apps/reader/app/SubscribeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 148
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 149
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method

.method private showWebfeedHelp()V
    .registers 4

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/apps/reader/app/SubscribeActivity;->WEBFEED_HELP_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method private startQuickAdd(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 172
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->quickAddUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-direct {v2, v1}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->setCallback(Ljava/lang/Runnable;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    new-array v2, v4, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->execute([Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    .line 177
    invoke-virtual {p0, v4}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showDialog(I)V

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 192
    :goto_7
    :pswitch_7
    return-void

    .line 186
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->addSubscription()V

    goto :goto_7

    .line 189
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->addSearchFeed()V

    goto :goto_7

    .line 184
    :pswitch_data_10
    .packed-switch 0x7f0b0027
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->setContentView(I)V

    .line 90
    const v3, 0x7f0b0026

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mSearch:Landroid/widget/EditText;

    .line 91
    const v3, 0x7f0b0028

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    .line 92
    const v3, 0x7f0b0029

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mService:Landroid/widget/Spinner;

    .line 94
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/google/android/apps/reader/res/ReaderResources;->getSearchServices(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, services:Ljava/util/List;,"Ljava/util/List<Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;>;"
    new-instance v0, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;

    invoke-direct {v0, v2}, Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;-><init>(Ljava/util/List;)V

    .line 100
    .local v0, adapter:Lcom/google/android/apps/reader/widget/ServiceSpinnerAdapter;
    iget-object v3, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mService:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    const v3, 0x7f0b0027

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v3, 0x7f0b002a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_18

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 258
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->createProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 260
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->createErrorDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 262
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->createWebfeedConfirmationDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 256
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    if-eqz v0, :cond_b

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->removeDialog(I)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->cancelTask()V

    .line 138
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mSearch:Landroid/widget/EditText;

    if-ne p1, v0, :cond_a

    .line 199
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->addSubscription()V

    move v0, v1

    .line 206
    :goto_9
    return v0

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1a

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTopic:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/apps/reader/util/SoftInput;->hide(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mService:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->requestFocus()Z

    move v0, v1

    .line 204
    goto :goto_9

    .line 206
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    if-eqz v0, :cond_20

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->setCallback(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_20

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showDialog(I)V

    .line 118
    :cond_20
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    if-eqz v1, :cond_10

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    .line 124
    .local v0, nonConfigurationInstance:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->setCallback(Ljava/lang/Runnable;)V

    .line 125
    iput-object v2, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    move-object v1, v0

    .line 128
    .end local v0           #nonConfigurationInstance:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;
    :goto_f
    return-object v1

    :cond_10
    move-object v1, v2

    goto :goto_f
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    if-nez v0, :cond_c

    .line 252
    :cond_b
    :goto_b
    return-void

    .line 218
    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/SubscribeActivity;->removeDialog(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;->getResult()Landroid/net/Uri;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_a8

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 225
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 227
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 228
    const-string v3, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "app_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    const-class v1, Lcom/google/android/apps/reader/app/FeedSearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    :goto_54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscribeActivity;->mTask:Lcom/google/android/apps/reader/app/SubscribeActivity$QuickAddTask;

    goto :goto_b

    .line 234
    :cond_58
    sget-object v2, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 235
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 237
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/reader/app/SubscribeActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 240
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showDialog(I)V

    goto :goto_54

    .line 242
    :cond_7b
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->getSubscriptionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    const v1, 0x7f0d002d

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/app/SubscribeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 246
    :cond_8f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected result type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_a8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/SubscribeActivity;->showDialog(I)V

    goto :goto_54
.end method

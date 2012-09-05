.class public Lcom/google/android/apps/plus/phone/ConversationListActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mIsResumed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/ConversationListActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/ConversationListActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mIsResumed:Z

    if-eqz v1, :cond_1a

    .line 340
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eq v1, p1, :cond_11

    .line 341
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 343
    :cond_11
    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eq v1, p1, :cond_1a

    .line 344
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 347
    :cond_1a
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 349
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    .line 352
    .local v0, fragment:Lcom/google/android/apps/plus/fragments/ConversationListFragment;
    if-eqz v0, :cond_2e

    .line 353
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 355
    :cond_2e
    return-void
.end method

.method private startNewConversation()V
    .registers 4

    .prologue
    .line 380
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_START_NEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private switchAccounts()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_15

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_e

    .line 363
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 365
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 366
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 369
    :cond_15
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getConversationListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    .line 374
    return-void
.end method

.method private viewUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 417
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATIONS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 402
    :goto_6
    return-void

    .line 396
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    goto :goto_6
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 323
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 324
    check-cast v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    .line 325
    .local v0, clf:Lcom/google/android/apps/plus/fragments/ConversationListFragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_10

    .line 326
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 329
    .end local v0           #clf:Lcom/google/android/apps/plus/fragments/ConversationListFragment;
    :cond_10
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d018b

    if-ne v0, v1, :cond_c

    .line 239
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startNewConversation()V

    .line 241
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f07005a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mIsResumed:Z

    .line 56
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 57
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_4c

    .line 58
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 59
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "reset_notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 71
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->resetNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 74
    :cond_2e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_50

    .line 75
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->showTitlebar(Z)V

    .line 77
    const v2, 0x7f020088

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 80
    const v2, 0x7f10000b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->createTitlebarButtons(I)V

    .line 86
    :goto_47
    return-void

    .line 62
    :cond_48
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->switchAccounts()V

    goto :goto_47

    .line 66
    :cond_4c
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->switchAccounts()V

    goto :goto_47

    .line 82
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 83
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_47
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v5, 0x1

    if-ne p1, v5, :cond_60

    .line 249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 251
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030023

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 253
    .local v3, groupRenameLayout:Landroid/view/View;
    const v5, 0x7f0d0086

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 255
    .local v1, conversationRenameInput:Landroid/widget/EditText;
    const v5, 0x7f070183

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070184

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/google/android/apps/plus/phone/ConversationListActivity$2;-><init>(Lcom/google/android/apps/plus/phone/ConversationListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070185

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/plus/phone/ConversationListActivity$1;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity$1;-><init>(Lcom/google/android/apps/plus/phone/ConversationListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 279
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/google/android/apps/plus/phone/ConversationListActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity$3;-><init>(Lcom/google/android/apps/plus/phone/ConversationListActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 301
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #conversationRenameInput:Landroid/widget/EditText;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #groupRenameLayout:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_60
    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_25

    .line 170
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 171
    .local v0, intentAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 172
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    .line 178
    .end local v0           #intentAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_24
    :goto_24
    return-void

    .line 176
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    goto :goto_24
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_32

    .line 226
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 204
    :sswitch_a
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 208
    :sswitch_10
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 213
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1a
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 214
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 218
    :sswitch_23
    const-string v2, "plus_messenger"

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->viewUri(Landroid/net/Uri;)V

    goto :goto_9

    .line 222
    :sswitch_2d
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startNewConversation()V

    goto :goto_9

    .line 202
    nop

    :sswitch_data_32
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01cf -> :sswitch_10
        0x7f0d01d0 -> :sswitch_1a
        0x7f0d01d1 -> :sswitch_23
        0x7f0d01d2 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mIsResumed:Z

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_f

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 161
    :cond_f
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 9
    .parameter "dialogId"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 309
    const/4 v3, 0x1

    if-ne p1, v3, :cond_35

    .line 310
    const v3, 0x7f0d0086

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 312
    .local v0, conversationRenameInput:Landroid/widget/EditText;
    const-string v3, "conversation_name"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 315
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 316
    const-string v3, "conversation_row_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 317
    .local v1, conversationRowId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 319
    .end local v0           #conversationRenameInput:Landroid/widget/EditText;
    .end local v1           #conversationRowId:J
    :cond_35
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_11

    .line 105
    const v0, 0x7f0d01d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 93
    const v0, 0x7f0d01cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    const v0, 0x7f0d01d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    const v0, 0x7f0d01d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    const v0, 0x7f0d01d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mIsResumed:Z

    .line 119
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 120
    .local v0, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v2, :cond_22

    .line 121
    if-eqz v0, :cond_1e

    .line 122
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 148
    :goto_19
    return-void

    .line 125
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->switchAccounts()V

    goto :goto_19

    .line 129
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->switchAccounts()V

    goto :goto_19

    .line 133
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 135
    if-nez v0, :cond_30

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->switchAccounts()V

    goto :goto_19

    .line 140
    :cond_30
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getConversationListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    goto :goto_19

    .line 145
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_19
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationListActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 195
    return-void
.end method

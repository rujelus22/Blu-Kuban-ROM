.class public Lcom/google/android/apps/reader/app/StreamListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StreamListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/fragment/AccountSelection;


# static fields
.field private static final FRAGMENT_ABOUT_MENU:Ljava/lang/String; = "reader:about_menu"

.field private static final FRAGMENT_ACCOUNT_MENU:Ljava/lang/String; = "reader:account_menu"

.field private static final FRAGMENT_HELP_MENU:Ljava/lang/String; = "reader:help_menu"

.field private static final FRAGMENT_SETTINGS_MENU:Ljava/lang/String; = "reader:settings_menu"

.field private static final HELP_ENABLED:Z


# instance fields
.field private mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

.field private mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

.field private mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private addMenuFragments()V
    .registers 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;

    invoke-direct {v1}, Lcom/google/android/apps/reader/fragment/SettingsMenuFragment;-><init>()V

    const-string v2, "reader:settings_menu"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    new-instance v1, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;

    invoke-direct {v1}, Lcom/google/android/apps/reader/fragment/AccountMenuFragment;-><init>()V

    const-string v2, "reader:account_menu"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 87
    new-instance v1, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;

    invoke-direct {v1}, Lcom/google/android/apps/reader/fragment/AboutMenuFragment;-><init>()V

    const-string v2, "reader:about_menu"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 89
    return-void
.end method

.method private addSubscription()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->addSubscription()V

    .line 187
    return-void
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 159
    :goto_c
    return-void

    .line 149
    :cond_d
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 151
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/StreamListActivity;->setAccount(Lcom/google/android/accounts/Account;)V

    goto :goto_c

    .line 153
    .end local v0           #account:Lcom/google/android/accounts/Account;
    :cond_21
    invoke-static {p1}, Lcom/google/android/apps/reader/app/StreamListActivity;->getAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 154
    .restart local v0       #account:Lcom/google/android/accounts/Account;
    if-nez v0, :cond_2b

    .line 155
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 157
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/StreamListActivity;->setAccount(Lcom/google/android/accounts/Account;)V

    goto :goto_c
.end method

.method private static getAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "intent"

    .prologue
    .line 216
    const-string v2, "authAccount"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, name:Ljava/lang/String;
    const-string v2, "accountType"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, type:Ljava/lang/String;
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-object v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->refresh()V

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    if-eqz v0, :cond_e

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->refresh()V

    .line 183
    :cond_e
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 208
    const-string v0, "reader_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 211
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 176
    :goto_7
    :pswitch_7
    return-void

    .line 167
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->refresh()V

    goto :goto_7

    .line 170
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->onSearchRequested()Z

    goto :goto_7

    .line 173
    :pswitch_10
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->addSubscription()V

    goto :goto_7

    .line 165
    :pswitch_data_14
    .packed-switch 0x7f0b0004
        :pswitch_8
        :pswitch_10
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v1, Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->requestCustomTitle()V

    .line 67
    const v1, 0x7f030032

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/StreamListActivity;->setContentView(I)V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    const v2, 0x7f030036

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setCustomTitleLayout(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 71
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/StreamListFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    .line 72
    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/OverviewFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    .line 73
    if-nez p1, :cond_43

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->addMenuFragments()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/StreamListActivity;->changeIntent(Landroid/content/Intent;)V

    .line 77
    :cond_43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/StreamListActivity;->changeIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 132
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->showMainScreen()V

    move v0, v1

    .line 133
    goto :goto_c

    .line 135
    :sswitch_14
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->onSearchRequested()Z

    move v0, v1

    .line 136
    goto :goto_c

    .line 138
    :sswitch_19
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->refresh()V

    move v0, v1

    .line 139
    goto :goto_c

    .line 130
    :sswitch_data_1e
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0b0096 -> :sswitch_19
        0x7f0b0097 -> :sswitch_14
    .end sparse-switch
.end method

.method public onSearchRequested()Z
    .registers 8

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamListActivity;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 108
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_1a

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, initialQuery:Ljava/lang/String;
    const/4 v4, 0x0

    .line 111
    .local v4, selectInitialQuery:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v1, appSearchData:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 113
    .local v2, globalSearch:Z
    const-string v5, "authAccount"

    iget-object v6, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/google/android/apps/reader/app/StreamListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 115
    const/4 v5, 0x1

    .line 117
    .end local v1           #appSearchData:Landroid/os/Bundle;
    .end local v2           #globalSearch:Z
    .end local v3           #initialQuery:Ljava/lang/String;
    .end local v4           #selectInitialQuery:Z
    :goto_19
    return v5

    :cond_1a
    const/4 v5, 0x0

    goto :goto_19
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "title"
    .parameter "color"

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setAccount(Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mStreamList:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    if-eqz v0, :cond_e

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamListActivity;->mOverview:Lcom/google/android/apps/reader/fragment/OverviewFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/fragment/OverviewFragment;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 197
    :cond_e
    return-void
.end method

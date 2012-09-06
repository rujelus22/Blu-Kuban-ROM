.class public Lcom/google/android/apps/reader/app/CreateShortcutActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CreateShortcutActivity.java"


# static fields
.field private static final REQUEST_PICK_ACCOUNT:I = 0x1

.field private static final STATE_ACCOUNT:Ljava/lang/String; = "reader:account"

.field private static final STATE_CURRENT_TAB:Ljava/lang/String; = "reader:tab"

.field private static final TAB_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAB_FOLLOWING:Ljava/lang/String; = "following"

.field private static final TAB_LABELS:Ljava/lang/String; = "labels"

.field private static final TAB_SUBSCRIPTIONS:Ljava/lang/String; = "subscriptions"


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private addSubscription()V
    .registers 4

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v2, :cond_14

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_14
    return-void
.end method

.method private addTab(Ljava/lang/String;II)V
    .registers 6
    .parameter "tag"
    .parameter "text"
    .parameter "viewId"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->newTab(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 187
    return-void
.end method

.method private changeAccount(Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->updateFragments()V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 163
    return-void
.end method

.method private newTab(Ljava/lang/String;II)Landroid/widget/TabHost$TabSpec;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/reader/widget/TabIndicator;->set(Landroid/widget/TabWidget;Landroid/widget/TabHost$TabSpec;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 182
    return-object v0
.end method

.method private pickAccount()V
    .registers 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/reader/app/AccountListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method private updateFragment(ILcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)V
    .registers 6
    .parameter "id"
    .parameter "filter"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 174
    .local v1, manager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    .line 175
    .local v0, fragment:Lcom/google/android/apps/reader/fragment/StreamPickerFragment;
    iget-object v2, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v2, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->contentUri(Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)Landroid/net/Uri;

    move-result-object v2

    :goto_14
    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->changeUri(Landroid/net/Uri;)V

    .line 176
    return-void

    .line 175
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private updateFragments()V
    .registers 3

    .prologue
    .line 166
    const v0, 0x7f0b001f

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ACCOUNT:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->updateFragment(ILcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)V

    .line 167
    const v0, 0x7f0b0023

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->FOLLOWING:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->updateFragment(ILcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)V

    .line 168
    const v0, 0x7f0b0025

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->LABELS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->updateFragment(ILcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)V

    .line 169
    const v0, 0x7f0b0021

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->SUBSCRIPTIONS:Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->updateFragment(ILcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 111
    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    .line 112
    const/4 v2, -0x1

    if-ne p2, v2, :cond_17

    .line 113
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, accountName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->changeAccount(Lcom/google/android/accounts/Account;)V

    .line 122
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :cond_16
    :goto_16
    return-void

    .line 116
    :cond_17
    if-nez p2, :cond_16

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-nez v2, :cond_16

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->finish()V

    goto :goto_16
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->setContentView(I)V

    .line 70
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 73
    const-string v0, "account"

    const v1, 0x7f0d0121

    const v2, 0x7f0b001e

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->addTab(Ljava/lang/String;II)V

    .line 74
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 75
    const-string v0, "following"

    const v1, 0x7f0d0122

    const v2, 0x7f0b0022

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->addTab(Ljava/lang/String;II)V

    .line 77
    :cond_37
    const-string v0, "labels"

    const v1, 0x7f0d0126

    const v2, 0x7f0b0024

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->addTab(Ljava/lang/String;II)V

    .line 78
    const-string v0, "subscriptions"

    const v1, 0x7f0d0124

    const v2, 0x7f0b0020

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->addTab(Ljava/lang/String;II)V

    .line 81
    if-eqz p1, :cond_5b

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "reader:tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 86
    :goto_5a
    return-void

    .line 84
    :cond_5b
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->changeAccount(Lcom/google/android/accounts/Account;)V

    goto :goto_5a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 128
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 149
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->addSubscription()V

    move v0, v1

    .line 150
    goto :goto_c

    .line 152
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->pickAccount()V

    move v0, v1

    .line 153
    goto :goto_c

    .line 147
    nop

    :pswitch_data_18
    .packed-switch 0x7f0b006f
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "reader:account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    .line 99
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    if-nez v0, :cond_a

    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->pickAccount()V

    .line 107
    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "reader:account"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string v0, "reader:tab"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/CreateShortcutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

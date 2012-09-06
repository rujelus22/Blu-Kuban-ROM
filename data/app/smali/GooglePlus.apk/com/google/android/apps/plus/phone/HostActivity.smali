.class public abstract Lcom/google/android/apps/plus/phone/HostActivity;
.super Lcom/google/android/apps/plus/analytics/InstrumentedActivity;
.source "HostActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
.implements Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;


# instance fields
.field private mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

.field private mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private attachActionBar()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    if-eqz v0, :cond_1a

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->reset()V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/HostedFragment;->attachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostActivity;->onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->commit()V

    .line 109
    :cond_1a
    return-void
.end method


# virtual methods
.method protected abstract createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 4

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 262
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v2
.end method

.method protected isIntentAccountActive()Z
    .registers 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 227
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostActivity;->isIntentAccountActive(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    return v1
.end method

.method protected isIntentAccountActive(Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 240
    if-eqz p1, :cond_36

    .line 242
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 243
    const-string v1, "HostActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 244
    const-string v1, "HostActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity finished because it is associated with a signed-out account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_36
    :goto_36
    return v0

    .line 249
    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method

.method public onActionBarInvalidated()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->attachActionBar()V

    .line 117
    return-void
.end method

.method public onActionButtonClicked(I)V
    .registers 3
    .parameter "actionId"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onActionButtonClicked(I)V

    .line 161
    :cond_9
    return-void
.end method

.method protected onAttachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 2
    .parameter "actionBar"

    .prologue
    .line 123
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 93
    instance-of v0, p1, Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_b

    .line 94
    check-cast p1, Lcom/google/android/apps/plus/phone/HostedFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->attachActionBar()V

    .line 97
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/HostActionBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar;->setOnUpButtonClickListener(Lcom/google/android/apps/plus/views/HostActionBar$OnUpButtonClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar;->setHostActionBarListener(Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    const v1, 0x7f08045b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/HostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->setUpButtonContentDescription(Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_34

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->createHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/HostActivity;->replaceFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V

    .line 60
    :cond_33
    :goto_33
    return-void

    .line 57
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_33

    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->attachActionBar()V

    goto :goto_33
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 200
    const/4 v0, 0x1

    .line 203
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-nez v4, :cond_6

    .line 191
    :goto_5
    return v3

    .line 182
    :cond_6
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 183
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_17

    .line 184
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 185
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 189
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_17
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 191
    const/4 v3, 0x1

    goto :goto_5
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrimarySpinnerSelectionChange(I)V

    .line 141
    :cond_9
    return-void
.end method

.method public onRefreshButtonClicked()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/HostActivity;->mHostedFragment:Lcom/google/android/apps/plus/phone/HostedFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->refresh()V

    .line 151
    :cond_9
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->onResume()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->finish()V

    .line 216
    :cond_c
    return-void
.end method

.method public onUpButtonClick()V
    .registers 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->onBackPressed()V

    .line 131
    return-void
.end method

.method protected replaceFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 69
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/HostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 73
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 74
    .local v3, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0900d1

    const-string v5, "hosted"

    invoke-virtual {v3, v4, p1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 75
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 80
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->recordNavigationAction()V

    .line 81
    return-void
.end method

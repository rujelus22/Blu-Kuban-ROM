.class public Lcom/google/android/apps/plus/phone/PostCommentsActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PostCommentsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d013f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    return-object v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 201
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 178
    :goto_6
    return-void

    .line 171
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notif_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 172
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->finish()V

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_19

    .line 80
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 81
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 83
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_19
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->onDiscard()V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030075

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->setContentView(I)V

    .line 35
    if-nez p1, :cond_2c

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, notificationId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_read"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    .local v2, read:Z
    if-eqz v1, :cond_2c

    if-nez v2, :cond_2c

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/google/android/apps/plus/service/EsService;->markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .end local v1           #notificationId:Ljava/lang/String;
    .end local v2           #read:Z
    :cond_2c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3a

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_39
    return-void

    .line 52
    :cond_3a
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->showTitlebar(Z)V

    .line 54
    const v3, 0x7f0200a3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_39
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100006

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2b

    .line 95
    const v2, 0x7f0d01b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, barLayout:Landroid/view/View;
    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 99
    .local v1, progressBarView:Landroid/widget/ProgressBar;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 102
    .end local v0           #barLayout:Landroid/view/View;
    .end local v1           #progressBarView:Landroid/widget/ProgressBar;
    :cond_2b
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v0

    .line 134
    .local v0, fragment:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
    if-eqz v0, :cond_12

    .line 135
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->onMyOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 137
    .end local v0           #fragment:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
    :cond_12
    :goto_12
    return v1

    .line 128
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_12

    .line 126
    nop

    :pswitch_data_1c
    .packed-switch 0x102002c
        :pswitch_13
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->onMyPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getFragment()Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->onPrepareTitlebarButtons(Landroid/view/Menu;)V

    .line 119
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->finish()V

    .line 68
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostCommentsActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 150
    return-void
.end method

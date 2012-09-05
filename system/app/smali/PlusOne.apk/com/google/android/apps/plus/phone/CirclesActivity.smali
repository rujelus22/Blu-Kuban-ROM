.class public Lcom/google/android/apps/plus/phone/CirclesActivity;
.super Lcom/google/android/apps/plus/fragments/EsTabActivity;
.source "CirclesActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x0

    const v1, 0x7f0d005f

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;-><init>(II)V

    .line 44
    return-void
.end method

.method private onHelpRequested()V
    .registers 4

    .prologue
    .line 196
    const-string v1, "plus_circles"

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 197
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CirclesActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_c

    .line 248
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    :goto_5
    return-object v0

    .line 244
    :pswitch_6
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_5

    .line 246
    :pswitch_9
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_IN_CIRCLES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_5

    .line 242
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 89
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/PeopleListFragment;

    if-eqz v1, :cond_f

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;

    .line 91
    .local v0, peopleListFragment:Lcom/google/android/apps/plus/fragments/PeopleListFragment;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->setOnPersonSelectedListener(Lcom/google/android/apps/plus/fragments/PeopleListFragment$OnPersonSelectedListener;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    .line 96
    .end local v0           #peopleListFragment:Lcom/google/android/apps/plus/fragments/PeopleListFragment;
    :cond_e
    :goto_e
    return-void

    .line 93
    :cond_f
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/CircleListFragment;

    if-eqz v1, :cond_e

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/CirclesActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CirclesActivity;->setContentView(I)V

    .line 54
    const v2, 0x7f0d018c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CirclesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, title:Landroid/widget/TextView;
    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const/4 v2, 0x0

    const v3, 0x7f0d006d

    const v4, 0x7f0d006e

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/plus/phone/CirclesActivity;->addTab(III)V

    .line 58
    const v2, 0x7f0d005c

    const v3, 0x7f0d006f

    invoke-virtual {p0, v5, v2, v3}, Lcom/google/android/apps/plus/phone/CirclesActivity;->addTab(III)V

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3a

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_39
    return-void

    .line 66
    :cond_3a
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/CirclesActivity;->showTitlebar(Z)V

    .line 67
    const v2, 0x7f02007e

    const v3, 0x7f070252

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/CirclesActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 68
    const v2, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CirclesActivity;->createTitlebarButtons(I)V

    goto :goto_39
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateTab(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_12

    .line 110
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 105
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;-><init>()V

    goto :goto_4

    .line 108
    :pswitch_b
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListFragment;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/CircleListFragment;-><init>()V

    goto :goto_4

    .line 103
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    .line 162
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 142
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CirclesActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 147
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->onSearchRequested()Z

    goto :goto_9

    .line 152
    :sswitch_16
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CirclesActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 153
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 158
    :sswitch_1f
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->onHelpRequested()V

    goto :goto_9

    .line 140
    nop

    :sswitch_data_24
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b3 -> :sswitch_12
        0x7f0d01b6 -> :sswitch_16
        0x7f0d01b7 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onPersonSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 7
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 206
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    .line 130
    const v0, 0x7f0d01b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 178
    const v0, 0x7f0d01b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    const v0, 0x7f0d01b7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->finish()V

    .line 82
    :cond_c
    return-void
.end method

.method public onSearchRequested()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v3, -0x1

    move-object v0, p0

    move v5, v2

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return v4
.end method

.method protected onTabDeselected(ILandroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 224
    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    .line 225
    check-cast p2, Lcom/google/android/apps/plus/fragments/CircleListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/CircleListFragment;->deactivate()V

    .line 227
    :cond_9
    return-void
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "tabId"
    .parameter "fragment"

    .prologue
    .line 214
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    if-eqz p2, :cond_a

    .line 215
    check-cast p2, Lcom/google/android/apps/plus/fragments/PeopleListFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/plus/fragments/PeopleListFragment;->activate()V

    .line 217
    :cond_a
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 171
    return-void
.end method

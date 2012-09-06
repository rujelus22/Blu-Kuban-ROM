.class public Lcom/google/android/apps/plus/phone/CheckinActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "CheckinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;


# instance fields
.field private mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private startSearch()V
    .registers 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_21

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCheckinSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getIntent()Landroid/content/Intent;

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
    .line 259
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOCATION_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 151
    packed-switch p1, :pswitch_data_22

    .line 169
    :cond_4
    :goto_4
    return-void

    .line 153
    :pswitch_5
    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 154
    const-string v2, "location"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 156
    .local v0, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v1, result:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    goto :goto_4

    .line 151
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 73
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v0, :cond_16

    .line 74
    check-cast p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setOnUpdateMenuListener(Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 78
    :cond_16
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 238
    packed-switch p2, :pswitch_data_14

    .line 251
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void

    .line 240
    :pswitch_7
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->getLocationSettingActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    goto :goto_3

    .line 238
    nop

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_17
    return-void

    .line 49
    :cond_18
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CheckinActivity;->showTitlebar(Z)V

    .line 51
    const v1, 0x7f0801e7

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_24

    .line 230
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 224
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08020b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08020e

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 222
    nop

    :pswitch_data_24
    .packed-switch 0x1bfb7a8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 141
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 131
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 136
    :sswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startSearch()V

    goto :goto_9

    .line 129
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902af -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_1b

    .line 96
    const v1, 0x7f0902af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, searchItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->hasLocation()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 101
    .end local v0           #searchItem:Landroid/view/MenuItem;
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_14

    .line 119
    const v1, 0x7f0902af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 120
    .local v0, searchItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->hasLocation()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    .end local v0           #searchItem:Landroid/view/MenuItem;
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    .line 65
    :cond_c
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startSearch()V

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 110
    return-void
.end method

.method public onUpdateMenu()V
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->invalidateOptionsMenu()V

    .line 181
    :goto_9
    return-void

    .line 179
    :cond_a
    const v0, 0x7f100002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

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
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private startSearch()V
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_21

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCheckinSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 213
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
    .line 275
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOCATION_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    :goto_6
    return-void

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    goto :goto_6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 153
    packed-switch p1, :pswitch_data_22

    .line 171
    :cond_4
    :goto_4
    return-void

    .line 155
    :pswitch_5
    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 156
    const-string v2, "location"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 158
    .local v0, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v1, result:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    goto :goto_4

    .line 153
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 75
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v0, :cond_16

    .line 76
    check-cast p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setOnUpdateMenuListener(Lcom/google/android/apps/plus/fragments/CheckinListFragment$OnUpdateMenuListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 80
    :cond_16
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 254
    packed-switch p2, :pswitch_data_16

    .line 267
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    return-void

    .line 256
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    goto :goto_3

    .line 254
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setContentView(I)V

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_21

    .line 47
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CheckinActivity;->showTitlebar(Z)V

    .line 49
    const v1, 0x7f0200a3

    const v2, 0x7f07014f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/phone/CheckinActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 55
    :goto_20
    return-void

    .line 52
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_20
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_24

    .line 246
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 240
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07016b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 238
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
    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 143
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 133
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 138
    :sswitch_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startSearch()V

    goto :goto_9

    .line 131
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b9 -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_1f

    .line 98
    const v1, 0x7f0d01b9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, searchItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->hasLocation()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_20

    move v1, v2

    :goto_1c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 103
    .end local v0           #searchItem:Landroid/view/MenuItem;
    :cond_1f
    return v2

    .line 100
    .restart local v0       #searchItem:Landroid/view/MenuItem;
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_14

    .line 121
    const v1, 0x7f0d01b9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, searchItem:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinActivity;->mCheckinFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->hasLocation()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 124
    .end local v0           #searchItem:Landroid/view/MenuItem;
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->finish()V

    .line 67
    :cond_c
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->startSearch()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 112
    return-void
.end method

.method public onUpdateMenu()V
    .registers 3

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 193
    const v0, 0x7f100002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->createTitlebarButtons(I)V

    .line 197
    :goto_c
    return-void

    .line 195
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinActivity;->invalidateOptionsMenu()V

    goto :goto_c
.end method

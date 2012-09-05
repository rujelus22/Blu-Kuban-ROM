.class public Lcom/google/android/apps/plus/phone/CheckinSearchActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "CheckinSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# instance fields
.field private mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->getIntent()Landroid/content/Intent;

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
    .line 192
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOCATION_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :goto_6
    return-void

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    goto :goto_6
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 75
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v0, :cond_15

    .line 76
    check-cast p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchViewAdapter(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 80
    :cond_15
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 171
    packed-switch p2, :pswitch_data_16

    .line 184
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void

    .line 173
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 179
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    goto :goto_3

    .line 171
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->setContentView(I)V

    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_42

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    invoke-static {p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v1, :cond_42

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchViewAdapter(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 56
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_42
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_24

    .line 163
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 157
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07016a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07016b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 155
    nop

    :pswitch_data_24
    .packed-switch 0x1bfb7a8
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 94
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 89
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 90
    const/4 v0, 0x1

    goto :goto_8

    .line 87
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onQueryClose()V
    .registers 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    .line 133
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 118
    return-void
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 125
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    .line 68
    :cond_c
    return-void
.end method

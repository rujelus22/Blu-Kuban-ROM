.class public Lcom/google/android/apps/plus/phone/EditCommentActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EditCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getIntent()Landroid/content/Intent;

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
    .line 120
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public invalidateMenu()V
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->invalidateOptionsMenu()V

    .line 180
    :goto_9
    return-void

    .line 178
    :cond_a
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 55
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    if-eqz v0, :cond_b

    .line 56
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    .line 58
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onDiscard()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    packed-switch p2, :pswitch_data_10

    .line 168
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    return-void

    .line 158
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->finish()V

    goto :goto_3

    .line 156
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f080206

    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_1d
    return-void

    .line 46
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->showTitlebar(Z)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 48
    const v1, 0x7f10000e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->createTitlebarButtons(I)V

    goto :goto_1d
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 130
    sparse-switch p1, :sswitch_data_3c

    .line 149
    const/4 v1, 0x0

    :goto_5
    return-object v1

    .line 132
    :sswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080207

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 134
    const v2, 0x7f08020b

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    const v2, 0x7f08020e

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_5

    .line 141
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_26
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 143
    const v2, 0x7f0801af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    .line 130
    :sswitch_data_3c
    .sparse-switch
        0x32c15 -> :sswitch_26
        0xdc072 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 108
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 93
    :sswitch_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onDiscard()V

    goto :goto_9

    .line 98
    :sswitch_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onPost()V

    goto :goto_9

    .line 103
    :sswitch_16
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onDiscard()V

    goto :goto_9

    .line 91
    :sswitch_data_1c
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902ca -> :sswitch_10
        0x7f0902cb -> :sswitch_16
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 69
    const v1, 0x7f0902ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    .local v0, postItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditCommentActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 84
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 85
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0902ca

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 87
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditCommentActivity;->mEditCommentFragment:Lcom/google/android/apps/plus/fragments/EditCommentFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditCommentFragment;->onDiscard()V

    .line 79
    :cond_9
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

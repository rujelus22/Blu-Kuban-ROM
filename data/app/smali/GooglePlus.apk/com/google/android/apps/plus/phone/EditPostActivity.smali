.class public Lcom/google/android/apps/plus/phone/EditPostActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EditPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

.field private mShakeDetectorWasRunning:Z


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
    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getIntent()Landroid/content/Intent;

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
    .line 144
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public invalidateMenu()V
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->invalidateOptionsMenu()V

    .line 212
    :goto_9
    return-void

    .line 210
    :cond_a
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 79
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditPostFragment;

    if-eqz v0, :cond_b

    .line 80
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditPostFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    .line 82
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->onDiscard()V

    .line 140
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 188
    packed-switch p2, :pswitch_data_10

    .line 200
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void

    .line 190
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setResult(I)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->finish()V

    goto :goto_3

    .line 188
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080204

    const/4 v3, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->shouldShowAndroidActionBar()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v1

    .line 55
    .local v1, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v1, :cond_2d

    .line 56
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mShakeDetectorWasRunning:Z

    .line 58
    :cond_2d
    return-void

    .line 48
    .end local v1           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_2e
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditPostActivity;->showTitlebar(Z)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditPostActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 50
    const v2, 0x7f10000f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditPostActivity;->createTitlebarButtons(I)V

    goto :goto_1d
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 154
    sparse-switch p1, :sswitch_data_52

    .line 181
    const/4 v1, 0x0

    :goto_5
    return-object v1

    .line 156
    :sswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080205

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 158
    const v2, 0x7f08020b

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v2, 0x7f08020e

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_5

    .line 165
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_26
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 167
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    const v2, 0x7f0800c4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 173
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :sswitch_3c
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 174
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 175
    const v2, 0x7f0801af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_5

    .line 154
    :sswitch_data_52
    .sparse-switch
        0x48ba7 -> :sswitch_3c
        0xdc073 -> :sswitch_6
        0xed20b -> :sswitch_26
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 68
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 70
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 71
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 74
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 132
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 117
    :sswitch_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->onDiscard()V

    goto :goto_9

    .line 122
    :sswitch_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->onPost()V

    goto :goto_9

    .line 127
    :sswitch_16
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->onDiscard()V

    goto :goto_9

    .line 115
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
    .line 93
    const v1, 0x7f0902ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 94
    .local v0, postItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditPostActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 108
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 109
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0902ca

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 111
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditPostActivity;->mEditPostFragment:Lcom/google/android/apps/plus/fragments/EditPostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditPostFragment;->onDiscard()V

    .line 103
    :cond_9
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

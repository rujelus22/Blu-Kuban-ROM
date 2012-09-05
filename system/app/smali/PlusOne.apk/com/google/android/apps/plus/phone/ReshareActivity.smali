.class public Lcom/google/android/apps/plus/phone/ReshareActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ReshareActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 171
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ReshareActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 156
    :goto_6
    return-void

    .line 151
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->finish()V

    goto :goto_6
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 66
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 71
    .end local p1
    :goto_a
    return-void

    .line 68
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/google/android/apps/plus/fragments/ReshareFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    goto :goto_a

    .line 66
    :pswitch_data_10
    .packed-switch 0x7f0d0160
        :pswitch_b
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->onDiscard()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f07015a

    const/4 v4, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f03008c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ReshareActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2c

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2b
    return-void

    .line 45
    :cond_2c
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/ReshareActivity;->showTitlebar(Z)V

    .line 46
    const v2, 0x7f0200a3

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/ReshareActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 47
    const v2, 0x7f100019

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ReshareActivity;->createTitlebarButtons(I)V

    goto :goto_2b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_20

    .line 130
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 115
    :sswitch_d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ReshareActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 120
    :sswitch_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->reshare()Z

    goto :goto_c

    .line 125
    :sswitch_19
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->onDiscard()V

    goto :goto_c

    .line 113
    nop

    :sswitch_data_20
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0d01ee -> :sswitch_13
        0x7f0d01ef -> :sswitch_19
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 87
    const v1, 0x7f0d01ee

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 88
    .local v0, postItem:Landroid/view/MenuItem;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_13

    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    return v2

    .line 88
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 106
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 107
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d01ee

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 109
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->finish()V

    .line 61
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 98
    return-void
.end method

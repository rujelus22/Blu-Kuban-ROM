.class public Lcom/google/android/apps/plus/phone/PhotoPickerActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PhotoPickerActivity.java"


# instance fields
.field private mAllowCrop:Z

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private updateTitleAndSubtitle()V
    .registers 6

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, subtitle:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->mAllowCrop:Z

    if-eqz v3, :cond_1d

    .line 104
    const v3, 0x7f0800b4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, title:Ljava/lang/String;
    :goto_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_20

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_1c
    return-void

    .line 106
    .end local v2           #title:Ljava/lang/String;
    :cond_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->mDisplayName:Ljava/lang/String;

    .restart local v2       #title:Ljava/lang/String;
    goto :goto_c

    .line 115
    :cond_20
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_1c
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

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
    .line 134
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTO_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v3, 0x7f030091

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->setContentView(I)V

    .line 36
    if-nez p1, :cond_2b

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 39
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    .local v2, intent:Landroid/content/Intent;
    const v3, 0x7f0901a4

    new-instance v4, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    invoke-direct {v4, v2}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 41
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    .end local v1           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->mDisplayName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "allow_crop"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->mAllowCrop:Z

    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_54

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_50
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->updateTitleAndSubtitle()V

    .line 58
    return-void

    .line 53
    :cond_54
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->showTitlebar(Z)V

    .line 54
    const v3, 0x7f100001

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->createTitlebarButtons(I)V

    goto :goto_50
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 91
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 86
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->onTitlebarLabelClick()V

    .line 87
    const/4 v0, 0x1

    goto :goto_8

    .line 84
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 78
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_12
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->finish()V

    .line 67
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPickerActivity;->finish()V

    .line 72
    return-void
.end method

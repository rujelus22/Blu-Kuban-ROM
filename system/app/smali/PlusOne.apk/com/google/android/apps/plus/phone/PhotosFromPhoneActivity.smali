.class public Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PhotosFromPhoneActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mFragment:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private isChooserMode()Z
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 235
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTOS_FROM_MY_PHONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->isChooserMode()Z

    move-result v1

    if-nez v1, :cond_c

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 155
    :cond_c
    :goto_c
    return-void

    .line 148
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomeIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->finish()V

    goto :goto_c
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 105
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    if-eqz v0, :cond_b

    .line 106
    check-cast p1, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    .line 108
    :cond_b
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_17

    .line 120
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 122
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 124
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f070071

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v7, 0x7f03000b

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 43
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "account"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v7, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 45
    if-nez p1, :cond_39

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 48
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 49
    .local v1, fragmentIntent:Landroid/content/Intent;
    const v7, 0x7f0d004e

    new-instance v10, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-direct {v10, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v7, v10}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 54
    .end local v1           #fragmentIntent:Landroid/content/Intent;
    .end local v2           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_39
    const-string v7, "photo_picker"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 55
    .local v4, photoPicker:Z
    if-eqz v4, :cond_63

    .line 56
    const v7, 0x7f07008c

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, subtitle:Ljava/lang/String;
    :goto_48
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v7, v10, :cond_68

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->isChooserMode()Z

    move-result v7

    if-nez v7, :cond_66

    move v7, v8

    :goto_59
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 75
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_62
    return-void

    .line 58
    .end local v5           #subtitle:Ljava/lang/String;
    :cond_63
    const-string v5, ""

    .restart local v5       #subtitle:Ljava/lang/String;
    goto :goto_48

    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_66
    move v7, v9

    .line 63
    goto :goto_59

    .line 67
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_68
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->isChooserMode()Z

    move-result v7

    if-nez v7, :cond_8b

    :goto_6e
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->showTitlebar(Z)V

    .line 68
    if-nez v4, :cond_79

    .line 69
    const v7, 0x7f100001

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->createTitlebarButtons(I)V

    .line 71
    :cond_79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f02008f

    invoke-virtual {p0, v7, v6}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 73
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_62

    .end local v6           #title:Ljava/lang/String;
    :cond_8b
    move v8, v9

    .line 67
    goto :goto_6e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "photo_picker"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 163
    .local v1, photoPicker:Z
    if-eqz v1, :cond_e

    .line 179
    :goto_d
    return v3

    .line 167
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f100001

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_37

    .line 172
    const v3, 0x7f0d01b8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, barLayout:Landroid/view/View;
    const v3, 0x7f0d0039

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 176
    .local v2, progressBarView:Landroid/widget/ProgressBar;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 179
    .end local v0           #barLayout:Landroid/view/View;
    .end local v2           #progressBarView:Landroid/widget/ProgressBar;
    :cond_37
    const/4 v3, 0x1

    goto :goto_d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    .line 218
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 189
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->finish()V

    goto :goto_9

    .line 194
    :sswitch_e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->refresh()V

    goto :goto_9

    .line 199
    :sswitch_14
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const-string v2, "account"

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 206
    :sswitch_26
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 207
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 212
    :sswitch_2f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "plus_photos"

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 187
    :sswitch_data_40
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b4 -> :sswitch_e
        0x7f0d01b5 -> :sswitch_14
        0x7f0d01b6 -> :sswitch_26
        0x7f0d01b7 -> :sswitch_2f
    .end sparse-switch
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 95
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->finish()V

    .line 87
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 133
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 134
    return-void
.end method

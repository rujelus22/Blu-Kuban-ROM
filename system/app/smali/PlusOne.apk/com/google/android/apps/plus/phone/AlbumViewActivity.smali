.class public Lcom/google/android/apps/plus/phone/AlbumViewActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "AlbumViewActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAlbumCount:I

.field private mAlbumName:Ljava/lang/String;

.field private mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

.field private mPhotoPicker:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumCount:I

    return-void
.end method

.method private updateTitleAndSubtitle()V
    .registers 9

    .prologue
    .line 201
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mPhotoPicker:Z

    if-eqz v2, :cond_1e

    .line 202
    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, subtitle:Ljava/lang/String;
    :goto_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3d

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 215
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 221
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_1d
    return-void

    .line 204
    .end local v1           #subtitle:Ljava/lang/String;
    :cond_1e
    iget v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumCount:I

    if-gez v2, :cond_24

    .line 205
    const/4 v1, 0x0

    .restart local v1       #subtitle:Ljava/lang/String;
    goto :goto_b

    .line 207
    .end local v1           #subtitle:Ljava/lang/String;
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e

    iget v4, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumCount:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #subtitle:Ljava/lang/String;
    goto :goto_b

    .line 218
    :cond_3d
    const v2, 0x7f02008f

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_1d
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 236
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTOS_LIST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 93
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    if-eqz v1, :cond_11

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    .line 95
    .local v0, myFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->setOnAlbumContentListener(Lcom/google/android/apps/plus/fragments/AlbumViewFragment$OnAlbumContentListener;)V

    .line 98
    .end local v0           #myFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;
    :cond_11
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_17

    .line 107
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 109
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 111
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_17
    return-void
.end method

.method public onCountChanged(I)V
    .registers 2
    .parameter "albumCount"

    .prologue
    .line 185
    iput p1, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumCount:I

    .line 186
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->updateTitleAndSubtitle()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->setContentView(I)V

    .line 51
    if-nez p1, :cond_2b

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 54
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 55
    .local v2, intent:Landroid/content/Intent;
    const v3, 0x7f0d004e

    new-instance v4, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-direct {v4, v2}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    .end local v1           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 61
    const-string v3, "album_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumName:Ljava/lang/String;

    .line 62
    const-string v3, "photo_picker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mPhotoPicker:Z

    .line 64
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_5b

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_57
    :goto_57
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->updateTitleAndSubtitle()V

    .line 75
    return-void

    .line 68
    :cond_5b
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->showTitlebar(Z)V

    .line 69
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mPhotoPicker:Z

    if-nez v3, :cond_57

    .line 70
    const v3, 0x7f100001

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->createTitlebarButtons(I)V

    goto :goto_57
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 116
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mPhotoPicker:Z

    if-eqz v2, :cond_6

    .line 117
    const/4 v2, 0x0

    .line 132
    :goto_5
    return v2

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2f

    .line 125
    const v2, 0x7f0d01b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, barLayout:Landroid/view/View;
    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 129
    .local v1, progressBarView:Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 132
    .end local v0           #barLayout:Landroid/view/View;
    .end local v1           #progressBarView:Landroid/widget/ProgressBar;
    :cond_2f
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public onNameChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "albumName"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAlbumName:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->updateTitleAndSubtitle()V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_38

    .line 178
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 151
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->onTitlebarLabelClick()V

    goto :goto_9

    .line 156
    :sswitch_e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mFragment:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->refresh()V

    goto :goto_9

    .line 161
    :sswitch_14
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1e
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 168
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_9

    .line 173
    :sswitch_27
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "plus_photos"

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 149
    :sswitch_data_38
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b4 -> :sswitch_e
        0x7f0d01b5 -> :sswitch_14
        0x7f0d01b6 -> :sswitch_1e
        0x7f0d01b7 -> :sswitch_27
    .end sparse-switch
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 138
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->finish()V

    .line 87
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AlbumViewActivity;->finish()V

    .line 145
    return-void
.end method

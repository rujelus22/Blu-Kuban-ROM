.class public Lcom/google/android/apps/plus/phone/PhotosHomeActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PhotosHomeActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

.field private mPhotoPicker:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private updateTitleAndSubtitle()V
    .registers 6

    .prologue
    .line 279
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    if-eqz v3, :cond_23

    .line 280
    const v3, 0x7f07008a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f07008b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, subtitle:Ljava/lang/String;
    :goto_12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2c

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 290
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 296
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_22
    return-void

    .line 283
    .end local v1           #subtitle:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_23
    const v3, 0x7f07006d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2       #title:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #subtitle:Ljava/lang/String;
    goto :goto_12

    .line 293
    :cond_2c
    const v3, 0x7f02008f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    goto :goto_22
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 311
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PHOTOS_HOME:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, -0x1

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 233
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    packed-switch p1, :pswitch_data_4e

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    :cond_13
    :goto_13
    return-void

    .line 235
    :pswitch_14
    if-ne p2, v8, :cond_13

    if-eqz p3, :cond_13

    .line 236
    const-string v6, "mediarefs"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 238
    .local v3, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-static {p0, v0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 244
    .end local v3           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :pswitch_26
    if-ne p2, v8, :cond_13

    .line 246
    :try_start_28
    const-string v6, "camera-p.jpg"

    invoke-static {p0, v6}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, mediaLocation:Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 250
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 251
    .local v4, photoUri:Landroid/net/Uri;
    invoke-static {p0, v0, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 254
    .local v5, postActivityIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3b} :catch_3c

    goto :goto_13

    .line 256
    .end local v2           #mediaLocation:Ljava/lang/String;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v5           #postActivityIntent:Landroid/content/Intent;
    :catch_3c
    move-exception v1

    .line 257
    .local v1, ex:Ljava/io/FileNotFoundException;
    const v6, 0x7f070121

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 233
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_26
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 103
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    .line 105
    .local v0, myFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    .line 107
    .end local v0           #myFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
    :cond_c
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachedToWindow()V

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_17

    .line 116
    const v1, 0x7f0d018e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 118
    .local v0, progressBarView:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 120
    .end local v0           #progressBarView:Landroid/widget/ProgressBar;
    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v4, 0x7f03006e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 63
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 64
    const-string v4, "photo_picker"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    .line 66
    if-nez p1, :cond_3e

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 69
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v1, fragmentIntent:Landroid/content/Intent;
    const v4, 0x7f0d0132

    new-instance v5, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-direct {v5, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 71
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 74
    .end local v1           #fragmentIntent:Landroid/content/Intent;
    .end local v2           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_3e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4f

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->updateTitleAndSubtitle()V

    .line 85
    return-void

    .line 78
    :cond_4f
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->showTitlebar(Z)V

    .line 79
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    if-nez v4, :cond_4b

    .line 80
    const v4, 0x7f100016

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->createTitlebarButtons(I)V

    goto :goto_4b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 124
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    if-eqz v2, :cond_6

    .line 125
    const/4 v2, 0x0

    .line 140
    :goto_5
    return v2

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100016

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2f

    .line 133
    const v2, 0x7f0d01b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, barLayout:Landroid/view/View;
    const v2, 0x7f0d0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 137
    .local v1, progressBarView:Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 140
    .end local v0           #barLayout:Landroid/view/View;
    .end local v1           #progressBarView:Landroid/widget/ProgressBar;
    :cond_2f
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_52

    move v2, v3

    .line 222
    :goto_a
    return v2

    .line 180
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->onTitlebarLabelClick()V

    goto :goto_a

    .line 185
    :sswitch_f
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mFragment:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->refresh()V

    goto :goto_a

    .line 190
    :sswitch_15
    const-string v3, "camera-p.jpg"

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 191
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 196
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_20
    move-object v0, p0

    .line 197
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-array v3, v3, [Lcom/google/android/apps/plus/api/MediaRef;

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhoneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 204
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2d
    move-object v0, p0

    .line 205
    .restart local v0       #context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 206
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 211
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_38
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 212
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    goto :goto_a

    .line 217
    :sswitch_41
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "plus_photos"

    invoke-static {p0, v5}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 178
    :sswitch_data_52
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f0d01b4 -> :sswitch_f
        0x7f0d01b5 -> :sswitch_2d
        0x7f0d01b6 -> :sswitch_38
        0x7f0d01b7 -> :sswitch_41
        0x7f0d01eb -> :sswitch_15
        0x7f0d01ec -> :sswitch_20
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    if-eqz v1, :cond_6

    .line 154
    :goto_5
    return v0

    .line 149
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_20

    .line 150
    const v1, 0x7f0d01ec

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    const v1, 0x7f0d01eb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    :cond_20
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 159
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->mPhotoPicker:Z

    if-eqz v1, :cond_6

    .line 169
    :goto_5
    return-void

    .line 163
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 164
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 167
    :cond_18
    const v1, 0x7f0d01ec

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    const v1, 0x7f0d01eb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->finish()V

    .line 97
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosHomeActivity;->finish()V

    .line 174
    return-void
.end method

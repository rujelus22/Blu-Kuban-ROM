.class public Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedAlbumsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedEsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

.field private mControlPrimarySpinner:Z

.field private mCurrentSpinnerPosition:I

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mExtras:Landroid/os/Bundle;

.field private mGaiaId:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field private mPhotosHome:Z

.field private mPickerMode:I

.field private mShowLocalCameraAlbum:Z

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mControlPrimarySpinner:Z

    .line 63
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 351
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_23

    move v1, v3

    .line 352
    .local v1, hasResults:Z
    :goto_11
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v5, :cond_17

    if-nez v0, :cond_25

    :cond_17
    move v2, v3

    .line 354
    .local v2, refreshInProgress:Z
    :goto_18
    if-eqz v2, :cond_27

    if-nez v1, :cond_27

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 363
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateSpinner()V

    .line 364
    return-void

    .end local v1           #hasResults:Z
    .end local v2           #refreshInProgress:Z
    :cond_23
    move v1, v4

    .line 351
    goto :goto_11

    .restart local v1       #hasResults:Z
    :cond_25
    move v2, v4

    .line 352
    goto :goto_18

    .line 357
    .restart local v2       #refreshInProgress:Z
    :cond_27
    if-eqz v1, :cond_2d

    .line 358
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->showContent(Landroid/view/View;)V

    goto :goto_1f

    .line 360
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_1f
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 299
    packed-switch p1, :pswitch_data_16

    .line 312
    :cond_3
    :goto_3
    return-void

    .line 301
    :pswitch_4
    if-eqz p2, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 299
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "view"

    .prologue
    .line 245
    iget-object v13, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 246
    .local v3, c:Landroid/database/Cursor;
    if-nez v3, :cond_15

    .line 295
    :goto_14
    return-void

    .line 250
    :cond_15
    const/16 v12, 0x8

    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_bf

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080094

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, title:Ljava/lang/String;
    :goto_28
    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_c7

    const/4 v0, 0x0

    .line 255
    .local v0, albumId:Ljava/lang/Long;
    :goto_30
    const/4 v12, 0x4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_d2

    const/4 v11, 0x0

    .line 257
    .local v11, type:Ljava/lang/Integer;
    :goto_38
    const/4 v12, 0x6

    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_dd

    const/4 v5, 0x0

    .line 259
    .local v5, ownerId:Ljava/lang/String;
    :goto_40
    const/4 v12, 0x7

    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_e4

    const/4 v8, 0x0

    .line 261
    .local v8, streamId:Ljava/lang/String;
    :goto_48
    if-eqz v11, :cond_51

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_eb

    :cond_51
    const/4 v6, 0x0

    .line 263
    .local v6, photoOfUserId:Ljava/lang/String;
    :goto_52
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v13, "photo_picker_mode"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 266
    .local v7, photoPickerMode:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v12, v13}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoOfUserId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumType(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v2

    .line 276
    .local v2, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    if-eqz v7, :cond_f1

    .line 277
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v13, "allow_crop"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    .local v1, allowCrop:Z
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v13, "photo_picker_title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ef

    .line 280
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v13, "photo_picker_title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 285
    .local v10, titleResourceId:Ljava/lang/Integer;
    :goto_a2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerMode(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerTitleResourceId(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAllowCrop(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    .line 289
    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v4

    .line 290
    .local v4, intent:Landroid/content/Intent;
    const/4 v12, 0x1

    invoke-virtual {p0, v4, v12}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_14

    .line 250
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #allowCrop:Z
    .end local v2           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #ownerId:Ljava/lang/String;
    .end local v6           #photoOfUserId:Ljava/lang/String;
    .end local v7           #photoPickerMode:I
    .end local v8           #streamId:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #titleResourceId:Ljava/lang/Integer;
    .end local v11           #type:Ljava/lang/Integer;
    :cond_bf
    const/16 v12, 0x8

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_28

    .line 253
    .restart local v9       #title:Ljava/lang/String;
    :cond_c7
    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_30

    .line 255
    .restart local v0       #albumId:Ljava/lang/Long;
    :cond_d2
    const/4 v12, 0x4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_38

    .line 257
    .restart local v11       #type:Ljava/lang/Integer;
    :cond_dd
    const/4 v12, 0x6

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_40

    .line 259
    .restart local v5       #ownerId:Ljava/lang/String;
    :cond_e4
    const/4 v12, 0x7

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_48

    .line 261
    .restart local v8       #streamId:Ljava/lang/String;
    :cond_eb
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;

    goto/16 :goto_52

    .line 282
    .restart local v1       #allowCrop:Z
    .restart local v2       #builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    .restart local v6       #photoOfUserId:Ljava/lang/String;
    .restart local v7       #photoPickerMode:I
    :cond_ef
    const/4 v10, 0x0

    .restart local v10       #titleResourceId:Ljava/lang/Integer;
    goto :goto_a2

    .line 292
    .end local v1           #allowCrop:Z
    .end local v10           #titleResourceId:Ljava/lang/Integer;
    :cond_f1
    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v4

    .line 293
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_58

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.apps.plus.PhotosHomeFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.USER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mUserName:Ljava/lang/String;

    .line 107
    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "person_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPersonId:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "photos_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPhotosHome:Z

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "photos_show_camera_album"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mShowLocalCameraAlbum:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    const-string v1, "photo_picker_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPickerMode:I

    .line 114
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPickerMode:I

    if-eqz v0, :cond_57

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->invalidateActionBar()V

    .line 117
    :cond_57
    return-void

    .line 104
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    goto :goto_20
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mUserName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPhotosHome:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mShowLocalCameraAlbum:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 122
    const v3, 0x7f03008f

    invoke-super {p0, p1, p2, p3, v3}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, view:Landroid/view/View;
    const v3, 0x7f09013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 127
    .local v0, gridView:Lcom/google/android/apps/plus/views/ColumnGridView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v1

    .line 128
    .local v1, screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v3, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v3, :cond_56

    const/4 v3, 0x1

    :goto_1e
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setColumnCount(I)V

    .line 130
    iget v3, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 131
    iget v3, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v4, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v5, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v6, v1, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 135
    new-instance v3, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v7, v0, p0}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 140
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v3, 0x7f080097

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 143
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V

    .line 145
    return-object v2

    .line 128
    :cond_56
    const/4 v3, 0x2

    goto :goto_1e
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PhotoAlbumsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->onAsyncData()V

    .line 231
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 158
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 179
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mControlPrimarySpinner:Z

    if-eqz v1, :cond_18

    .line 180
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPickerMode:I

    if-nez v1, :cond_1f

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createSpinnerAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 182
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mCurrentSpinnerPosition:I

    .line 183
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mCurrentSpinnerPosition:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 189
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_18
    :goto_18
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 191
    return-void

    .line 185
    :cond_1f
    const v1, 0x7f0800b5

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(I)V

    goto :goto_18
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 8
    .parameter "position"

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mControlPrimarySpinner:Z

    if-eqz v1, :cond_d

    .line 199
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mCurrentSpinnerPosition:I

    if-eq v1, p1, :cond_d

    .line 200
    packed-switch p1, :pswitch_data_20

    .line 213
    :goto_b
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mCurrentSpinnerPosition:I

    .line 216
    :cond_d
    return-void

    .line 202
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPersonId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 200
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 152
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    .line 165
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.USER_NAME"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_15
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 371
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->ALBUMS_OF_USER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 372
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 336
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->refresh()V

    .line 337
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mPhotosHome:Z

    if-eqz v0, :cond_1f

    .line 338
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getPhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 342
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V

    .line 343
    return-void

    .line 340
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_17
.end method

.method public relinquishPrimarySpinner()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mControlPrimarySpinner:Z

    .line 172
    return-void
.end method

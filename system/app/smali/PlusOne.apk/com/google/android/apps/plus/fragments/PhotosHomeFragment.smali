.class public Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "PhotosHomeFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/Refreshable;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mIntent:Landroid/content/Intent;

.field private mPhotosHome:Z

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mUserId:J

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 283
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 284
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_27

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_27

    move v1, v4

    .line 285
    .local v1, hasResults:Z
    :goto_13
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v3, :cond_19

    if-nez v0, :cond_29

    :cond_19
    move v2, v4

    .line 287
    .local v2, refreshInProgress:Z
    :goto_1a
    if-eqz v2, :cond_2b

    if-nez v1, :cond_2b

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 296
    :goto_21
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 297
    return-void

    .end local v1           #hasResults:Z
    .end local v2           #refreshInProgress:Z
    :cond_27
    move v1, v5

    .line 284
    goto :goto_13

    .restart local v1       #hasResults:Z
    :cond_29
    move v2, v5

    .line 285
    goto :goto_1a

    .line 290
    .restart local v2       #refreshInProgress:Z
    :cond_2b
    if-eqz v1, :cond_31

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->showContent(Landroid/view/View;)V

    goto :goto_21

    .line 293
    :cond_31
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_21
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
    packed-switch p1, :pswitch_data_16

    .line 232
    :cond_3
    :goto_3
    return-void

    .line 221
    :pswitch_4
    if-eqz p2, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 219
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_1e

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.plus.PhotosHomeFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    .line 101
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.USER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserName:Ljava/lang/String;

    .line 104
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photos_home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mPhotosHome:Z

    .line 107
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
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
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photo_picker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 154
    .local v7, usePhotoPicker:Z
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mPhotosHome:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 112
    const v1, 0x7f030063

    invoke-super {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mListView:Landroid/widget/AbsListView;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    const v1, 0x7f070075

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V

    .line 126
    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 34
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/Cursor;

    .line 174
    .local v24, c:Landroid/database/Cursor;
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, title:Ljava/lang/String;
    :goto_23
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v7, 0x0

    .line 179
    .local v7, albumId:Ljava/lang/Long;
    :goto_2d
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a4

    const/16 v26, 0x0

    .line 181
    .local v26, type:Ljava/lang/Integer;
    :goto_38
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    const/4 v8, 0x0

    .line 183
    .local v8, ownerId:Ljava/lang/Long;
    :goto_42
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_bc

    const/4 v9, 0x0

    .line 185
    .local v9, streamId:Ljava/lang/String;
    :goto_4c
    if-eqz v26, :cond_55

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c4

    :cond_55
    const/4 v11, 0x0

    .line 187
    .local v11, photoOfUserId:Ljava/lang/Long;
    :goto_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "photo_picker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    .line 188
    .local v27, usePhotoPicker:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "allow_crop"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 190
    .local v12, allowCrop:Z
    if-eqz v26, :cond_e3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e3

    .line 191
    if-eqz v27, :cond_cd

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v12}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhonePickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v25

    .line 196
    .local v25, startIntent:Landroid/content/Intent;
    :goto_84
    if-eqz v27, :cond_db

    .line 197
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    :goto_8e
    return-void

    .line 174
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #albumId:Ljava/lang/Long;
    .end local v8           #ownerId:Ljava/lang/Long;
    .end local v9           #streamId:Ljava/lang/String;
    .end local v11           #photoOfUserId:Ljava/lang/Long;
    .end local v12           #allowCrop:Z
    .end local v25           #startIntent:Landroid/content/Intent;
    .end local v26           #type:Ljava/lang/Integer;
    .end local v27           #usePhotoPicker:Z
    :cond_8f
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    .line 177
    .restart local v6       #title:Ljava/lang/String;
    :cond_98
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2d

    .line 179
    .restart local v7       #albumId:Ljava/lang/Long;
    :cond_a4
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_38

    .line 181
    .restart local v26       #type:Ljava/lang/Integer;
    :cond_b0
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_42

    .line 183
    .restart local v8       #ownerId:Ljava/lang/Long;
    :cond_bc
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4c

    .line 185
    .restart local v9       #streamId:Ljava/lang/String;
    :cond_c4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_56

    .line 191
    .restart local v11       #photoOfUserId:Ljava/lang/Long;
    .restart local v12       #allowCrop:Z
    .restart local v27       #usePhotoPicker:Z
    :cond_cd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhoneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v25

    goto :goto_84

    .line 199
    .restart local v25       #startIntent:Landroid/content/Intent;
    :cond_db
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_8e

    .line 204
    .end local v25           #startIntent:Landroid/content/Intent;
    :cond_e3
    if-eqz v27, :cond_101

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    const/4 v10, 0x0

    invoke-static/range {v2 .. v12}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/content/Intent;

    move-result-object v25

    .line 210
    .restart local v25       #startIntent:Landroid/content/Intent;
    :goto_f6
    if-eqz v27, :cond_120

    .line 211
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8e

    .line 204
    .end local v25           #startIntent:Landroid/content/Intent;
    :cond_101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v11

    invoke-static/range {v13 .. v23}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    goto :goto_f6

    .line 213
    .restart local v25       #startIntent:Landroid/content/Intent;
    :cond_120
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8e
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
    .line 160
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->onAsyncData()V

    .line 164
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 169
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 133
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    .line 146
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    const-string v0, "com.google.android.apps.plus.PhotosHomeFragment.USER_NAME"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_19
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public refresh()V
    .registers 5

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mPhotosHome:Z

    if-eqz v0, :cond_1c

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getPhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 275
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V

    .line 276
    return-void

    .line 273
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_14
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 6
    .parameter "userName"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 263
    :cond_8
    :goto_8
    return-void

    .line 255
    :cond_9
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserName:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 258
    .local v0, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 259
    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;

    .line 260
    .local v1, photoLoader:Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridLoader;->setDisplayName(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressBarView"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 240
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, myView:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 244
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V

    .line 246
    :cond_10
    return-void
.end method

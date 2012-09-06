.class public Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedPhotosFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;
.implements Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$AlbumDetailsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedEsFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;",
        "Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;"
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

.field private mAlbumCount:I

.field private mAlbumId:Ljava/lang/Long;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumType:Ljava/lang/Integer;

.field private mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

.field private mCircleId:Ljava/lang/String;

.field private mCount:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mEventId:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field private mHereFromNotification:Z

.field private mOwnerId:Ljava/lang/String;

.field private mPhotoOfUserId:Ljava/lang/String;

.field private mPickerMode:I

.field private mPickerShareWithZeroSelected:Z

.field private mPickerTitleResourceId:I

.field private mRefreshable:Z

.field private final mSelectedPhotoMediaRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumCount:I

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    .line 144
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mDateFormat:Ljava/text/DateFormat;

    .line 172
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->handlePhotosServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Lcom/google/android/apps/plus/views/PhotoAlbumView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/text/DateFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateContextualActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showDeleteConfirmationDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    return-void
.end method

.method private clearDeletePhotosDialog()V
    .registers 4

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 858
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_11

    .line 859
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 863
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    .line 864
    return-void
.end method

.method private doDeleteSelectedPhotos()V
    .registers 11

    .prologue
    .line 823
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v5, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, ownerId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 827
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 828
    .local v6, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/google/android/apps/plus/service/EsService;->deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 848
    .end local v6           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0005

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, deletePendingTitle:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v1

    .line 852
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const-string v8, "progress_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 853
    .end local v0           #deletePendingTitle:Ljava/lang/String;
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    :cond_45
    :goto_45
    return-void

    .line 830
    :cond_46
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 831
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 832
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 834
    const-string v7, "HostedPhotosFragment"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 835
    const-string v7, "HostedPhotosFragment"

    const-string v8, "Found a photo from phone which is not owned by the current user."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 840
    :cond_79
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 844
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v9, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-static {v7, v8, v4, v5, v9}, Lcom/google/android/apps/plus/service/EsService;->photoAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_26
.end method

.method private fetchContent()V
    .registers 5

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 1162
    .local v0, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez v0, :cond_c

    .line 1175
    :goto_b
    return-void

    .line 1167
    :cond_c
    instance-of v2, v0, Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v2, :cond_1c

    move-object v1, v0

    .line 1168
    check-cast v1, Lcom/google/android/apps/plus/phone/Pageable;

    .line 1169
    .local v1, pageableLoader:Lcom/google/android/apps/plus/phone/Pageable;
    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1170
    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/Pageable;->loadMore()V

    .line 1174
    .end local v1           #pageableLoader:Lcom/google/android/apps/plus/phone/Pageable;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V

    goto :goto_b
.end method

.method private gotoPhotoView(Landroid/view/View;)V
    .registers 27
    .parameter "view"

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "mediarefs"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_111

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "mediarefs"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, [Lcom/google/android/apps/plus/api/MediaRef;

    check-cast v6, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object v15, v6

    .line 1038
    .local v15, mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :goto_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "album_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_114

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "album_id"

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1040
    .local v9, albumId:Ljava/lang/Long;
    :goto_39
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "stream_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_117

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "stream_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1042
    .local v22, streamId:Ljava/lang/String;
    :goto_4f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "circle_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "circle_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1044
    .local v13, circleId:Ljava/lang/String;
    :goto_65
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "photos_of_user_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "photos_of_user_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1046
    .local v17, photoOfUserId:Ljava/lang/String;
    :goto_7b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "photo_picker_mode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1047
    .local v18, photoPickerMode:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v7, "allow_crop"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1049
    .local v10, allowCrop:Z
    const v6, 0x7f09003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1050
    .local v21, position:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1051
    .local v12, c:Landroid/database/Cursor;
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1052
    const/16 v6, 0xb

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1053
    .local v4, photoId:J
    const/16 v6, 0x8

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, ownerGaiaId:Ljava/lang/String;
    const/16 v6, 0xc

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1055
    .local v20, photoUrl:Ljava/lang/String;
    const/16 v6, 0xe

    invoke-interface {v12, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_122

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 1060
    .local v8, mediaType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_cb
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    if-eqz v6, :cond_125

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_125

    if-nez v15, :cond_125

    .line 1063
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1064
    .local v2, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v6, 0x1

    new-array v15, v6, [Lcom/google/android/apps/plus/api/MediaRef;

    .end local v15           #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v6, 0x0

    aput-object v2, v15, v6

    .line 1069
    .restart local v15       #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :goto_f4
    if-eqz v18, :cond_12e

    .line 1070
    const/16 v6, 0xa

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1071
    .local v19, photoTitle:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0, v2, v10}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1094
    .end local v19           #photoTitle:Ljava/lang/String;
    :goto_110
    return-void

    .line 1036
    .end local v2           #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #ownerGaiaId:Ljava/lang/String;
    .end local v4           #photoId:J
    .end local v8           #mediaType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .end local v9           #albumId:Ljava/lang/Long;
    .end local v10           #allowCrop:Z
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #circleId:Ljava/lang/String;
    .end local v15           #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v17           #photoOfUserId:Ljava/lang/String;
    .end local v18           #photoPickerMode:I
    .end local v20           #photoUrl:Ljava/lang/String;
    .end local v21           #position:I
    .end local v22           #streamId:Ljava/lang/String;
    :cond_111
    const/4 v15, 0x0

    goto/16 :goto_1b

    .line 1038
    .restart local v15       #mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    :cond_114
    const/4 v9, 0x0

    goto/16 :goto_39

    .line 1040
    .restart local v9       #albumId:Ljava/lang/Long;
    :cond_117
    const/16 v22, 0x0

    goto/16 :goto_4f

    .line 1042
    .restart local v22       #streamId:Ljava/lang/String;
    :cond_11b
    const/4 v13, 0x0

    goto/16 :goto_65

    .line 1044
    .restart local v13       #circleId:Ljava/lang/String;
    :cond_11e
    const/16 v17, 0x0

    goto/16 :goto_7b

    .line 1055
    .restart local v3       #ownerGaiaId:Ljava/lang/String;
    .restart local v4       #photoId:J
    .restart local v10       #allowCrop:Z
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v17       #photoOfUserId:Ljava/lang/String;
    .restart local v18       #photoPickerMode:I
    .restart local v20       #photoUrl:Ljava/lang/String;
    .restart local v21       #position:I
    :cond_122
    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_cb

    .line 1066
    .restart local v8       #mediaType:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :cond_125
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v7, 0x0

    move-object/from16 v6, v20

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .restart local v2       #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_f4

    .line 1074
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v14

    .line 1075
    .local v14, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    instance-of v6, v14, Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v6, :cond_193

    check-cast v14, Lcom/google/android/apps/plus/phone/Pageable;

    .end local v14           #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-interface {v14}, Lcom/google/android/apps/plus/phone/Pageable;->getCurrentPage()I

    move-result v16

    .line 1079
    .local v16, pageHint:I
    :goto_141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v11

    .line 1081
    .local v11, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v11, v6}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setCircleId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoOfUserId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEventId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setEventId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPageHint(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 1092
    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_110

    .line 1075
    .end local v11           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .end local v16           #pageHint:I
    .restart local v14       #loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    :cond_193
    const/16 v16, -0x1

    goto :goto_141
.end method

.method private handlePhotosServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_d

    .line 255
    :cond_c
    :goto_c
    return-void

    .line 246
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 248
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 249
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0801ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, toastText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 254
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->clearDeletePhotosDialog()V

    goto :goto_c
.end method

.method private invalidateContextualActionBar()V
    .registers 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    .line 981
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 985
    :goto_9
    return-void

    .line 983
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateActionBar()V

    goto :goto_9
.end method

.method private isInstantUploadAlbum()Z
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isLocalCameraAlbum()Z
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private loadAlbumName()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1207
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    if-eqz v5, :cond_27

    move v0, v3

    .line 1208
    .local v0, hasAlbumAndOwner:Z
    :goto_b
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1209
    .local v2, needName:Z
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumCount:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_29

    move v1, v3

    .line 1210
    .local v1, needCount:Z
    :goto_17
    if-eqz v0, :cond_2b

    if-nez v2, :cond_1d

    if-eqz v1, :cond_2b

    .line 1211
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1215
    :cond_26
    :goto_26
    return-void

    .end local v0           #hasAlbumAndOwner:Z
    .end local v1           #needCount:Z
    .end local v2           #needName:Z
    :cond_27
    move v0, v4

    .line 1207
    goto :goto_b

    .restart local v0       #hasAlbumAndOwner:Z
    .restart local v2       #needName:Z
    :cond_29
    move v1, v4

    .line 1209
    goto :goto_17

    .line 1212
    .restart local v1       #needCount:Z
    :cond_2b
    if-nez v2, :cond_26

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateActionBar()V

    goto :goto_26
.end method

.method private showContextualActionBarV11()V
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_5

    .line 974
    :goto_4
    return-void

    .line 910
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_10

    .line 911
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 973
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mActionMode:Landroid/view/ActionMode;

    goto :goto_4
.end method

.method private showDeleteConfirmationDialog()V
    .registers 9

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 787
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 789
    .local v0, count:I
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 790
    const v2, 0x7f0e0004

    .line 794
    .local v2, message:I
    :goto_13
    const v4, 0x7f0e0002

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0014

    invoke-virtual {v3, v6, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08020a

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 799
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 800
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "delete_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 801
    return-void

    .line 792
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v2           #message:I
    :cond_3e
    const v2, 0x7f0e0003

    .restart local v2       #message:I
    goto :goto_13
.end method

.method private updatePickerMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 867
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    .line 869
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    packed-switch v0, :pswitch_data_44

    .line 896
    :cond_7
    :goto_7
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateContextualActionBar()V

    .line 897
    return-void

    .line 871
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 872
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 873
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->endSelectionMode()V

    goto :goto_7

    .line 878
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 879
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->startSelectionMode()V

    goto :goto_7

    .line 884
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_39

    .line 885
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->startSelectionMode()V

    .line 887
    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 888
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showContextualActionBarV11()V

    goto :goto_7

    .line 869
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_1e
        :pswitch_2c
    .end packed-switch
.end method

.method private updateView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1182
    if-nez p1, :cond_5

    .line 1201
    :goto_4
    return-void

    .line 1186
    :cond_5
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1187
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_26

    move v1, v3

    .line 1188
    .local v1, hasResults:Z
    :goto_14
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v5, :cond_1a

    if-nez v0, :cond_28

    :cond_1a
    move v2, v3

    .line 1190
    .local v2, refreshInProgress:Z
    :goto_1b
    if-eqz v2, :cond_2a

    if-nez v1, :cond_2a

    .line 1191
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1200
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateSpinner()V

    goto :goto_4

    .end local v1           #hasResults:Z
    .end local v2           #refreshInProgress:Z
    :cond_26
    move v1, v4

    .line 1187
    goto :goto_14

    .restart local v1       #hasResults:Z
    :cond_28
    move v2, v4

    .line 1188
    goto :goto_1b

    .line 1193
    .restart local v2       #refreshInProgress:Z
    :cond_2a
    if-eqz v1, :cond_30

    .line 1194
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showContent(Landroid/view/View;)V

    goto :goto_22

    .line 1196
    :cond_30
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_22
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    if-nez v0, :cond_6

    .line 627
    const/4 v0, 0x1

    .line 629
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->isEmpty()Z

    move-result v0

    goto :goto_5
.end method

.method public onActionButtonClicked(I)V
    .registers 7
    .parameter "actionId"

    .prologue
    .line 747
    packed-switch p1, :pswitch_data_2e

    .line 764
    :goto_3
    return-void

    .line 749
    :pswitch_4
    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mHereFromNotification:Z

    if-eqz v3, :cond_11

    .line 751
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->shareSelectedPhotos()V

    goto :goto_3

    .line 753
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 754
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 755
    .local v2, result:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 757
    .local v1, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v3, "mediarefs"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 758
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 759
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 747
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1101
    packed-switch p1, :pswitch_data_16

    .line 1114
    :cond_3
    :goto_3
    return-void

    .line 1103
    :pswitch_4
    if-eqz p2, :cond_3

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 1101
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->gotoPhotoView(Landroid/view/View;)V

    .line 1011
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, extraPickerMode:Ljava/lang/Integer;
    if-eqz p1, :cond_68

    .line 275
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    .line 276
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "INTENT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 277
    const-string v3, "ALBUM_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 278
    const-string v3, "ALBUM_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    .line 280
    :cond_28
    const-string v3, "STATE_PICKER_MODE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 281
    const-string v3, "STATE_PICKER_MODE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    const-string v3, "STATE_PICKER_TITLE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerTitleResourceId:I

    .line 283
    const-string v3, "STATE_PICKER_SHARE_ON_ZERO"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerShareWithZeroSelected:Z

    .line 286
    :cond_4a
    const-string v3, "SELECTED_ITEMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 287
    const-string v3, "SELECTED_ITEMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 289
    .local v2, mediaRefs:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_59
    array-length v3, v2

    if-ge v1, v3, :cond_6e

    .line 290
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    aget-object v3, v2, v1

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 294
    .end local v1           #i:I
    .end local v2           #mediaRefs:[Landroid/os/Parcelable;
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    .line 297
    :cond_6e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 299
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    .line 302
    :cond_82
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    if-nez v3, :cond_9a

    .line 303
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    .line 306
    :cond_9a
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 308
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_id"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    .line 311
    :cond_b4
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 313
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "album_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    .line 316
    :cond_cc
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "stream_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 318
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "stream_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mStreamId:Ljava/lang/String;

    .line 321
    :cond_e0
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "event_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 323
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "event_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEventId:Ljava/lang/String;

    .line 326
    :cond_f4
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "circle_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 328
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "circle_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mCircleId:Ljava/lang/String;

    .line 331
    :cond_108
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photos_of_user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 333
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photos_of_user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPhotoOfUserId:Ljava/lang/String;

    .line 336
    :cond_11c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "notif_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 337
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mHereFromNotification:Z

    .line 340
    :cond_129
    if-nez v0, :cond_142

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 342
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 346
    :cond_142
    if-eqz v0, :cond_14a

    .line 347
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    .line 350
    :cond_14a
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 352
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerTitleResourceId:I

    .line 355
    :cond_15e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_share_on_zero"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 357
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_share_on_zero"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerShareWithZeroSelected:Z

    .line 363
    :cond_172
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19c

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_selected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 365
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    const-string v4, "photo_picker_selected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 367
    .restart local v2       #mediaRefs:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_18d
    array-length v3, v2

    if-ge v1, v3, :cond_19c

    .line 368
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    aget-object v3, v2, v1

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    .line 372
    .end local v1           #i:I
    .end local v2           #mediaRefs:[Landroid/os/Parcelable;
    :cond_19c
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->loadAlbumName()V

    .line 373
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
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
    const/4 v4, 0x0

    .line 555
    packed-switch p1, :pswitch_data_56

    move-object v0, v4

    .line 574
    :goto_5
    return-object v0

    .line 557
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 558
    new-instance v0, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/CameraAlbumLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_5

    .line 560
    :cond_18
    new-instance v0, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mCircleId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPhotoOfUserId:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mStreamId:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEventId:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 566
    :pswitch_30
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_ALBUM_AND_OWNER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 569
    .local v9, albumUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v9, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 570
    .local v2, loaderUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$AlbumDetailsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 555
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_6
        :pswitch_30
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 381
    const v0, 0x7f03005a

    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoAlbumView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v8

    .line 387
    .local v8, sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget v1, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setItemMargin(I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget v1, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v3, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v4, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    iget v5, v8, Lcom/google/android/apps/plus/phone/ScreenMetrics;->itemMargin:I

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->setPadding(IIII)V

    .line 391
    new-instance v0, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumType:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Integer;Lcom/google/android/apps/plus/views/ColumnGridView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter$ViewUseListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->setSelectedMediaRefs(Ljava/util/HashSet;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelector(I)V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 400
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    const v1, 0x7f080098

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOnScrollListener(Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    new-instance v1, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->registerSelectionListener(Lcom/google/android/apps/plus/views/ColumnGridView$ItemSelectionListener;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    invoke-virtual {v0, v9}, Lcom/google/android/apps/plus/views/PhotoAlbumView;->enableDateDisplay(Z)V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumView:Lcom/google/android/apps/plus/views/PhotoAlbumView;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 492
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onDestroyView()V

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->unregisterSelectionListener()V

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOnScrollListener(Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;)V

    .line 495
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 816
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 820
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 812
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 805
    const-string v0, "delete_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 806
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->doDeleteSelectedPhotos()V

    .line 808
    :cond_b
    return-void
.end method

.method public onDoneButtonClick()V
    .registers 2

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    .line 740
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "data"
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x1

    .line 582
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    .line 619
    :cond_8
    :goto_8
    return-void

    .line 584
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 585
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V

    .line 589
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->loadAlbumName()V

    .line 591
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 592
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->refresh()V

    goto :goto_8

    .line 599
    :pswitch_22
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 600
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, albumName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    if-nez v1, :cond_38

    .line 602
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->invalidateActionBar()V

    .line 606
    :cond_38
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 607
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, -0x2

    :goto_44
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumCount:I

    goto :goto_8

    :cond_47
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_44

    .line 582
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_22
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 639
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isInstantUploadAlbum()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1016
    :cond_c
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    .line 1017
    const v1, 0x7f09003d

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1018
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->select(I)V

    .line 1019
    const/4 v1, 0x1

    .line 1021
    .end local v0           #position:I
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 768
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 778
    const/4 v0, 0x0

    .line 782
    :goto_8
    return v0

    .line 770
    :pswitch_9
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updatePickerMode(I)V

    .line 782
    :goto_d
    const/4 v0, 0x1

    goto :goto_8

    .line 774
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->showDeleteConfirmationDialog()V

    goto :goto_d

    .line 768
    nop

    :pswitch_data_14
    .packed-switch 0x7f0902f0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 521
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 523
    return-void
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 12
    .parameter "actionBar"

    .prologue
    const v9, 0x7f0e0001

    const v8, 0x7f0800c0

    const v7, 0x7f0200a4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 646
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 648
    invoke-virtual {p1, p0}, Lcom/google/android/apps/plus/views/HostActionBar;->setOnDoneButtonClickListener(Lcom/google/android/apps/plus/views/HostActionBar$OnDoneButtonClickListener;)V

    .line 650
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    packed-switch v2, :pswitch_data_8a

    .line 688
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->finishContextActionMode()V

    .line 690
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 691
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(Ljava/lang/String;)V

    .line 693
    :cond_26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 694
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 699
    :cond_2f
    :goto_2f
    return-void

    .line 652
    :pswitch_30
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerTitleResourceId:I

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(I)V

    .line 653
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 654
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    goto :goto_2f

    .line 659
    :pswitch_3f
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 660
    .local v0, count:I
    if-gtz v0, :cond_4b

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerShareWithZeroSelected:Z

    if-eqz v2, :cond_62

    .line 661
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v9, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, selected:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1, v5, v7, v8}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    goto :goto_2f

    .line 668
    .end local v1           #selected:Ljava/lang/String;
    :cond_62
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerTitleResourceId:I

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(I)V

    goto :goto_2f

    .line 674
    .end local v0           #count:I
    :pswitch_68
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->startContextActionMode()V

    .line 676
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 677
    .restart local v0       #count:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v9, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1       #selected:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showTitle(Ljava/lang/String;)V

    .line 681
    if-lez v0, :cond_2f

    .line 682
    invoke-virtual {p1, v5, v7, v8}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    goto :goto_2f

    .line 650
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_3f
        :pswitch_68
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    const v3, 0x7f0902f0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 704
    .local v2, selectItemMenu:Landroid/view/MenuItem;
    const v3, 0x7f0902f1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 706
    .local v1, deleteMenu:Landroid/view/MenuItem;
    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    packed-switch v3, :pswitch_data_4e

    .line 732
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 708
    :pswitch_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isLocalCameraAlbum()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->isInstantUploadAlbum()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 709
    :cond_22
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 710
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15

    .line 719
    :pswitch_29
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 721
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 722
    .local v0, count:I
    if-lez v0, :cond_4a

    .line 723
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0014

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 725
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15

    .line 727
    :cond_4a
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15

    .line 706
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_29
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 511
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->onResume()V

    .line 514
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 530
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4c

    .line 533
    const-string v1, "INTENT"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 534
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 535
    const-string v1, "ALBUM_NAME"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_19
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    if-eqz v1, :cond_32

    .line 538
    const-string v1, "STATE_PICKER_MODE"

    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v1, "STATE_PICKER_TITLE"

    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerTitleResourceId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v1, "STATE_PICKER_SHARE_ON_ZERO"

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPickerShareWithZeroSelected:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4c

    .line 543
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 544
    .local v0, selectedItems:[Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 545
    const-string v1, "SELECTED_ITEMS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 548
    .end local v0           #selectedItems:[Lcom/google/android/apps/plus/api/MediaRef;
    :cond_4c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 502
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStop()V

    .line 503
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->onStop()V

    .line 504
    return-void
.end method

.method public onViewUsed(I)V
    .registers 9
    .parameter "position"

    .prologue
    .line 992
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAdapter:Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/AlbumGridViewAdapter;->getCount()I

    move-result v0

    .line 994
    .local v0, currentCount:I
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mCount:I

    if-eq v1, v0, :cond_f

    .line 995
    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mCount:I

    .line 996
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mRefreshable:Z

    .line 999
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mRefreshable:Z

    if-eqz v1, :cond_25

    int-to-double v1, p1

    int-to-double v3, v0

    const-wide v5, 0x3fe3333333333333L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_25

    .line 1000
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->fetchContent()V

    .line 1001
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mRefreshable:Z

    .line 1003
    :cond_25
    return-void
.end method

.method public recordNavigationAction()V
    .registers 1

    .prologue
    .line 1153
    return-void
.end method

.method public refresh()V
    .registers 9

    .prologue
    .line 1121
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->refresh()V

    .line 1123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mStreamId:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 1124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mStreamId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1145
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V

    .line 1146
    return-void

    .line 1126
    :cond_2e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPhotoOfUserId:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mPhotoOfUserId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_26

    .line 1129
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    if-eqz v0, :cond_5e

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAlbumId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_26

    .line 1132
    :cond_5e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEventId:Ljava/lang/String;

    if-eqz v0, :cond_77

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mOwnerId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_26

    .line 1136
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v7

    .line 1137
    .local v7, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v7, :cond_88

    move-object v6, v7

    .line 1138
    check-cast v6, Lcom/google/android/apps/plus/phone/AlbumViewLoader;

    .line 1139
    .local v6, albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/AlbumViewLoader;->resetPaging()V

    .line 1141
    .end local v6           #albumLoader:Lcom/google/android/apps/plus/phone/AlbumViewLoader;
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mCircleId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->refreshPhotosFromCircleList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_26
.end method

.method protected shareSelectedPhotos()V
    .registers 5

    .prologue
    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mSelectedPhotoMediaRefs:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1030
    .local v1, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 1032
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->startActivity(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method

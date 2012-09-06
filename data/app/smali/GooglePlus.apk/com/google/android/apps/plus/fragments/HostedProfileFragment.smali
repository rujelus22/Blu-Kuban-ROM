.class public Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.super Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.source "HostedProfileFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
.implements Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;
.implements Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;
.implements Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;
.implements Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursorFactory;,
        Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;,
        Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/HostedStreamFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;",
        "Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;",
        "Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;",
        "Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;",
        "Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;"
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

.field private mBlockInProgress:Z

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mContactLoaderActive:Z

.field private mContext:Landroid/content/Context;

.field private mControlPrimarySpinner:Z

.field private mCurrentSpinnerPosition:I

.field private mFavIconsLoaderActive:Z

.field private mFaviconDomains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mFavicons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasGaiaId:Z

.field private mInsertCameraPhotoRequestId:Ljava/lang/Integer;

.field private mIsBlocked:Z

.field private mIsMyProfile:Z

.field private mIsPlusPage:Z

.field private mLandscape:Z

.field private mMapLoaderActive:Z

.field private mPersonId:Ljava/lang/String;

.field private final mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacesMapUrl:Ljava/lang/String;

.field private mPlusOneByMe:Z

.field private mPlusOneId:Ljava/lang/String;

.field private mPlusOneLoaderActive:Z

.field private mPlusOneRequestId:Ljava/lang/Integer;

.field private mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

.field private final mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileAndContactLoaderActive:Z

.field private mProfileIsExpanded:Z

.field private mProfilePendingRequestId:Ljava/lang/Integer;

.field private final mProfileServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mReportAbuseRequestId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "profile_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;-><init>()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHandler:Landroid/os/Handler;

    .line 148
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mControlPrimarySpinner:Z

    .line 168
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    .line 169
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneLoaderActive:Z

    .line 170
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactLoaderActive:Z

    .line 171
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z

    .line 172
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z

    .line 178
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 257
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 412
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 459
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 506
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 527
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->isRefreshNeeded(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavicons:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlerInsertCameraPhoto(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactLoaderActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsPlusPage:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setPlacesMapUrl(Ljava/lang/String;)V

    return-void
.end method

.method private canShowConversationActions()Z
    .registers 2

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactLoaderActive:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsPlusPage:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsBlocked:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mError:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private canShowRefreshInActionBar()Z
    .registers 3

    .prologue
    .line 879
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v0

    .line 880
    .local v0, metrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v1, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mLandscape:Z

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private createPlusOne()V
    .registers 4

    .prologue
    .line 1644
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    .local v0, gaiaId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isProfilePlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1646
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/service/EsService;->createProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 1648
    :cond_1a
    return-void
.end method

.method private deletePlusOne()V
    .registers 5

    .prologue
    .line 1654
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    .local v0, gaiaId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->isProfilePlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1656
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneId:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/service/EsService;->deleteProfilePlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 1659
    :cond_1c
    return-void
.end method

.method private handlerInsertCameraPhoto(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1426
    :cond_c
    :goto_c
    return-void

    .line 1422
    :cond_d
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->insertCameraPhoto(Ljava/lang/String;)V

    .line 1424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 1425
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    goto :goto_c
.end method

.method private insertCameraPhoto(Ljava/lang/String;)V
    .registers 12
    .parameter "mediaLocation"

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 1587
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1589
    .local v7, activity:Landroid/app/Activity;
    if-nez p1, :cond_24

    .line 1590
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0801b6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1600
    :goto_1a
    instance-of v1, v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v1, :cond_23

    .line 1601
    check-cast v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    .end local v7           #activity:Landroid/app/Activity;
    invoke-interface {v7}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->hideInsertCameraPhotoDialog()V

    .line 1603
    :cond_23
    return-void

    .line 1593
    .restart local v7       #activity:Landroid/app/Activity;
    :cond_24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1594
    .local v5, imageUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v2, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1595
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f08032d

    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2, v0, v9}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v8

    .line 1597
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v8, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a
.end method

.method private isRefreshNeeded(Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)Z
    .registers 12
    .parameter "data"

    .prologue
    const/4 v7, 0x3

    const-wide/32 v8, 0x2bf20

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1489
    .local v0, now:J
    iget-wide v5, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileUpdateTime:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v8

    if-lez v2, :cond_22

    .line 1490
    const-string v2, "HostedProfileFragment"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1491
    const-string v2, "HostedProfileFragment"

    const-string v4, "Refreshing because profile info is stale."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_21
    :goto_21
    return v3

    .line 1496
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v2, :cond_36

    iget-wide v5, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneUpdateTime:J

    sub-long v5, v0, v5

    cmp-long v2, v5, v8

    if-lez v2, :cond_87

    .line 1498
    :cond_36
    const-string v2, "HostedProfileFragment"

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1499
    const-string v5, "HostedProfileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing because plus info is stale. ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " && ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-nez v2, :cond_85

    move v2, v3

    :goto_60
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " || "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p1, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneUpdateTime:J

    sub-long v6, v0, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_73

    move v4, v3

    :cond_73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_85
    move v2, v4

    goto :goto_60

    :cond_87
    move v3, v4

    .line 1507
    goto :goto_21
.end method

.method private safeStartActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 595
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 601
    :cond_3
    :goto_3
    return-void

    .line 596
    :catch_4
    move-exception v0

    .line 597
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "HostedProfileFragment"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    const-string v1, "HostedProfileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private setPersonBlocked(Z)V
    .registers 10
    .parameter "blocked"

    .prologue
    const/4 v7, 0x1

    .line 743
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/BlockFragment;->getInstance(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/BlockFragment;

    move-result-object v6

    .line 745
    .local v6, dialog:Lcom/google/android/apps/plus/fragments/BlockFragment;
    const/4 v0, 0x0

    invoke-virtual {v6, p0, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 746
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/fragments/BlockFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 747
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    .line 748
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setBlockInProgress(Z)V

    .line 749
    return-void
.end method

.method private setPlacesMapUrl(Ljava/lang/String;)V
    .registers 6
    .parameter "placesMapUrl"

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1521
    :goto_8
    return-void

    .line 1515
    :cond_9
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapUrl:Ljava/lang/String;

    .line 1516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1517
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "map_url"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z

    .line 1520
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method

.method private shouldShowConversationActions(Z)Z
    .registers 5
    .parameter "isProgressVisible"

    .prologue
    const/4 v1, 0x0

    .line 893
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowConversationActions()Z

    move-result v2

    if-nez v2, :cond_8

    .line 904
    :cond_7
    :goto_7
    return v1

    .line 897
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v0

    .line 898
    .local v0, metrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v2, v0, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mLandscape:Z

    if-nez v2, :cond_18

    if-nez p1, :cond_7

    .line 904
    :cond_18
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private showChoosePhotoDialog()V
    .registers 4

    .prologue
    .line 1555
    new-instance v0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;

    const v1, 0x7f080324

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;-><init>(IZ)V

    .line 1557
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setIsCameraSupported(Z)V

    .line 1558
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_photo"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1560
    return-void
.end method

.method private showZagatExplanationDialog()V
    .registers 4

    .prologue
    .line 1550
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;-><init>()V

    .line 1551
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "zagat_explanation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1552
    return-void
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 731
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setPersonBlocked(Z)V

    .line 732
    return-void
.end method

.method protected createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;
    .registers 21
    .parameter "context"
    .parameter "gridView"
    .parameter "account"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewUseListener"
    .parameter "markPostsAsRead"
    .parameter "plusBarClickListener"
    .parameter "floatingComposeBarView"

    .prologue
    .line 994
    move-object/from16 v10, p5

    .line 996
    .local v10, originalListener:Lcom/google/android/apps/plus/views/ItemClickListener;
    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;

    invoke-direct {v5, p0, v10}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 1018
    .local v5, filteredItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;
    new-instance v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V

    return-object v0
.end method

.method public doPickPhotoFromAlbums()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1575
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->newAlbumsActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v0

    .line 1576
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPersonId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotosHome(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setShowCameraAlbum(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerMode(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f0800b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoPickerTitleResourceId(Ljava/lang/Integer;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAllowCrop(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    .line 1583
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1584
    return-void
.end method

.method protected doShowEmptyView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1747
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1753
    return-void
.end method

.method public doTakePhoto()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1565
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "camera-profile.jpg"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1566
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    .line 1571
    .end local v1           #intent:Landroid/content/Intent;
    :goto_f
    return-void

    .line 1567
    :catch_10
    move-exception v0

    .line 1568
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f08032c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method protected getComposeBarCursor()Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .registers 2

    .prologue
    .line 980
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1412
    :cond_c
    :goto_c
    return-void

    .line 1406
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 1409
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1410
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0801fd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c
.end method

.method protected handleProfileServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 1371
    :cond_c
    :goto_c
    return-void

    .line 1363
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1365
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 1366
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1369
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 1370
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    goto :goto_c
.end method

.method protected handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1377
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_e

    .line 1396
    :cond_d
    :goto_d
    return-void

    .line 1381
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1383
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1f

    .line 1384
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1387
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 1388
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 1390
    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1391
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0801fd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 1393
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0802c7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method

.method protected initCirclesLoader()V
    .registers 1

    .prologue
    .line 788
    return-void
.end method

.method protected isAdapterEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1479
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isLocalDataAvailable(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 1078
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isProgressIndicatorVisible()Z
    .registers 2

    .prologue
    .line 943
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isProgressIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactLoaderActive:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneLoaderActive:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mMapLoaderActive:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public isSmsIntentRegistered()Z
    .registers 8

    .prologue
    .line 1542
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1543
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1544
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1546
    .local v2, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    const/4 v3, 0x1

    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 1741
    const/4 v0, 0x1

    return v0
.end method

.method public onActionButtonClicked(I)V
    .registers 10
    .parameter "actionId"

    .prologue
    const/4 v6, 0x2

    .line 1235
    const/4 v2, 0x0

    .line 1236
    .local v2, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_90

    .line 1277
    :cond_5
    :goto_5
    if-eqz v2, :cond_a

    .line 1278
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    .line 1280
    :cond_a
    return-void

    .line 1238
    :pswitch_b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 1239
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v3

    .line 1240
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, fullName:Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 1242
    invoke-virtual {v3, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1244
    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1245
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1251
    :goto_31
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 1252
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v2

    .line 1254
    goto :goto_5

    .line 1246
    :cond_43
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    if-eqz v4, :cond_5

    .line 1247
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_31

    .line 1257
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v1           #fullName:Ljava/lang/String;
    .end local v3           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :pswitch_4d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 1258
    .restart local v0       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v3

    .line 1259
    .restart local v3       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1260
    .restart local v1       #fullName:Ljava/lang/String;
    if-eqz v1, :cond_60

    .line 1261
    invoke-virtual {v3, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1263
    :cond_60
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const-string v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1264
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1270
    :goto_73
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 1271
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/phone/Intents;->getNewHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v2

    .line 1273
    goto :goto_5

    .line 1265
    :cond_86
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    if-eqz v4, :cond_5

    .line 1266
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_73

    .line 1236
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_b
        :pswitch_4d
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1676
    const/4 v4, -0x1

    if-eq p2, v4, :cond_4

    .line 1726
    :cond_3
    :goto_3
    return-void

    .line 1680
    :cond_4
    packed-switch p1, :pswitch_data_56

    goto :goto_3

    .line 1682
    :pswitch_8
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "original_circle_ids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1684
    .local v2, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selected_circle_ids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1686
    .local v3, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1696
    .end local v2           #originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1697
    .local v0, activity:Landroid/app/Activity;
    instance-of v4, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v4, :cond_35

    move-object v4, v0

    .line 1698
    check-cast v4, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    invoke-interface {v4}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->showInsertCameraPhotoDialog()V

    .line 1701
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "camera-profile.jpg"

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto :goto_3

    .line 1707
    .end local v0           #activity:Landroid/app/Activity;
    :pswitch_40
    if-eqz p3, :cond_3

    .line 1709
    const-string v4, "data"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 1710
    .local v1, imageBytes:[B
    if-eqz v1, :cond_3

    .line 1711
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;-><init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;[B)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1680
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_8
        :pswitch_27
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public onAddressClicked(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 660
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 662
    .end local v0           #uri:Landroid/net/Uri;
    :cond_28
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 969
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onAttach(Landroid/app/Activity;)V

    .line 970
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    .line 971
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mLandscape:Z

    .line 973
    return-void

    .line 971
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onAvatarClicked()V
    .registers 4

    .prologue
    .line 580
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    if-eqz v1, :cond_8

    .line 581
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showChoosePhotoDialog()V

    .line 591
    :goto_7
    return-void

    .line 583
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f08032a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const-string v2, "profile_photos"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 589
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method public onBlockCompleted(Z)V
    .registers 4
    .parameter "success"

    .prologue
    const/4 v1, 0x0

    .line 1666
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    .line 1667
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setBlockInProgress(Z)V

    .line 1668
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V

    .line 1669
    return-void
.end method

.method public onCirclesButtonClicked()V
    .registers 6

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 607
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 795
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onCreate(Landroid/os/Bundle;)V

    .line 797
    if-eqz p1, :cond_76

    .line 798
    const-string v1, "profile_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 799
    const-string v1, "profile_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 802
    :cond_1a
    const-string v1, "plusone_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 803
    const-string v1, "plusone_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 805
    :cond_2e
    const-string v1, "abuse_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 806
    const-string v1, "abuse_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 809
    :cond_42
    const-string v1, "camera_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 810
    const-string v1, "camera_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 813
    :cond_56
    const-string v1, "block_in_progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 814
    const-string v1, "block_in_progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    .line 817
    :cond_66
    const-string v1, "profile_is_expanded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 818
    const-string v1, "profile_is_expanded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileIsExpanded:Z

    .line 823
    :cond_76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 824
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "person_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 828
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 829
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 834
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 835
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "map_url"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 840
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 841
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "domains"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 842
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x68

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 844
    new-instance v1, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 845
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 846
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 850
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 851
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "args"
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
    const/4 v1, 0x3

    const/4 v5, 0x1

    .line 1046
    packed-switch p1, :pswitch_data_82

    .line 1067
    const-string v0, "HostedProfileFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1068
    const-string v1, "HostedProfileFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader<Cursor> onCreateLoader() -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7d

    const-string v0, "POSTS_LOADER_ID"

    :goto_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_2e
    return-object v0

    .line 1048
    :pswitch_2f
    const-string v0, "HostedProfileFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1049
    const-string v0, "HostedProfileFragment"

    const-string v1, "Loader<Cursor> onCreateLoader() -- LOADER_ID_CONTACT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_3e
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    .line 1052
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v4, "person_id=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 1059
    :pswitch_5e
    const-string v0, "HostedProfileFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1060
    const-string v0, "HostedProfileFragment"

    const-string v1, "Loader<Cursor> onCreateLoader() -- LOADER_ID_PLUS_ONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_6d
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneLoaderActive:Z

    .line 1063
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$PlusOneDataLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_2e

    .line 1068
    :cond_7d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1f

    .line 1046
    :pswitch_data_82
    .packed-switch 0x64
        :pswitch_2f
        :pswitch_5e
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 1029
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    .line 1031
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    .line 1032
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->isSmsIntentRegistered()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->init(Ljava/lang/String;ZZZLcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 1034
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setOnClickListener(Lcom/google/android/apps/plus/views/ProfileAboutView$OnClickListener;)V

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setBlockInProgress(Z)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setViewIsExpanded(Z)V

    .line 1038
    return-object v6
.end method

.method public onEmailClicked(Ljava/lang/String;)V
    .registers 8
    .parameter "email"

    .prologue
    .line 619
    const/4 v2, 0x0

    .line 621
    .local v2, parsed:[Landroid/text/util/Rfc822Token;
    if-eqz p1, :cond_7

    .line 622
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 625
    :cond_7
    if-eqz v2, :cond_c

    array-length v3, v2

    if-nez v3, :cond_d

    .line 638
    :cond_c
    :goto_c
    return-void

    .line 629
    :cond_d
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 630
    .local v0, formattedEmail:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 632
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/util/Rfc822Token;->setName(Ljava/lang/String;)V

    .line 635
    :cond_2f
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public onExpandClicked(Z)V
    .registers 3
    .parameter "isExpanded"

    .prologue
    .line 725
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileIsExpanded:Z

    .line 726
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setViewIsExpanded(Z)V

    .line 727
    return-void
.end method

.method public onLinkClicked(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 666
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 668
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    .line 671
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 10
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
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 1086
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_122

    .line 1146
    const-string v3, "HostedProfileFragment"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1147
    const-string v3, "HostedProfileFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loader<Cursor> onLoadFinished() -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 1152
    :cond_30
    :goto_30
    return-void

    .line 1088
    :sswitch_31
    const-string v3, "HostedProfileFragment"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1089
    const-string v3, "HostedProfileFragment"

    const-string v4, "Loader<Cursor> onLoadFinished() -- LOADER_ID_CONTACT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_40
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    .line 1092
    if-eqz p2, :cond_5e

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1093
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setContactData(Landroid/database/Cursor;)V

    .line 1094
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isBlocked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsBlocked:Z

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V

    .line 1100
    :goto_5a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    goto :goto_30

    .line 1097
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    goto :goto_5a

    .line 1104
    :sswitch_6d
    const-string v3, "HostedProfileFragment"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1105
    const-string v3, "HostedProfileFragment"

    const-string v4, "Loader<Cursor> onLoadFinished() -- LOADER_ID_PLUS_ONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_7c
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneLoaderActive:Z

    .line 1108
    if-nez p2, :cond_8f

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f080321

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_30

    .line 1112
    :cond_8f
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1113
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1115
    .local v2, proto:[B
    :try_start_99
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    .line 1116
    .local v1, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneId:Ljava/lang/String;

    .line 1117
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneByMe:Z

    .line 1118
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneByMe:Z

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->setPlusOneData(IZ)V
    :try_end_b4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_99 .. :try_end_b4} :catch_b6

    goto/16 :goto_30

    .line 1120
    .end local v1           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :catch_b6
    move-exception v0

    .line 1121
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "HostedProfileFragment"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1122
    const-string v3, "HostedProfileFragment"

    const-string v4, "Invalid +1 data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1130
    .end local v0           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v2           #proto:[B
    :sswitch_c9
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    if-eqz v3, :cond_d5

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->wrapsStreamCursor(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_db

    .line 1132
    :cond_d5
    invoke-static {p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursorFactory;->getInstance(Landroid/database/Cursor;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    .line 1134
    :cond_db
    const-string v3, "HostedProfileFragment"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 1135
    const-string v3, "HostedProfileFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loader<Cursor> onLoadFinished() -- POSTS_LOADER_ID, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_107
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    invoke-super {p0, p1, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 1139
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mActiveProfileCursor:Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_30

    .line 1140
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->notifyDataSetChanged()V

    .line 1141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showContent(Landroid/view/View;)V

    goto/16 :goto_30

    .line 1086
    :sswitch_data_122
    .sparse-switch
        0x2 -> :sswitch_c9
        0x64 -> :sswitch_31
        0x65 -> :sswitch_6d
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 1159
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onLocalCallClicked(Ljava/lang/String;)V
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method

.method public onLocalDirectionsClicked(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 682
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 684
    :cond_11
    return-void
.end method

.method public onLocalMapClicked(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 689
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 691
    :cond_11
    return-void
.end method

.method public onLocalReviewClicked(II)V
    .registers 7
    .parameter "reviewType"
    .parameter "reviewIndex"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getLocalReviewActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 697
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method public onLocationClicked(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:0,0?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 613
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 615
    .end local v0           #uri:Landroid/net/Uri;
    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_74

    .line 1470
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_d
    return v3

    .line 1435
    :sswitch_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->refresh()V

    goto :goto_d

    .line 1439
    :sswitch_12
    new-instance v0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v4

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;-><init>(Z)V

    .line 1441
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;
    invoke-virtual {v0, p0, v6}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1442
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "block_person"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d

    .line 1447
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;
    :sswitch_2a
    new-instance v0, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->isPlusPage()Z

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;-><init>(Ljava/lang/String;Z)V

    .line 1449
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;
    invoke-virtual {v0, p0, v6}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1450
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "unblock_person"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d

    .line 1455
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;
    :sswitch_44
    new-instance v0, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;-><init>()V

    .line 1456
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;
    invoke-virtual {v0, p0, v6}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "report_abuse"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_d

    .line 1462
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/ReportAbuseDialog;
    :sswitch_56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08046b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, helpUrlParam:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1465
    .local v1, helpUrl:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 1433
    :sswitch_data_74
    .sparse-switch
        0x7f0902aa -> :sswitch_e
        0x7f0902ad -> :sswitch_56
        0x7f0902e5 -> :sswitch_12
        0x7f0902e6 -> :sswitch_2a
        0x7f0902e7 -> :sswitch_44
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1348
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onPause()V

    .line 1349
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1350
    return-void
.end method

.method public onPhoneNumberClicked(Ljava/lang/String;)V
    .registers 6
    .parameter "number"

    .prologue
    .line 642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 644
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    .line 646
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2b
    return-void
.end method

.method public onPlusOneClicked()V
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneByMe:Z

    if-eqz v0, :cond_8

    .line 717
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->deletePlusOne()V

    .line 721
    :goto_7
    return-void

    .line 719
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->createPlusOne()V

    goto :goto_7
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 7
    .parameter "actionBar"

    .prologue
    const/4 v4, 0x0

    .line 912
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mControlPrimarySpinner:Z

    if-eqz v2, :cond_12

    .line 913
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ProfileActivity;->createSpinnerAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 914
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iput v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCurrentSpinnerPosition:I

    .line 915
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCurrentSpinnerPosition:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 918
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowRefreshInActionBar()Z

    move-result v1

    .line 921
    .local v1, canShowRefresh:Z
    if-nez v1, :cond_1b

    .line 922
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 925
    :cond_1b
    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowConversationActions()Z

    move-result v2

    if-nez v2, :cond_26

    .line 926
    :cond_23
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 929
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->isProgressIndicatorVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->shouldShowConversationActions(Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 930
    const v2, 0x7f0201ae

    const v3, 0x7f0802fd

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 934
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/service/Hangout;->isHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 935
    const/4 v2, 0x1

    const v3, 0x7f0201ad

    const v4, 0x7f0802fe

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/apps/plus/views/HostActionBar;->showActionButton(III)V

    .line 939
    :cond_4e
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 11
    .parameter "menu"

    .prologue
    const v8, 0x7f0902e6

    const v7, 0x7f0902e5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1166
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    if-eqz v6, :cond_9b

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    if-nez v6, :cond_9b

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    if-nez v6, :cond_9b

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9b

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    if-nez v6, :cond_9b

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v6, :cond_9b

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsBlocked:Z

    if-nez v6, :cond_9b

    move v0, v4

    .line 1175
    .local v0, isBlockVisible:Z
    :goto_2d
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    if-eqz v6, :cond_9d

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    if-nez v6, :cond_9d

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    if-nez v6, :cond_9d

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    if-nez v6, :cond_9d

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v6, :cond_9d

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsBlocked:Z

    if-eqz v6, :cond_9d

    move v3, v4

    .line 1183
    .local v3, isUnblockVisible:Z
    :goto_46
    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    if-nez v6, :cond_9f

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContactLoaderActive:Z

    if-nez v6, :cond_9f

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-nez v6, :cond_9f

    move v2, v4

    .line 1189
    .local v2, isReportAbuseVisible:Z
    :goto_53
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowRefreshInActionBar()Z

    move-result v6

    if-nez v6, :cond_a1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowConversationActions()Z

    move-result v6

    if-eqz v6, :cond_a1

    move v1, v4

    .line 1191
    .local v1, isRefreshVisible:Z
    :goto_60
    const v4, 0x7f0902aa

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1192
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1193
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1194
    const v4, 0x7f0902e7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1197
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsPlusPage:Z

    if-eqz v4, :cond_a3

    .line 1198
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0802ae

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1199
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0802af

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1204
    :goto_9a
    return-void

    .end local v0           #isBlockVisible:Z
    .end local v1           #isRefreshVisible:Z
    .end local v2           #isReportAbuseVisible:Z
    .end local v3           #isUnblockVisible:Z
    :cond_9b
    move v0, v5

    .line 1166
    goto :goto_2d

    .restart local v0       #isBlockVisible:Z
    :cond_9d
    move v3, v5

    .line 1175
    goto :goto_46

    .restart local v3       #isUnblockVisible:Z
    :cond_9f
    move v2, v5

    .line 1183
    goto :goto_53

    .restart local v2       #isReportAbuseVisible:Z
    :cond_a1
    move v1, v5

    .line 1189
    goto :goto_60

    .line 1201
    .restart local v1       #isRefreshVisible:Z
    :cond_a3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0802ac

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1202
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0802ad

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_9a
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 1211
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mControlPrimarySpinner:Z

    if-eqz v1, :cond_d

    .line 1212
    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCurrentSpinnerPosition:I

    if-eq v1, p1, :cond_d

    .line 1213
    packed-switch p1, :pswitch_data_1e

    .line 1225
    :goto_b
    :pswitch_b
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mCurrentSpinnerPosition:I

    .line 1228
    :cond_d
    return-void

    .line 1219
    :pswitch_e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileAlbumsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1221
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 1213
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1305
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onResume()V

    .line 1306
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1308
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 1309
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1310
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1311
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleProfileServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1312
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 1316
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_53

    .line 1317
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1318
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1319
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1320
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 1324
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_53
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_78

    .line 1325
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1326
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1327
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1328
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    .line 1332
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_78
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_9d

    .line 1333
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 1334
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1335
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlerInsertCameraPhoto(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1336
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 1340
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_9d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 1341
    return-void
.end method

.method public onReviewAuthorAvatarClicked(Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"

    .prologue
    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 708
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 710
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->safeStartActivity(Landroid/content/Intent;)V

    .line 712
    .end local v0           #intent:Landroid/content/Intent;
    :cond_14
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 858
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 859
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 860
    const-string v0, "profile_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 862
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    .line 863
    const-string v0, "plusone_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPlusOneRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 865
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    .line 866
    const-string v0, "abuse_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_3f

    .line 869
    const-string v0, "camera_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    :cond_3f
    const-string v0, "block_in_progress"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mBlockInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 873
    const-string v0, "profile_is_expanded"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileIsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 874
    return-void
.end method

.method public onSendTextClicked(Ljava/lang/String;)V
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->startExternalActivity(Landroid/content/Intent;)V

    .line 654
    :cond_2b
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 5
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 772
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 774
    const-string v0, "person_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mIsMyProfile:Z

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    move v0, v1

    :goto_23
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mHasGaiaId:Z

    .line 779
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mGaiaId:Ljava/lang/String;

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mGaiaId:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 781
    const-string v0, "show_empty_stream"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    :cond_36
    return-void

    .line 776
    :cond_37
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onZagatExplanationClicked()V
    .registers 1

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showZagatExplanationDialog()V

    .line 703
    return-void
.end method

.method public recordNavigationAction()V
    .registers 3

    .prologue
    .line 1733
    const/4 v0, 0x0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PROFILE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 1734
    return-void
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 1287
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->refresh()V

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->refreshProfile()V

    .line 1289
    return-void
.end method

.method public refreshProfile()V
    .registers 5

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 1297
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 1298
    return-void
.end method

.method public relinquishPrimarySpinner()V
    .registers 2

    .prologue
    .line 1483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mControlPrimarySpinner:Z

    .line 1484
    return-void
.end method

.method public reportAbuse(I)V
    .registers 7
    .parameter "abuseType"

    .prologue
    .line 755
    const/4 v1, 0x4

    if-ne p1, v1, :cond_27

    .line 756
    const v1, 0x7f0802c0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802ca

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 760
    .local v0, warning:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_warning"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 765
    .end local v0           #warning:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_26
    return-void

    .line 762
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/apps/plus/service/EsService;->reportAbuse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mReportAbuseRequestId:Ljava/lang/Integer;

    .line 763
    const v1, 0x7f0802c9

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showProgressDialog(I)V

    goto :goto_26
.end method

.method protected setCircleMembership(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p1, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    .local v7, circlesToAdd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1612
    .local v6, circleId:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1613
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1617
    .end local v6           #circleId:Ljava/lang/String;
    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .local v8, circlesToRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_28
    :goto_28
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1619
    .restart local v6       #circleId:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1620
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1624
    .end local v6           #circleId:Ljava/lang/String;
    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 1628
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showProgressDialog(I)V

    .line 1629
    return-void
.end method

.method protected setFaviconDomains(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1524
    .local p1, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconDomains:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1535
    :goto_c
    return-void

    .line 1528
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconDomains:Ljava/util/ArrayList;

    .line 1530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1531
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "domains"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1533
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFavIconsLoaderActive:Z

    .line 1534
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x68

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_c
.end method

.method protected setProfilePhoto([B)V
    .registers 4
    .parameter "imageBytes"

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/service/EsService;->setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;

    .line 1637
    const v0, 0x7f08032e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->showProgressDialog(I)V

    .line 1638
    return-void
.end method

.method public unblockPerson(Ljava/lang/String;)V
    .registers 3
    .parameter "personId"

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setPersonBlocked(Z)V

    .line 737
    return-void
.end method

.method protected updateSpinner()V
    .registers 2

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->canShowRefreshInActionBar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 958
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 962
    :goto_9
    return-void

    .line 960
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->invalidateActionBar()V

    goto :goto_9
.end method

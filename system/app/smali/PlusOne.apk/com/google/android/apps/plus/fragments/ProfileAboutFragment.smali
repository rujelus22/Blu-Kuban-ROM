.class public Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "ProfileAboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$NoteItem;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$LocationItem;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$PlacesMapItem;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$StringItem;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$DataItem;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$SectionHeader;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Header;,
        Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$Item;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

.field private mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

.field private final mAvatarLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockRequestPending:Z

.field private mBlocked:Z

.field private mBlockedText:Landroid/widget/TextView;

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

.field private mDataLoaded:Z

.field private mError:Z

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

.field private mFragmentStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mImageUri:Landroid/net/Uri;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingFavicons:Z

.field private mMapLoaded:Z

.field private mPackedCircleIds:Ljava/lang/String;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mPersonId:Ljava/lang/String;

.field private mPlacesMapBitmap:Landroid/graphics/Bitmap;

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

.field private mPlusOneView:Landroid/view/View;

.field private mPlusPage:Z

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

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarView:Landroid/widget/ProgressBar;

.field private mRefreshing:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mTagLineView:Landroid/widget/TextView;

.field private mUserDataLoaded:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHandler:Landroid/os/Handler;

    .line 944
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 974
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1053
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAvatarLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1081
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1122
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1160
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 1173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "personId"

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHandler:Landroid/os/Handler;

    .line 944
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 974
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1053
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAvatarLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1081
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1122
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 1160
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 1179
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    .line 1180
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mTagLineView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mError:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setPlacesMapUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mMapLoaded:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mLoadingFavicons:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->navigateToProfilePhotos()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusPage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFavicons:Ljava/util/HashMap;

    return-object p1
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private isLoaded()Z
    .registers 2

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mUserDataLoaded:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isMyProfile()Z
    .registers 5

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private navigateToProfilePhotos()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1642
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1643
    .local v2, userId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const v4, 0x7f07026b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "profile_photos"

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1646
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 1647
    return-void
.end method

.method private setPlacesMapUrl(Ljava/lang/String;)V
    .registers 6
    .parameter "placesMapUrl"

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1456
    :goto_8
    return-void

    .line 1451
    :cond_9
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    .line 1452
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapBitmap:Landroid/graphics/Bitmap;

    .line 1453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1454
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "map_url"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method

.method private showChoosePhotoDialog()V
    .registers 4

    .prologue
    .line 1548
    new-instance v0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;

    invoke-direct {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;-><init>()V

    .line 1549
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1550
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "change_photo"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ChoosePhotoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1551
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "labelResId"

    .prologue
    .line 1687
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1690
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1691
    return-void
.end method

.method private updateProgressBarVisibility()V
    .registers 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1a

    .line 1520
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mRefreshing:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mMapLoaded:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mLoadingFavicons:Z

    if-eqz v0, :cond_1b

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1524
    :cond_1a
    return-void

    .line 1520
    :cond_1b
    const/16 v0, 0x8

    goto :goto_17
.end method


# virtual methods
.method doPickPhotoFromAlbums()V
    .registers 6

    .prologue
    .line 1564
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1565
    .local v0, gaiaId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomePickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1567
    return-void
.end method

.method doTakePhoto()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1555
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "camera-profile.jpg"

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1556
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    .line 1561
    .end local v1           #intent:Landroid/content/Intent;
    :goto_f
    return-void

    .line 1557
    :catch_10
    move-exception v0

    .line 1558
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f07026c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_d

    .line 1414
    :cond_c
    :goto_c
    return-void

    .line 1405
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1407
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1e

    .line 1408
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1411
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mRefreshing:Z

    .line 1413
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V

    goto :goto_c
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isSmsIntentRegistered()Z
    .registers 8

    .prologue
    .line 1706
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1707
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1708
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1710
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1595
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 1639
    :cond_3
    :goto_3
    return-void

    .line 1599
    :cond_4
    packed-switch p1, :pswitch_data_40

    goto :goto_3

    .line 1601
    :pswitch_8
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "original_circle_ids"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1603
    .local v1, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "selected_circle_ids"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1605
    .local v2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$7;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1615
    .end local v1           #originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->saveAndCropPhoto()V

    goto :goto_3

    .line 1620
    :pswitch_2b
    if-eqz p3, :cond_3

    .line 1622
    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1623
    .local v0, imageBytes:[B
    if-eqz v0, :cond_3

    .line 1624
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$8;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1599
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method protected onAsyncData()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 1384
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAsyncData()V

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1387
    .local v0, activity:Landroid/app/Activity;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFragmentStartTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_20

    instance-of v1, v0, Lcom/google/android/apps/plus/phone/ProfileActivity;

    if-eqz v1, :cond_20

    .line 1388
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PROFILE_ABOUT_TAB:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFragmentStartTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 1390
    iput-wide v5, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFragmentStartTime:J

    .line 1392
    :cond_20
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 1256
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onAttach(Landroid/app/Activity;)V

    .line 1258
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 1259
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 1260
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 1531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d014d

    if-ne v1, v2, :cond_17

    .line 1532
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1533
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showChoosePhotoDialog()V

    .line 1545
    :goto_12
    return-void

    .line 1535
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->navigateToProfilePhotos()V

    goto :goto_12

    .line 1538
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d0159

    if-ne v1, v2, :cond_4c

    .line 1539
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1540
    .local v0, phone:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 1542
    .end local v0           #phone:Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getCircleMembershipActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 1196
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1197
    if-eqz p1, :cond_a0

    .line 1198
    const-string v1, "person_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    .line 1199
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1200
    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1202
    :cond_22
    const-string v1, "places_map_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    .line 1203
    const-string v1, "favicon_domains"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    .line 1204
    const-string v1, "image_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mImageUri:Landroid/net/Uri;

    .line 1209
    :goto_3c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1210
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "person_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProfileAndContactDataLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1214
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1215
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1216
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAvatarLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1221
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1222
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "map_url"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1227
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1228
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "domains"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1231
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 1233
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->setHasOptionsMenu(Z)V

    .line 1234
    return-void

    .line 1206
    .end local v0           #args:Landroid/os/Bundle;
    :cond_a0
    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFragmentStartTime:J

    goto :goto_3c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 1268
    const v2, 0x7f030077

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1269
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mListView:Landroid/widget/ListView;

    .line 1270
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1271
    new-instance v2, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;-><init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    .line 1272
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1274
    const v2, 0x7f03007a

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    .line 1275
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1276
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d014b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, avatar:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    .end local v0           #avatar:Landroid/view/View;
    :cond_47
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CirclesButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    .line 1280
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d0150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CirclesButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    .line 1282
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/CirclesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    .line 1284
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 1285
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mTagLineView:Landroid/widget/TextView;

    .line 1286
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0d0153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlusOneView:Landroid/view/View;

    .line 1287
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 1328
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAdapter:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$ProfileListAdapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 1329
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_b

    .line 1331
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1338
    :cond_b
    :goto_b
    return-void

    .line 1332
    :catch_c
    move-exception v0

    .line 1333
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ProfileAboutFragment"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1334
    const-string v2, "ProfileAboutFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot launch activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1364
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 1365
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1366
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1345
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 1346
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1348
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    .line 1349
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1350
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1351
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1355
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateView()V

    .line 1356
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V

    .line 1357
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1241
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1242
    const-string v0, "person_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 1244
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1246
    :cond_19
    const-string v0, "places_map_url"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPlacesMapUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, "favicon_domains"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1248
    const-string v0, "image_uri"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1249
    return-void
.end method

.method public refresh()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1373
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mRefreshing:Z

    .line 1374
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V

    .line 1375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1377
    return-void
.end method

.method protected saveAndCropPhoto()V
    .registers 12

    .prologue
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1574
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "camera-profile.jpg"

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1575
    .local v8, imageUri:Ljava/lang/String;
    if-nez v8, :cond_3b

    move-object v3, v5

    :goto_11
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mImageUri:Landroid/net/Uri;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_40

    .line 1582
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_3a

    .line 1583
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mImageUri:Landroid/net/Uri;

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 1584
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f07026d

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, v10}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;Z)Landroid/content/Intent;

    move-result-object v9

    .line 1586
    .local v9, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v9, v1}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1588
    .end local v0           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v8           #imageUri:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_3a
    :goto_3a
    return-void

    .line 1575
    .restart local v8       #imageUri:Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v3

    goto :goto_11

    .line 1576
    .end local v8           #imageUri:Ljava/lang/String;
    :catch_40
    move-exception v7

    .line 1577
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070121

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3a
.end method

.method protected setAvatarBitmap(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 1422
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d014e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d014b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1425
    .local v1, avatarView:Landroid/widget/ImageView;
    if-eqz p1, :cond_61

    .line 1426
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1431
    :goto_1f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d014d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1432
    .local v0, avatarAction:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3a

    .line 1433
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1438
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0d014c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1440
    .local v2, choosePhotoText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f070266

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    .end local v2           #choosePhotoText:Landroid/widget/TextView;
    :cond_60
    return-void

    .line 1428
    .end local v0           #avatarAction:Landroid/view/View;
    :cond_61
    const v3, 0x7f020034

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
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
    .local p1, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1654
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v7, circlesToAdd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1656
    .local v6, circleId:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1657
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1661
    .end local v6           #circleId:Ljava/lang/String;
    :cond_20
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v8, circlesToRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_29
    :goto_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1663
    .restart local v6       #circleId:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1664
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1668
    .end local v6           #circleId:Ljava/lang/String;
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1671
    const v0, 0x7f07021f

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showProgressDialog(I)V

    .line 1672
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
    .line 1459
    .local p1, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1469
    :goto_c
    return-void

    .line 1463
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mLoadingFavicons:Z

    .line 1464
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    .line 1466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1467
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "domains"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconDomains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mFaviconLoader:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_c
.end method

.method protected setProfilePhoto([B)V
    .registers 4
    .parameter "imageBytes"

    .prologue
    .line 1678
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/service/EsService;->setProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1680
    const v0, 0x7f07026e

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showProgressDialog(I)V

    .line 1681
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressBarView"

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    .line 1513
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBarView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 1514
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateProgressBarVisibility()V

    .line 1516
    :cond_9
    return-void
.end method

.method public setUserData(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "packedCircleIds"
    .parameter "blocked"
    .parameter "blockRequestPending"

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPackedCircleIds:Ljava/lang/String;

    .line 1184
    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlocked:Z

    .line 1185
    iput-boolean p3, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockRequestPending:Z

    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mUserDataLoaded:Z

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateCircleList()V

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateView()V

    .line 1189
    return-void
.end method

.method protected updateCircleList()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1475
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    if-nez v1, :cond_8

    .line 1508
    :goto_7
    return-void

    .line 1479
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isMyProfile()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mDataLoaded:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mUserDataLoaded:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1480
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1481
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1482
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1483
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 1484
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockRequestPending:Z

    if-eqz v1, :cond_4c

    .line 1485
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1487
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1488
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 1489
    :cond_4c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlocked:Z

    if-eqz v1, :cond_65

    .line 1490
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1491
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1492
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1493
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 1494
    :cond_65
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPackedCircleIds:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1495
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1496
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1497
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1498
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 1500
    :cond_82
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mBlockedText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1501
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNameListForPackedIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1503
    .local v0, circleNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1504
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/CirclesButton;->setCircles(Ljava/util/ArrayList;)V

    .line 1505
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mAddToCirclesButton:Lcom/google/android/apps/plus/views/CirclesButton;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/CirclesButton;->setVisibility(I)V

    .line 1506
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method protected updateView()V
    .registers 7

    .prologue
    const v5, 0x7f0d0065

    const/4 v4, 0x0

    const v3, 0x102000a

    const/16 v2, 0x8

    .line 1291
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1292
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_10

    .line 1309
    :goto_f
    return-void

    .line 1296
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1297
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showEmptyViewProgress(Landroid/view/View;)V

    goto :goto_f

    .line 1299
    :cond_21
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->mError:Z

    if-eqz v1, :cond_37

    .line 1300
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showContent(Landroid/view/View;)V

    goto :goto_f

    .line 1304
    :cond_37
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->showContent(Landroid/view/View;)V

    .line 1307
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateCircleList()V

    goto :goto_f
.end method

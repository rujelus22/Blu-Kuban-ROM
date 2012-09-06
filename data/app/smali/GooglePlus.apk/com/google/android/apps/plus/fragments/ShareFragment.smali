.class public Lcom/google/android/apps/plus/fragments/ShareFragment;
.super Landroid/support/v4/app/Fragment;
.source "ShareFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$MediaRefLoader;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$PreviewCursorLoader;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$AccountStatusQuery;,
        Lcom/google/android/apps/plus/fragments/ShareFragment$PlatformAudienceQuery;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActivityId:Ljava/lang/String;

.field private mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mAttachmentRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mAudienceDisplay:Ljava/lang/String;

.field private mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

.field private mBottomActionBarView:Landroid/view/View;

.field private mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

.field private mFooterMessage:Ljava/lang/String;

.field private mInsertCameraPhotoRequestId:Ljava/lang/Integer;

.field private mIsFromPlusOne:Z

.field private mLoadingAudience:Z

.field private mLoadingMediaAttachments:Z

.field private mLoadingUrlPreview:Z

.field private mLoadingView:Landroid/view/View;

.field private mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field private mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

.field private mMediaGallery:Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;

.field private mMediaGalleryView:Landroid/view/ViewGroup;

.field private final mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOriginalText:Ljava/lang/String;

.field private mPendingPostId:Ljava/lang/Integer;

.field private mPreviewContainerView:Landroid/view/ViewGroup;

.field private mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private mProviderLocation:Landroid/location/Location;

.field private mRemoveLocation:Z

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mResultMediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mUrl:Ljava/lang/String;

.field private onCheckChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private searchListAdapterListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 215
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 232
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 264
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 318
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->searchListAdapterListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    .line 361
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 379
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onCheckChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

    .line 1878
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$8;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$8;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 2012
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->isProviderEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->addLocationListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateLocation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getCityLevelLocationPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->insertCameraPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/google/android/apps/plus/fragments/ShareFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->handlePostResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->isCheckIn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method private addLocationListener()V
    .registers 10

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_27

    .line 1769
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;

    new-instance v7, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1771
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1772
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->removeLocationListener()V

    .line 1775
    :cond_27
    return-void
.end method

.method private addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 3
    .parameter "mediaRef"

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGallery:Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->add(Lcom/google/android/apps/plus/api/MediaRef;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->access$2700(Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1823
    return-void
.end method

.method private static buildPostableString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "spannable"

    .prologue
    const/4 v10, 0x2

    .line 1511
    const/4 v7, 0x0

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Lcom/google/android/apps/plus/views/MentionSpan;

    invoke-interface {p2, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/plus/views/MentionSpan;

    .line 1514
    .local v5, mentionSpans:[Lcom/google/android/apps/plus/views/MentionSpan;
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    .local v4, mentionReplace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v7, v5

    new-array v6, v7, [I

    .line 1516
    .local v6, mentionStarts:[I
    array-length v7, v5

    new-array v3, v7, [I

    .line 1519
    .local v3, mentionEnds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    array-length v7, v5

    if-ge v1, v7, :cond_5a

    .line 1520
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/MentionSpan;->getAggregateId()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, id:Ljava/lang/String;
    const-string v7, "g:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1523
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    :goto_33
    aget-object v7, v5, v1

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aput v7, v6, v1

    .line 1532
    aget-object v7, v5, v1

    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    aput v7, v3, v1

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1524
    :cond_46
    const-string v7, "e:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1526
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1529
    :cond_56
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1535
    .end local v2           #id:Ljava/lang/String;
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v0, buf:Ljava/lang/StringBuilder;
    array-length v7, v5

    add-int/lit8 v1, v7, -0x1

    :goto_66
    if-ltz v1, :cond_8b

    .line 1537
    aget v8, v6, v1

    aget v9, v3, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v9, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    add-int/lit8 v1, v1, -0x1

    goto :goto_66

    .line 1541
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .registers 4

    .prologue
    .line 1868
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v1

    .line 1870
    .local v1, customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getInstrumentedActivity()Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v0

    .line 1872
    .local v0, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    return-object v0
.end method

.method private getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 6
    .parameter "appName"

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private getCityLevelLocationPreference()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "streams"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "city_level_sharebox_location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1027
    const-string v1, "city_level_sharebox_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1030
    :goto_19
    return v1

    :cond_1a
    const-string v1, "city_level_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_19
.end method

.method private static getLocationFromExtras(Landroid/os/Bundle;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 16
    .parameter "args"

    .prologue
    const/4 v14, 0x5

    const-wide v12, 0x416312d000000000L

    .line 639
    const-string v10, "location"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 642
    .local v5, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    if-eqz v5, :cond_11

    .line 704
    .end local v5           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :goto_10
    return-object v5

    .line 647
    .restart local v5       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_11
    const-string v10, "location_name"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21

    const-string v10, "cid"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14c

    .line 648
    :cond_21
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v6

    .line 651
    .local v6, locationBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    const/4 v0, 0x0

    .line 654
    .local v0, addedFields:Z
    const-string v10, "latitude"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    const-string v10, "longitude"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 656
    :try_start_36
    const-string v10, "latitude"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 657
    .local v2, latitude:D
    const-string v10, "longitude"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 659
    .local v7, longitude:D
    const-wide v10, -0x3fa9800000000000L

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_ce

    const-wide v10, 0x4056800000000000L

    cmpg-double v10, v2, v10

    if-gtz v10, :cond_ce

    const-wide v10, -0x3f99800000000000L

    cmpl-double v10, v7, v10

    if-ltz v10, :cond_ce

    const-wide v10, 0x4066800000000000L

    cmpg-double v10, v7, v10

    if-gtz v10, :cond_ce

    .line 661
    mul-double v10, v2, v12

    double-to-int v4, v10

    .line 662
    .local v4, latitudeE7:I
    mul-double v10, v7, v12

    double-to-int v9, v10

    .line 663
    .local v9, longitudeE7:I
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLatitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->setLongitudeE7(I)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_87} :catch_10d

    .line 667
    const/4 v0, 0x1

    .line 684
    .end local v2           #latitude:D
    .end local v4           #latitudeE7:I
    .end local v7           #longitude:D
    .end local v9           #longitudeE7:I
    :cond_88
    :goto_88
    const-string v10, "cid"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 685
    const-string v10, "cid"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 686
    const/4 v0, 0x1

    .line 689
    :cond_9a
    const-string v10, "location_name"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ac

    .line 690
    const-string v10, "location_name"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 691
    const/4 v0, 0x1

    .line 694
    :cond_ac
    const-string v10, "address"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 695
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v10

    const-string v11, "address"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;->setAddress(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 697
    const/4 v0, 0x1

    .line 700
    :cond_c6
    if-eqz v0, :cond_14c

    .line 701
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v5

    goto/16 :goto_10

    .line 669
    .restart local v2       #latitude:D
    .restart local v7       #longitude:D
    :cond_ce
    :try_start_ce
    const-string v10, "ShareFragment"

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 670
    const-string v10, "ShareFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provided latitude/longitude are out of range. latitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "latitude"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "longitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "longitude"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_10b} :catch_10d

    goto/16 :goto_88

    .line 675
    .end local v2           #latitude:D
    .end local v7           #longitude:D
    :catch_10d
    move-exception v1

    .line 676
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v10, "ShareFragment"

    invoke-static {v10, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 677
    const-string v10, "ShareFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t parse latitude/longitude extras. latitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "latitude"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "longitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "longitude"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88

    .line 704
    .end local v0           #addedFields:Z
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v6           #locationBuilder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :cond_14c
    const/4 v5, 0x0

    goto/16 :goto_10
.end method

.method private getLocationPreference()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "streams"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1012
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "want_sharebox_locations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1013
    const-string v1, "want_sharebox_locations"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1015
    :goto_19
    return v1

    :cond_1a
    const-string v1, "want_locations"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_19
.end method

.method private getUserText()Landroid/text/Spanned;
    .registers 6

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private handlePostResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_d

    .line 1761
    :cond_c
    :goto_c
    return-void

    .line 1737
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1740
    .local v0, activity:Landroid/app/Activity;
    const/16 v1, 0x409e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    .line 1743
    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1744
    const-string v1, "ShareFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1745
    const-string v1, "ShareFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post failed: errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_46
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/network/HttpOperation;->isConnectionError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1749
    const/16 v1, 0x31db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_c

    .line 1751
    :cond_56
    const/16 v1, 0x58a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_c

    .line 1755
    :cond_5c
    const v1, 0x7f0801cf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1756
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->saveSharedPreferences()V

    .line 1757
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1758
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_c
.end method

.method private insertCameraPhoto(Ljava/lang/String;)V
    .registers 10
    .parameter "mediaLocation"

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1487
    .local v7, activity:Landroid/app/Activity;
    if-eqz p1, :cond_33

    .line 1488
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1489
    .local v5, photoUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1492
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1493
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateResultMediaItems()V

    .line 1500
    .end local v0           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #photoUri:Landroid/net/Uri;
    :goto_29
    instance-of v1, v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v1, :cond_32

    .line 1501
    check-cast v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    .end local v7           #activity:Landroid/app/Activity;
    invoke-interface {v7}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->hideInsertCameraPhotoDialog()V

    .line 1503
    :cond_32
    return-void

    .line 1496
    .restart local v7       #activity:Landroid/app/Activity;
    :cond_33
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_29
.end method

.method private isCheckIn()Z
    .registers 3

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isProviderEnabled()Z
    .registers 4

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1797
    .local v0, locationManager:Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private recordUserShareActions(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 7
    .parameter "comment"
    .parameter "audience"

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1631
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_COMMENT_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1634
    :cond_15
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1635
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CIRCLES_SHARE_ACL_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1638
    :cond_2a
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v0

    if-lez v0, :cond_3f

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PEOPLE_SHARE_ACL_ADDED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1642
    :cond_3f
    return-void
.end method

.method private removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 4
    .parameter "mediaRef"

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1832
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGallery:Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->remove(Lcom/google/android/apps/plus/api/MediaRef;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;->access$2800(Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1836
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mBottomActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 1838
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mBottomActionBarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    :cond_24
    return-void
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 1783
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 1784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1786
    :cond_c
    return-void
.end method

.method private saveSharedPreferences()V
    .registers 6

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "streams"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1040
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1042
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "want_sharebox_locations"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1044
    const-string v2, "city_level_sharebox_location"

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getCityLevelLocationPreference()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1047
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1048
    return-void
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "audience"

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceDisplay:Ljava/lang/String;

    .line 1294
    const-string v0, "ShareFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1295
    const-string v0, "ShareFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACL display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_2f
    return-void
.end method

.method private updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "view"
    .parameter "audience"

    .prologue
    .line 1307
    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1309
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1310
    return-void

    .line 1307
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private updateBottomActionBar()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1274
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z

    if-eqz v5, :cond_33

    :cond_a
    move v1, v4

    .line 1275
    .local v1, hasPreview:Z
    :goto_b
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-eqz v5, :cond_35

    move v2, v4

    .line 1276
    .local v2, hasUrl:Z
    :goto_10
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_24

    :cond_1c
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_37

    :cond_24
    move v0, v4

    .line 1279
    .local v0, hasAttachments:Z
    :goto_25
    if-nez v1, :cond_2b

    if-nez v2, :cond_2b

    if-eqz v0, :cond_39

    .line 1280
    :cond_2b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mBottomActionBarView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    :goto_32
    return-void

    .end local v0           #hasAttachments:Z
    .end local v1           #hasPreview:Z
    .end local v2           #hasUrl:Z
    :cond_33
    move v1, v3

    .line 1274
    goto :goto_b

    .restart local v1       #hasPreview:Z
    :cond_35
    move v2, v3

    .line 1275
    goto :goto_10

    .restart local v2       #hasUrl:Z
    :cond_37
    move v0, v3

    .line 1276
    goto :goto_25

    .line 1282
    .restart local v0       #hasAttachments:Z
    :cond_39
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mBottomActionBarView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32
.end method

.method private updateLocation(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1316
    const v5, 0x7f0901c4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1317
    .local v1, locationView:Landroid/view/View;
    const v5, 0x7f0900a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1318
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f0901c6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1319
    .local v3, progress:Landroid/view/View;
    const v5, 0x7f0900a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1320
    .local v2, marker:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v0

    .line 1321
    .local v0, locationRequested:Z
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1322
    if-eqz v0, :cond_77

    .line 1323
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v5, :cond_62

    .line 1324
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1326
    const v5, 0x7f0201c2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1327
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    const v6, 0x7f0201ed

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setImageResource(I)V

    .line 1328
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_53
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    :goto_56
    return-void

    .line 1328
    :cond_57
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 1331
    :cond_62
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1333
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    const v6, 0x7f0201ec

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setImageResource(I)V

    .line 1334
    const v5, 0x7f0801bb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_56

    .line 1337
    :cond_77
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1339
    const v5, 0x7f0201c3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1340
    const v5, 0x7f0801bc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_56
.end method

.method private updatePostUI(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/ShareActivity;

    .line 1265
    .local v0, activity:Lcom/google/android/apps/plus/phone/ShareActivity;
    if-eqz v0, :cond_b

    .line 1266
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->invalidateMenu()V

    .line 1268
    :cond_b
    return-void
.end method

.method private updatePreviewContainer(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1710
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1712
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory;->createViewFromActivity(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/views/ActivityPreviewView;

    move-result-object v0

    .line 1714
    .local v0, preview:Landroid/view/View;
    if-eqz v0, :cond_17

    .line 1715
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1718
    :cond_17
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1719
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1720
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z

    if-eqz v3, :cond_2b

    :goto_27
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    return-void

    .line 1720
    :cond_2b
    const/16 v1, 0x8

    goto :goto_27
.end method

.method private updateResultMediaItems()V
    .registers 9

    .prologue
    const/16 v6, 0xfa

    const/4 v7, 0x1

    .line 1847
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4b

    .line 1848
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v6, :cond_4c

    .line 1849
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080187

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1857
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1858
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1859
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 1860
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V

    .line 1862
    :cond_4b
    return-void

    .line 1852
    :cond_4c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1853
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_52
.end method

.method private updateViews(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    .line 1661
    if-eqz p1, :cond_8b

    .line 1663
    const v11, 0x7f090232

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1664
    .local v7, nameView:Landroid/widget/TextView;
    const v11, 0x7f090231

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/AvatarView;

    .line 1665
    .local v3, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 1667
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getUserText()Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v10

    .line 1671
    .local v10, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    if-eqz v10, :cond_67

    .line 1672
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1673
    .local v9, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1674
    .local v8, pkgManager:Landroid/content/pm/PackageManager;
    const v11, 0x7f090236

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1675
    .local v0, appIcon:Landroid/widget/ImageView;
    const v11, 0x7f090237

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1678
    .local v2, appText:Landroid/widget/TextView;
    :try_start_50
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1682
    .local v1, appName:Ljava/lang/CharSequence;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_67} :catch_8c

    .line 1692
    .end local v0           #appIcon:Landroid/widget/ImageView;
    .end local v1           #appName:Ljava/lang/CharSequence;
    .end local v2           #appText:Landroid/widget/TextView;
    .end local v8           #pkgManager:Landroid/content/pm/PackageManager;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_67
    :goto_67
    const v11, 0x7f090238

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1693
    .local v6, footerSep:Landroid/view/View;
    const v11, 0x7f090239

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1695
    .local v5, footer:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    if-eqz v11, :cond_96

    .line 1696
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1698
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    :goto_88
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePreviewContainer(Landroid/view/View;)V

    .line 1707
    .end local v3           #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v5           #footer:Landroid/widget/TextView;
    .end local v6           #footerSep:Landroid/view/View;
    .end local v7           #nameView:Landroid/widget/TextView;
    .end local v10           #sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :cond_8b
    return-void

    .line 1684
    .restart local v0       #appIcon:Landroid/widget/ImageView;
    .restart local v2       #appText:Landroid/widget/TextView;
    .restart local v3       #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v7       #nameView:Landroid/widget/TextView;
    .restart local v8       #pkgManager:Landroid/content/pm/PackageManager;
    .restart local v9       #pkgName:Ljava/lang/String;
    .restart local v10       #sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :catch_8c
    move-exception v4

    .line 1687
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1688
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_67

    .line 1700
    .end local v0           #appIcon:Landroid/widget/ImageView;
    .end local v2           #appText:Landroid/widget/TextView;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #pkgManager:Landroid/content/pm/PackageManager;
    .end local v9           #pkgName:Ljava/lang/String;
    .restart local v5       #footer:Landroid/widget/TextView;
    .restart local v6       #footerSep:Landroid/view/View;
    :cond_96
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_88
.end method


# virtual methods
.method getInstrumentedActivity()Lcom/google/android/apps/plus/analytics/InstrumentedActivity;
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    return-object v0
.end method

.method public hasContent()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1348
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    .line 1358
    :goto_18
    return v1

    .line 1350
    :cond_19
    const-string v1, ""

    goto :goto_11

    .line 1354
    :cond_1c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    move v1, v2

    .line 1355
    goto :goto_18

    .line 1358
    :cond_26
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 997
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 998
    if-nez p1, :cond_1f

    .line 999
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v3, :cond_20

    move v0, v1

    .line 1000
    .local v0, hasLocation:Z
    :goto_c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLocationPreference()Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->isProviderEnabled()Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_1c
    invoke-virtual {v3, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 1003
    .end local v0           #hasLocation:Z
    :cond_1f
    return-void

    :cond_20
    move v0, v2

    .line 999
    goto :goto_c

    .restart local v0       #hasLocation:Z
    :cond_22
    move v1, v2

    .line 1000
    goto :goto_1c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 1423
    packed-switch p1, :pswitch_data_b6

    .line 1482
    :cond_4
    :goto_4
    return-void

    .line 1425
    :pswitch_5
    if-ne p2, v5, :cond_4

    if-eqz p3, :cond_4

    .line 1426
    const-string v5, "audience"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1428
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v5, :cond_4

    .line 1429
    const-string v5, "ShareFragment"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1430
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 1431
    .local v1, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    const-string v5, "ShareFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out circle id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1440
    .end local v1           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_53
    if-ne p2, v5, :cond_4

    if-eqz p3, :cond_4

    .line 1441
    const-string v5, "location"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1446
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v5, :cond_69

    const/4 v5, 0x1

    :goto_66
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mRemoveLocation:Z

    goto :goto_4

    :cond_69
    const/4 v5, 0x0

    goto :goto_66

    .line 1452
    :pswitch_6b
    if-ne p2, v5, :cond_4

    if-eqz p3, :cond_4

    .line 1453
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1454
    const-string v5, "mediarefs"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1457
    .local v4, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_80
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1458
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 1460
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 1468
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :pswitch_9a
    if-ne p2, v5, :cond_4

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1470
    .local v0, activity:Landroid/app/Activity;
    instance-of v5, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v5, :cond_aa

    move-object v5, v0

    .line 1471
    check-cast v5, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    invoke-interface {v5}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->showInsertCameraPhotoDialog()V

    .line 1474
    :cond_aa
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v6, "camera-post.jpg"

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 1423
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_9a
        :pswitch_5
        :pswitch_53
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 1241
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1242
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1255
    :goto_10
    return v2

    .line 1245
    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "viewId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1247
    .local v1, viewId:I
    const v2, 0x7f0901c1

    if-ne v1, v2, :cond_35

    .line 1248
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1249
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1250
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V

    .line 1255
    .end local v0           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_33
    :goto_33
    const/4 v2, 0x1

    goto :goto_10

    .line 1251
    :cond_35
    const v2, 0x7f090234

    if-ne v1, v2, :cond_33

    .line 1252
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 1253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePreviewContainer(Landroid/view/View;)V

    goto :goto_33
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 514
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 517
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 519
    if-nez p1, :cond_11c

    .line 522
    const-string v3, "external_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 523
    const-string v3, "external_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    .line 525
    :cond_26
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    if-nez v3, :cond_4d

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    .line 537
    :cond_4d
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLocationFromExtras(Landroid/os/Bundle;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 539
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 540
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 541
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachments:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f090028

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v4, v8, v5}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 544
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingMediaAttachments:Z

    .line 547
    :cond_78
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 548
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    .line 551
    :cond_88
    const-string v3, "footer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 552
    const-string v3, "footer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    .line 555
    :cond_98
    const-string v3, "api_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 556
    const-string v3, "api_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 559
    :cond_aa
    const-string v3, "audience"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 560
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-nez v3, :cond_c6

    .line 561
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    invoke-direct {v4, p0, v8}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-virtual {v3, v7, v8, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 563
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingAudience:Z

    .line 566
    :cond_c6
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 567
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    .line 569
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingMediaAttachments:Z

    if-nez v3, :cond_113

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_113

    .line 570
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 571
    .local v2, string:Landroid/text/SpannableString;
    invoke-static {v2, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 572
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v6, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 573
    .local v1, spans:[Landroid/text/style/URLSpan;
    array-length v3, v1

    if-lt v3, v7, :cond_113

    .line 574
    aget-object v3, v1, v6

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    .line 577
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 578
    iput-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    .line 584
    .end local v1           #spans:[Landroid/text/style/URLSpan;
    .end local v2           #string:Landroid/text/SpannableString;
    :cond_113
    const-string v3, "is_from_plusone"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    .line 636
    :goto_11b
    return-void

    .line 587
    :cond_11c
    const-string v3, "activity_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    .line 589
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_136

    .line 590
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 593
    :cond_136
    const-string v3, "prov_location"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 594
    const-string v3, "prov_location"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;

    .line 598
    :cond_148
    const-string v3, "pending_request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 599
    const-string v3, "pending_request_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 602
    :cond_15c
    const-string v3, "insert_camera_photo_req_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_170

    .line 603
    const-string v3, "insert_camera_photo_req_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 607
    :cond_170
    const-string v3, "preview_result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 608
    const-string v3, "preview_result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryActivity;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 611
    :cond_182
    const-string v3, "api_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 612
    const-string v3, "api_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 615
    :cond_194
    const-string v3, "footer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 616
    const-string v3, "footer"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    .line 619
    :cond_1a4
    const-string v3, "l_attachments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 621
    const-string v3, "loading_attachments"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingMediaAttachments:Z

    .line 624
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 625
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    .line 628
    :cond_1c4
    const-string v3, "text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 629
    const-string v3, "text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    .line 632
    :cond_1d4
    const-string v3, "is_from_plusone"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    goto/16 :goto_11b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1212
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    if-ne p2, v5, :cond_53

    .line 1213
    const/4 v4, 0x0

    .line 1214
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_20

    .line 1215
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1216
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1217
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1222
    .end local v0           #child:Landroid/view/View;
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_20
    if-eqz v4, :cond_53

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1224
    .local v2, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f100029

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1226
    const v5, 0x7f0801ec

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1227
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1229
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "viewId"

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1231
    const v5, 0x7f090306

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1234
    .end local v1           #i:I
    .end local v2           #inflater:Landroid/view/MenuInflater;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_53
    return-void

    .line 1214
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #i:I
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f090234

    const/4 v8, 0x0

    .line 879
    const v4, 0x7f0300c5

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 881
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 883
    const v4, 0x7f090079

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingView:Landroid/view/View;

    .line 884
    const v4, 0x7f0901c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    .line 885
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mBottomActionBarView:Landroid/view/View;

    .line 887
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 889
    new-instance v4, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGalleryView:Landroid/view/ViewGroup;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mMediaGallery:Lcom/google/android/apps/plus/fragments/ShareFragment$MediaGallery;

    .line 891
    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    .line 892
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingAudience:Z

    if-eqz v4, :cond_18a

    const v4, 0x7f0800c4

    :goto_5a
    invoke-virtual {v5, v4}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 894
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$5;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 906
    const v4, 0x7f0901c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 907
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "start_editing"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_95

    if-nez p3, :cond_95

    .line 909
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 911
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->requestFocus()Z

    .line 913
    :cond_95
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v4, p0, v5, v10, v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 914
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 915
    if-nez p3, :cond_ae

    .line 916
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_ae
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v5, Lcom/google/android/apps/plus/fragments/ShareFragment$6;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/ShareFragment$6;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 942
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f0035

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 945
    .local v2, themeContext:Landroid/content/Context;
    new-instance v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 947
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 948
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, v8}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 949
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->searchListAdapterListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V

    .line 950
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 951
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 952
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 954
    const v4, 0x7f09023b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/CompoundImageButton;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    .line 956
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onCheckChangeListener:Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setOnCheckedChangeListener(Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;)V

    .line 959
    if-eqz p3, :cond_126

    .line 960
    const-string v4, "audience"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 961
    const-string v4, "audience"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 963
    .local v1, audienceBytes:[B
    :try_start_11c
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 964
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 965
    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_126
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11c .. :try_end_126} :catch_18f

    .line 971
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v1           #audienceBytes:[B
    :cond_126
    :goto_126
    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    const v4, 0x7f0900a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    const v4, 0x7f09023c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    const v4, 0x7f09023d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewContainerView:Landroid/view/ViewGroup;

    .line 979
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_180

    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingMediaAttachments:Z

    if-nez v4, :cond_180

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_180

    .line 980
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v7, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;

    invoke-direct {v7, p0, v10}, Lcom/google/android/apps/plus/fragments/ShareFragment$CursorLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 982
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z

    .line 985
    :cond_180
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateLocation(Landroid/view/View;)V

    .line 986
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 987
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateViews(Landroid/view/View;)V

    .line 989
    return-object v3

    .line 892
    .end local v2           #themeContext:Landroid/content/Context;
    :cond_18a
    const v4, 0x7f080248

    goto/16 :goto_5a

    .line 966
    .restart local v1       #audienceBytes:[B
    .restart local v2       #themeContext:Landroid/content/Context;
    :catch_18f
    move-exception v4

    goto :goto_126
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 1057
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 1058
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1409
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1416
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1402
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1388
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE_FROM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_18
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1395
    :cond_22
    return-void

    .line 1389
    :cond_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_18
.end method

.method public onDiscard()V
    .registers 6

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1368
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801ef

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08020b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1372
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1373
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1381
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_38
    return-void

    .line 1375
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    if-eqz v1, :cond_54

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE_FROM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_49
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_38

    .line 1375
    :cond_54
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CANCEL_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_49
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 1143
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1144
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->removeLocationListener()V

    .line 1145
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1087
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 1089
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 1091
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_25

    .line 1092
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1093
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateAudienceUI(Landroid/view/View;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 1095
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1098
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1099
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 1100
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->handlePostResult(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1103
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_48
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_6a

    .line 1104
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1105
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 1106
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->insertCameraPhoto(Ljava/lang/String;)V

    .line 1107
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 1111
    :cond_6a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->isProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 1112
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 1118
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v1, :cond_84

    .line 1119
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->addLocationListener()V

    .line 1123
    :cond_84
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v1, :cond_8c

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mRemoveLocation:Z

    if-eqz v1, :cond_ac

    .line 1124
    :cond_8c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1125
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mRemoveLocation:Z

    if-nez v1, :cond_d2

    const/4 v1, 0x1

    :goto_97
    invoke-virtual {v3, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 1126
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1127
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mRemoveLocation:Z

    .line 1129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateLocation(Landroid/view/View;)V

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V

    .line 1133
    :cond_ac
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateResultMediaItems()V

    .line 1134
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->updateBottomActionBar()V

    .line 1135
    return-void

    .line 1113
    :cond_b3
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x1d71d84

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_75

    :cond_d2
    move v1, v2

    .line 1125
    goto :goto_97
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1152
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1154
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1156
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_1a

    .line 1159
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1162
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;

    if-eqz v0, :cond_25

    .line 1163
    const-string v0, "prov_location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1166
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    .line 1167
    const-string v0, "pending_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    if-eqz v0, :cond_3f

    .line 1171
    const-string v0, "preview_result"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1174
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-eqz v0, :cond_4a

    .line 1175
    const-string v0, "api_info"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1178
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 1179
    const-string v0, "footer"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mFooterMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1182
    :cond_55
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_60

    .line 1183
    const-string v0, "l_attachments"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1186
    :cond_60
    const-string v0, "loading_attachments"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingMediaAttachments:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1188
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 1189
    const-string v0, "url"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 1193
    const-string v0, "text"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mOriginalText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_7d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_8c

    .line 1197
    const-string v0, "insert_camera_photo_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1200
    :cond_8c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    if-eqz v0, :cond_96

    .line 1201
    const-string v0, "is_from_plusone"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1204
    :cond_96
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1065
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1066
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 1067
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 1069
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1076
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 1077
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 1078
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 1080
    :cond_c
    return-void
.end method

.method public post()Z
    .registers 21

    .prologue
    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLoadingUrlPreview:Z

    if-eqz v2, :cond_e

    .line 1551
    :cond_c
    const/4 v2, 0x0

    .line 1626
    :goto_d
    return v2

    .line 1554
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mIsFromPlusOne:Z

    if-eqz v2, :cond_61

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONFIRM_SHARE_FROM_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_22
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    .line 1562
    .local v12, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    .line 1563
    .local v7, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mCommentsView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v19

    .line 1566
    .local v19, spannable:Landroid/text/Spannable;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    .line 1568
    .local v13, editor:Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 1569
    invoke-virtual {v13}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v18

    .line 1570
    .local v18, message:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v12, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1571
    const/4 v2, 0x0

    goto :goto_d

    .line 1554
    .end local v7           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v12           #activity:Landroid/app/Activity;
    .end local v13           #editor:Landroid/widget/EditText;
    .end local v18           #message:Ljava/lang/CharSequence;
    .end local v19           #spannable:Landroid/text/Spannable;
    :cond_61
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONFIRM_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_22

    .line 1575
    .restart local v7       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .restart local v12       #activity:Landroid/app/Activity;
    .restart local v19       #spannable:Landroid/text/Spannable;
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_a4

    const/16 v17, 0x1

    .line 1576
    .local v17, hasUrl:Z
    :goto_6c
    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_a7

    const/4 v15, 0x1

    .line 1577
    .local v15, hasComment:Z
    :goto_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v2, :cond_a9

    const/16 v16, 0x1

    .line 1578
    .local v16, hasLocation:Z
    :goto_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ac

    const/4 v14, 0x1

    .line 1579
    .local v14, hasAttachmentRefs:Z
    :goto_86
    if-nez v17, :cond_ae

    if-nez v15, :cond_ae

    if-nez v16, :cond_ae

    if-nez v14, :cond_ae

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1582
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1575
    .end local v14           #hasAttachmentRefs:Z
    .end local v15           #hasComment:Z
    .end local v16           #hasLocation:Z
    .end local v17           #hasUrl:Z
    :cond_a4
    const/16 v17, 0x0

    goto :goto_6c

    .line 1576
    .restart local v17       #hasUrl:Z
    :cond_a7
    const/4 v15, 0x0

    goto :goto_73

    .line 1577
    .restart local v15       #hasComment:Z
    :cond_a9
    const/16 v16, 0x0

    goto :goto_7b

    .line 1578
    .restart local v16       #hasLocation:Z
    :cond_ac
    const/4 v14, 0x0

    goto :goto_86

    .line 1585
    .restart local v14       #hasAttachmentRefs:Z
    :cond_ae
    const/16 v2, 0x409e

    invoke-virtual {v12, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 1587
    if-eqz v14, :cond_c6

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST_WITH_ATTACHMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1592
    :cond_c6
    if-eqz v15, :cond_d9

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST_WITH_COMMENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1597
    :cond_d9
    if-eqz v15, :cond_ec

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST_WITH_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1602
    :cond_ec
    if-eqz v17, :cond_ff

    .line 1603
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_POST_WITH_URL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 1607
    :cond_ff
    new-instance v1, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v6}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    .line 1610
    .local v1, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v19

    invoke-static {v12, v2, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->buildPostableString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v9

    .line 1611
    .local v9, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserShareActions(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1612
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mActivityId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-object v4, v1

    invoke-static/range {v2 .. v11}, Lcom/google/android/apps/plus/service/EsService;->postActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Location;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;

    .line 1616
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/apps/plus/fragments/ShareFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/google/android/apps/plus/fragments/ShareFragment$7;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1626
    const/4 v2, 0x1

    goto/16 :goto_d
.end method

.method public setLocationChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 1813
    return-void
.end method

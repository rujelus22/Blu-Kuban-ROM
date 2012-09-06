.class public Lcom/google/android/apps/plus/fragments/PostFragment;
.super Landroid/support/v4/app/Fragment;
.source "PostFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PostFragment$MediaRefLoader;,
        Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;,
        Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/PostFragment$AccountStatusQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mActivityId:Ljava/lang/String;

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

.field private mAudienceDisplay:Ljava/lang/String;

.field private mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mGallery:Landroid/widget/LinearLayout;

.field private mInsertCameraPhotoRequestId:Ljava/lang/Integer;

.field private mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mLocationChecked:Z

.field private mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

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

.field private mMediaRefMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationType:I

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

.field private mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

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

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 145
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    .line 360
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 399
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/AudienceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/fragments/PostFragment;)Landroid/widget/ScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->insertCameraPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PostFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getCityLevelLocationPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    return-void
.end method

.method private addLocationListener()V
    .registers 10

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_1c

    .line 1459
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    new-instance v7, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1463
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1464
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 1468
    :goto_27
    return-void

    .line 1466
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->init()V

    goto :goto_27
.end method

.method private addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter "mediaRef"

    .prologue
    const/4 v3, 0x0

    .line 1204
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->add(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1207
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1208
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1210
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    return-void
.end method

.method private clearMediaGallery()V
    .registers 3

    .prologue
    .line 1230
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1231
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_0

    .line 1233
    :cond_15
    return-void
.end method

.method private getCityLevelLocationPreference()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "streams"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "city_level_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getLocationPreference()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "streams"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "want_locations"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1412
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_d

    .line 1451
    :cond_c
    :goto_c
    return-void

    .line 1416
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1418
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1420
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 1421
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1424
    :cond_21
    if-eqz p2, :cond_42

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1426
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    packed-switch v2, :pswitch_data_50

    .line 1433
    const v1, 0x7f0801ae

    .line 1438
    .local v1, resId:I
    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1428
    .end local v1           #resId:I
    :pswitch_3e
    const v1, 0x7f0801e9

    .line 1429
    .restart local v1       #resId:I
    goto :goto_31

    .line 1440
    .end local v1           #resId:I
    :cond_42
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    packed-switch v2, :pswitch_data_56

    goto :goto_c

    .line 1442
    :pswitch_48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c

    .line 1426
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch

    .line 1440
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_48
    .end packed-switch
.end method

.method private insertCameraPhoto(Ljava/lang/String;)V
    .registers 10
    .parameter "mediaLocation"

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1305
    .local v7, activity:Landroid/app/Activity;
    if-eqz p1, :cond_33

    .line 1306
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1307
    .local v5, photoUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 1310
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1311
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateResultMediaItems()V

    .line 1318
    .end local v0           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #photoUri:Landroid/net/Uri;
    :goto_29
    instance-of v1, v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v1, :cond_32

    .line 1319
    check-cast v7, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    .end local v7           #activity:Landroid/app/Activity;
    invoke-interface {v7}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->hideInsertCameraPhotoDialog()V

    .line 1321
    :cond_32
    return-void

    .line 1314
    .restart local v7       #activity:Landroid/app/Activity;
    :cond_33
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

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
    .line 1495
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 1488
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1490
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

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1516
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_d

    .line 1517
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1519
    :cond_d
    return-void
.end method

.method private removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 4
    .parameter "mediaRef"

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1220
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->remove(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1222
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1223
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 1224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1227
    :cond_1d
    return-void
.end method

.method private removeFromMediaGallery(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, refList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1242
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_4

    .line 1244
    .end local v1           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_14
    return-void
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 1476
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1479
    :cond_c
    return-void
.end method

.method private selectView(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_9

    .line 1283
    :cond_8
    :goto_8
    return-void

    .line 1255
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1257
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1259
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1260
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b

    .line 1262
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v1, :cond_2b

    .line 1263
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1279
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v1, :cond_8

    .line 1280
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    const v2, 0x7f0801ed

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;I)V

    goto :goto_8

    .line 1268
    :cond_4c
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1269
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mSelectedPhotos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2b

    .line 1272
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v1, :cond_65

    .line 1273
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1275
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_2b
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter "audience"

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceDisplay:Ljava/lang/String;

    .line 1181
    const-string v0, "PostActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1182
    const-string v0, "PostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACL display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_2f
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 6
    .parameter "operationType"

    .prologue
    .line 1396
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    .line 1398
    const/4 v1, 0x0

    const v2, 0x7f0801af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1401
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1402
    return-void
.end method

.method private updateLocation(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 1348
    const v5, 0x7f0901c5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1349
    .local v0, centered:Landroid/widget/TextView;
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1350
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x1020005

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1351
    .local v1, hint:Landroid/widget/TextView;
    const v5, 0x7f0901c6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1352
    .local v3, progress:Landroid/view/View;
    const v5, 0x7f0900a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1353
    .local v2, marker:Landroid/widget/ImageView;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    if-eqz v5, :cond_98

    .line 1354
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v5, :cond_82

    .line 1355
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1357
    const v5, 0x7f0200e2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1359
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1360
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1363
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1388
    :goto_6a
    return-void

    .line 1366
    :cond_6b
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a

    .line 1372
    :cond_82
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1374
    const v5, 0x7f0801bb

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1375
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a

    .line 1380
    :cond_98
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1382
    const v5, 0x7f0200ab

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1383
    const v5, 0x7f0801bc

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1384
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1385
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1386
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a
.end method

.method private updateMediaGallery()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 1191
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2, v0, v4, v4}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1192
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1196
    .end local v1           #view:Landroid/view/View;
    :cond_26
    return-void
.end method

.method private updatePostUI()V
    .registers 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/PostActivity;

    .line 1168
    .local v0, postActivity:Lcom/google/android/apps/plus/phone/PostActivity;
    if-eqz v0, :cond_b

    .line 1169
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PostActivity;->invalidateMenu()V

    .line 1171
    :cond_b
    return-void
.end method

.method private updateResultMediaItems()V
    .registers 9

    .prologue
    const/16 v6, 0xfa

    const/4 v7, 0x1

    .line 1328
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 1329
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v6, :cond_45

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080187

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1338
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1339
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1340
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 1342
    :cond_44
    return-void

    .line 1333
    :cond_45
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1334
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_4b
.end method


# virtual methods
.method public hasContent()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0901c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, content:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    move v1, v2

    .line 1299
    :goto_1d
    return v1

    .line 1295
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28

    move v1, v2

    .line 1296
    goto :goto_1d

    .line 1299
    :cond_28
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 678
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 679
    if-nez p1, :cond_1d

    .line 680
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v3, :cond_1e

    move v0, v1

    .line 681
    .local v0, hasLocation:Z
    :goto_c
    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLocationPreference()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_1a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setLocationChecked(Z)V

    .line 683
    .end local v0           #hasLocation:Z
    :cond_1d
    return-void

    :cond_1e
    move v0, v2

    .line 680
    goto :goto_c

    .restart local v0       #hasLocation:Z
    :cond_20
    move v1, v2

    .line 681
    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 1042
    packed-switch p1, :pswitch_data_7a

    .line 1099
    :cond_4
    :goto_4
    return-void

    .line 1044
    :pswitch_5
    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_4

    .line 1045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1046
    const-string v4, "mediarefs"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1049
    .local v3, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->clearMediaGallery()V

    .line 1051
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1052
    .local v2, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1054
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1063
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :pswitch_37
    if-ne p2, v4, :cond_4

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1065
    .local v0, activity:Landroid/app/Activity;
    instance-of v4, v0, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    if-eqz v4, :cond_47

    move-object v4, v0

    .line 1066
    check-cast v4, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;

    invoke-interface {v4}, Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;->showInsertCameraPhotoDialog()V

    .line 1069
    :cond_47
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "camera-post.jpg"

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->insertCameraPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    goto :goto_4

    .line 1077
    .end local v0           #activity:Landroid/app/Activity;
    :pswitch_52
    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_4

    .line 1078
    const-string v4, "audience"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_4

    .line 1084
    :pswitch_61
    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_4

    .line 1085
    const-string v4, "location"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1090
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v4, :cond_77

    const/4 v4, 0x1

    :goto_74
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    goto :goto_4

    :cond_77
    const/4 v4, 0x0

    goto :goto_74

    .line 1042
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_37
        :pswitch_52
        :pswitch_61
    .end packed-switch
.end method

.method public onCheckedChanged(Lcom/google/android/apps/plus/views/CompoundImageButton;ZZ)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"
    .parameter "fromUser"

    .prologue
    const/4 v2, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 990
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_3a

    .line 991
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 992
    const v1, 0x1bfb7a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1014
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 1015
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 1016
    return-void

    .line 994
    :cond_1e
    if-eqz p3, :cond_22

    .line 996
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 998
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 999
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->addLocationListener()V

    .line 1000
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1001
    const v1, 0x1d71d84

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_13

    .line 1008
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 1010
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1011
    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    goto :goto_13
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_90

    .line 957
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8c

    .line 966
    :goto_10
    return-void

    .line 918
    :sswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 919
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isCheckIn()Z

    move-result v11

    .line 920
    .local v11, placesOnly:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 922
    .local v10, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v11, v10}, Lcom/google/android/apps/plus/phone/Intents;->getChooseLocationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v9

    .line 924
    .local v9, intent:Landroid/content/Intent;
    const/4 v0, 0x4

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 929
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    .end local v11           #placesOnly:Z
    :sswitch_37
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_ACL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 930
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f0802d3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 942
    :sswitch_5b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 943
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "camera-post.jpg"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 944
    .restart local v9       #intent:Landroid/content/Intent;
    const/4 v0, 0x2

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 949
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_6f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 950
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_84

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    :cond_84
    invoke-static {v0, v1, v10, v7}, Lcom/google/android/apps/plus/phone/Intents;->getCameraPhotosPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v9

    .line 952
    .restart local v9       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v9, v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 961
    .end local v9           #intent:Landroid/content/Intent;
    :cond_8c
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->selectView(Landroid/view/View;)V

    goto :goto_10

    .line 916
    :sswitch_data_90
    .sparse-switch
        0x7f090064 -> :sswitch_37
        0x7f0901c4 -> :sswitch_11
        0x7f0901c8 -> :sswitch_5b
        0x7f0901c9 -> :sswitch_6f
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 842
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 850
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 844
    :pswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mediarefs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 845
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 846
    const/4 v1, 0x1

    goto :goto_b

    .line 842
    nop

    :pswitch_data_1e
    .packed-switch 0x7f090306
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 487
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 491
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "account"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 493
    if-eqz p1, :cond_81

    .line 494
    const-string v5, "activity_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    .line 495
    const-string v5, "location"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 496
    const-string v5, "location"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 499
    :cond_2e
    const-string v5, "prov_location"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 500
    const-string v5, "prov_location"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    .line 504
    :cond_40
    const-string v5, "l_attachments"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 506
    const-string v5, "post_request_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 507
    const-string v5, "post_request_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 510
    :cond_5c
    const-string v5, "insert_camera_photo_req_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 511
    const-string v5, "insert_camera_photo_req_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 515
    :cond_70
    const-string v5, "op_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    .line 516
    const-string v5, "location_checked"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    .line 560
    :cond_80
    return-void

    .line 518
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 519
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    .line 521
    const-string v5, "activity_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    .line 533
    :goto_9d
    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 535
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 536
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    const v6, 0x7f090028

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v6, v8, v7}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 540
    :cond_c3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 542
    const-string v5, "audience"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 543
    const-string v5, "audience"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 546
    :cond_dc
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-nez v5, :cond_ea

    .line 548
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    const v6, 0x7f090027

    invoke-virtual {v5, v6, v8, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 551
    :cond_ea
    const-string v5, "mediarefs"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 554
    .local v4, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    if-eqz v4, :cond_80

    .line 555
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 556
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_f6

    .line 531
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_106
    const/16 v5, 0x20

    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    goto :goto_9d
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 813
    const/4 v4, 0x0

    .line 814
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1c

    .line 815
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 816
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 817
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    .line 823
    .end local v0           #child:Landroid/view/View;
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_1c
    if-eqz v4, :cond_4c

    .line 824
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_4c

    .line 825
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 826
    .local v2, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f100029

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 828
    const v5, 0x7f0801ec

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 829
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 831
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "mediarefs"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 832
    const v5, 0x7f090306

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 835
    .end local v2           #inflater:Landroid/view/MenuInflater;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4c
    return-void

    .line 814
    .restart local v0       #child:Landroid/view/View;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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
    const/4 v4, 0x0

    .line 860
    packed-switch p1, :pswitch_data_1c

    move-object v0, v4

    .line 868
    :goto_5
    return-object v0

    .line 862
    :pswitch_6
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/PostFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 860
    :pswitch_data_1c
    .packed-switch 0x7f090027
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 568
    const v2, 0x7f0300a0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 571
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0901c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    .line 572
    new-instance v2, Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    .line 573
    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/AudienceView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 575
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    new-instance v3, Lcom/google/android/apps/plus/fragments/PostFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 587
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 588
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;)V

    .line 590
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 592
    new-instance v0, Lcom/google/android/apps/plus/util/MentionTokenizer;

    invoke-direct {v0}, Lcom/google/android/apps/plus/util/MentionTokenizer;-><init>()V

    .line 593
    .local v0, mentionTokenizer:Lcom/google/android/apps/plus/util/MentionTokenizer;
    const v2, 0x7f0901bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 594
    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 595
    if-nez p3, :cond_76

    .line 596
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_76
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V

    .line 599
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v3, Lcom/google/android/apps/plus/fragments/PostFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/util/MentionTokenizer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 645
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 648
    const v2, 0x7f0901c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    const v2, 0x7f0901c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    const v2, 0x7f0901c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 655
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 656
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateMediaGallery()V

    .line 658
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 660
    return-object v1
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 670
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 671
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1123
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1130
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1116
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1106
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1109
    :cond_f
    return-void
.end method

.method public onDiscard()V
    .registers 6

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1025
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isCheckIn()Z

    move-result v1

    if-eqz v1, :cond_3f

    const v1, 0x7f0801e7

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_18
    const v2, 0x7f0801ef

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08020b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1030
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1035
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_3e
    return-void

    .line 1025
    :cond_3f
    const v1, 0x7f0801e6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 1033
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3e
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 974
    packed-switch p2, :pswitch_data_e

    .line 980
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 976
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 977
    const/4 v0, 0x1

    goto :goto_8

    .line 974
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 8
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
    .line 878
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    .line 901
    :cond_7
    :goto_7
    return-void

    .line 880
    :pswitch_8
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->isEdited()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 881
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 883
    .local v1, audienceBytes:[B
    if-eqz v1, :cond_7

    .line 885
    :try_start_1f
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 886
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 887
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/AudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 888
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;)V
    :try_end_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1f .. :try_end_34} :catch_35

    goto :goto_7

    .line 889
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :catch_35
    move-exception v2

    .line 890
    .local v2, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_7

    .line 878
    :pswitch_data_3a
    .packed-switch 0x7f090027
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 909
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 769
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 770
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 772
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 773
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const v3, 0x7f0901c8

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 708
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 709
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 711
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 712
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_45

    .line 717
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_45

    .line 718
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 719
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 723
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_45
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_67

    .line 724
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_67

    .line 725
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 726
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->insertCameraPhoto(Ljava/lang/String;)V

    .line 727
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    .line 731
    :cond_67
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 732
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->setLocationChecked(Z)V

    .line 738
    :cond_70
    :goto_70
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v1, :cond_7b

    .line 739
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->addLocationListener()V

    .line 743
    :cond_7b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v1, :cond_83

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    if-eqz v1, :cond_9d

    .line 744
    :cond_83
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 745
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    if-nez v1, :cond_e0

    const/4 v1, 0x1

    :goto_8c
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setLocationChecked(Z)V

    .line 746
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 747
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    .line 749
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 750
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 753
    :cond_9d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v1, :cond_b2

    .line 754
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 756
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 757
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 758
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 761
    :cond_b2
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateResultMediaItems()V

    .line 762
    return-void

    .line 714
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_22

    .line 733
    :cond_c5
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 735
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x1d71d84

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_70

    :cond_e0
    move v1, v2

    .line 745
    goto :goto_8c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 782
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_15

    .line 785
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 788
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    if-eqz v0, :cond_20

    .line 789
    const-string v0, "prov_location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 793
    const-string v0, "l_attachments"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 796
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    .line 797
    const-string v0, "post_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_49

    .line 801
    const-string v0, "insert_camera_photo_req_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mInsertCameraPhotoRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    :cond_49
    const-string v0, "op_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string v0, "location_checked"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 806
    return-void
.end method

.method public post()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 1136
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1137
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1140
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 1142
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1143
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AudienceView;->performClick()Z

    .line 1160
    :goto_21
    return v1

    .line 1147
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    .local v3, content:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_42
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1150
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->requestFocus()Z

    .line 1151
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1152
    .local v10, message:Ljava/lang/CharSequence;
    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 1156
    .end local v10           #message:Ljava/lang/CharSequence;
    :cond_5d
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v4

    .line 1157
    .local v4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceDisplay:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/service/EsService;->createActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/ArrayList;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1159
    invoke-direct {p0, v11}, Lcom/google/android/apps/plus/fragments/PostFragment;->showProgressDialog(I)V

    move v1, v11

    .line 1160
    goto :goto_21
.end method

.method public setLocationChecked(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 1505
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    .line 1506
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationChecked:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->onCheckedChanged(Lcom/google/android/apps/plus/views/CompoundImageButton;ZZ)V

    .line 1507
    return-void
.end method

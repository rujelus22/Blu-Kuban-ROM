.class public Lcom/google/android/apps/plus/fragments/PostFragment;
.super Landroid/support/v4/app/Fragment;
.source "PostFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;
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
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;",
        "Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field private mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

.field private mAudienceDisplay:Ljava/lang/String;

.field private mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

.field private mGallery:Landroid/widget/LinearLayout;

.field private mLoadingAudience:Z

.field private mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field private mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

.field private mMediaButton:Landroid/widget/ImageButton;

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

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/PostFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 144
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 366
    new-instance v0, Lcom/google/android/apps/plus/fragments/PostFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 401
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/fragments/PostFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/fragments/PostFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/views/AudienceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/fragments/PhotoAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PostFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getCityLevelLocationPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method private addLocationListener()V
    .registers 10

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_27

    .line 1403
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

    .line 1405
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1406
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 1409
    :cond_27
    return-void
.end method

.method private addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter "mediaRef"

    .prologue
    const/4 v3, 0x0

    .line 1256
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->add(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1259
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1261
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateAttachMediaUI()V

    .line 1262
    return-void
.end method

.method private getCityLevelLocationPreference()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 653
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

    .line 644
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
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1395
    :cond_c
    :goto_c
    return-void

    .line 1360
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "req_pending"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1364
    if-eqz v0, :cond_21

    .line 1365
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1368
    :cond_21
    if-eqz p2, :cond_42

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1370
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    packed-switch v0, :pswitch_data_50

    .line 1377
    const v0, 0x7f070119

    .line 1382
    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1372
    :pswitch_3e
    const v0, 0x7f070151

    .line 1373
    goto :goto_31

    .line 1384
    :cond_42
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    packed-switch v0, :pswitch_data_56

    goto :goto_c

    .line 1386
    :pswitch_48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_c

    .line 1370
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch

    .line 1384
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_48
    .end packed-switch
.end method

.method private isCheckIn()Z
    .registers 3

    .prologue
    .line 1436
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
    .registers 3

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1431
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1456
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_d

    .line 1457
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1459
    :cond_d
    return-void
.end method

.method private removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter "mediaRef"

    .prologue
    .line 1270
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1271
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->remove(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 1273
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 1274
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1276
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1277
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1282
    .end local v0           #child:Landroid/view/View;
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateAttachMediaUI()V

    .line 1283
    return-void

    .line 1273
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 1417
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 1418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1420
    :cond_c
    return-void
.end method

.method private setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 5
    .parameter

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceDisplay:Ljava/lang/String;

    .line 1224
    const-string v0, "PostActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1225
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

    .line 1227
    :cond_2f
    return-void
.end method

.method private showProgressDialog(I)V
    .registers 5
    .parameter

    .prologue
    .line 1340
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    .line 1342
    const/4 v0, 0x0

    const v1, 0x7f07011a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1345
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method private updateAttachMediaUI()V
    .registers 3

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1234
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f02001c

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1237
    :cond_18
    return-void

    .line 1234
    :cond_19
    const v0, 0x7f02001d

    goto :goto_15
.end method

.method private updateLocation(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1306
    const v0, 0x7f0d0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1307
    const v0, 0x7f0d0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1308
    const v1, 0x7f0d0142

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1309
    const v1, 0x7f0d0143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1310
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v4

    .line 1311
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1312
    if-eqz v4, :cond_77

    .line 1313
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v2, :cond_62

    .line 1314
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1317
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setImageResource(I)V

    .line 1318
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    :goto_56
    return-void

    .line 1318
    :cond_57
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    .line 1321
    :cond_62
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1323
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setImageResource(I)V

    .line 1324
    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_56

    .line 1327
    :cond_77
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1330
    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_56
.end method

.method private updateMediaGallery()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1244
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {v2, v0, v3, v3}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1247
    :cond_18
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateAttachMediaUI()V

    .line 1248
    return-void
.end method

.method private updatePostUI()V
    .registers 2

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/PostActivity;

    .line 1211
    .local v0, postActivity:Lcom/google/android/apps/plus/phone/PostActivity;
    if-eqz v0, :cond_b

    .line 1212
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PostActivity;->invalidateMenu()V

    .line 1214
    :cond_b
    return-void
.end method


# virtual methods
.method public hasContent()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0d0140

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
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 632
    if-nez p1, :cond_1f

    .line 633
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v3, :cond_20

    move v0, v1

    .line 634
    .local v0, hasLocation:Z
    :goto_c
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLocationPreference()Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_16
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_1c
    invoke-virtual {v3, v1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 637
    .end local v0           #hasLocation:Z
    :cond_1f
    return-void

    :cond_20
    move v0, v2

    .line 633
    goto :goto_c

    .restart local v0       #hasLocation:Z
    :cond_22
    move v1, v2

    .line 634
    goto :goto_1c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v0, -0x1

    .line 1072
    packed-switch p1, :pswitch_data_c0

    .line 1147
    :cond_5
    :goto_5
    return-void

    .line 1074
    :pswitch_6
    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1076
    const-string v0, "mediarefs"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1078
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1080
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1082
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1083
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1085
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1088
    :cond_3f
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1092
    :cond_45
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 1093
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_49

    .line 1101
    :pswitch_59
    if-ne p2, v0, :cond_5

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 1104
    :try_start_5f
    const-string v0, "camera-post.jpg"

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_5

    .line 1108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1109
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 1112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 1113
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_85} :catch_86

    goto :goto_5

    .line 1115
    :catch_86
    move-exception v0

    .line 1116
    const v0, 0x7f070121

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1125
    :pswitch_97
    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 1126
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto/16 :goto_5

    .line 1132
    :pswitch_a7
    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 1133
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1138
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v0, :cond_be

    move v0, v7

    :goto_ba
    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    goto/16 :goto_5

    :cond_be
    const/4 v0, 0x0

    goto :goto_ba

    .line 1072
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_59
        :pswitch_97
        :pswitch_a7
    .end packed-switch
.end method

.method public onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "personId"
    .parameter "person"

    .prologue
    .line 879
    return-void
.end method

.method public onCheckedChanged(Lcom/google/android/apps/plus/views/CompoundImageButton;ZZ)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x0

    .line 1019
    sget-boolean v1, Lcom/google/android/apps/plus/fragments/PostFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    const v1, 0x7f0d0146

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->getId()I

    move-result v2

    if-eq v1, v2, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1020
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1021
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_4d

    .line 1022
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1023
    const v1, 0x1bfb7a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1045
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 1046
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 1047
    return-void

    .line 1025
    :cond_31
    if-eqz p3, :cond_35

    .line 1027
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1029
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1030
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->addLocationListener()V

    .line 1031
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1032
    const v1, 0x1d71d84

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_26

    .line 1039
    :cond_4d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 1041
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1042
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    goto :goto_26
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "circle"

    .prologue
    .line 858
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_AUTOCOMPLETE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 859
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/AudienceView;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 860
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 861
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_8a

    .line 996
    :goto_9
    return-void

    .line 955
    :sswitch_a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_ACL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 956
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v2, 0x7f070223

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 965
    :sswitch_2d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHANGE_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 966
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isCheckIn()Z

    move-result v11

    .line 967
    .local v11, placesOnly:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 969
    .local v9, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :goto_44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v11, v9}, Lcom/google/android/apps/plus/phone/Intents;->getChooseLocationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v8

    .line 971
    .local v8, intent:Landroid/content/Intent;
    const/4 v0, 0x4

    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 967
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_53
    const/4 v9, 0x0

    goto :goto_44

    .line 976
    .end local v11           #placesOnly:Z
    :sswitch_55
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_TAKE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 977
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "camera-post.jpg"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 978
    .restart local v8       #intent:Landroid/content/Intent;
    const/4 v0, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 983
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_69
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 984
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 985
    .local v10, mediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 986
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, v10}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhoneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v8

    .line 988
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v8, v6}, Lcom/google/android/apps/plus/fragments/PostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 953
    nop

    :sswitch_data_8a
    .sparse-switch
        0x7f0d0054 -> :sswitch_a
        0x7f0d0144 -> :sswitch_2d
        0x7f0d0147 -> :sswitch_55
        0x7f0d0148 -> :sswitch_69
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 824
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 832
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 826
    :pswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/MediaRef;

    .line 827
    .local v0, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeFromMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 828
    const/4 v1, 0x1

    goto :goto_b

    .line 824
    nop

    :pswitch_data_1e
    .packed-switch 0x7f0d01ed
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 462
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 466
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 468
    if-eqz p1, :cond_65

    .line 469
    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    .line 470
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 471
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 474
    :cond_2e
    const-string v2, "prov_location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 475
    const-string v2, "prov_location"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    .line 479
    :cond_40
    const-string v2, "l_attachments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 481
    const-string v2, "post_request_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 482
    const-string v2, "post_request_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 485
    :cond_5c
    const-string v2, "op_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    .line 521
    :cond_64
    :goto_64
    return-void

    .line 487
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 488
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 490
    const-string v2, "activity_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    .line 502
    :goto_81
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 504
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 505
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachments:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f0d0022

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaRefLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v4}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 509
    :cond_a7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    .line 511
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 512
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 515
    :cond_c0
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-nez v2, :cond_64

    .line 517
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f0d0021

    invoke-virtual {v2, v3, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLoadingAudience:Z

    goto :goto_64

    .line 500
    :cond_d2
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    goto :goto_81
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 790
    const/4 v4, 0x0

    .line 791
    .local v4, ref:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1c

    .line 792
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 793
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 794
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    check-cast v4, Lcom/google/android/apps/plus/api/MediaRef;

    .line 799
    .end local v0           #child:Landroid/view/View;
    .restart local v4       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_1c
    if-eqz v4, :cond_4c

    .line 800
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_50

    .line 801
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 802
    .local v2, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f100018

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 804
    const v5, 0x7f070154

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 805
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 807
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 808
    const v5, 0x7f0d01ed

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 817
    .end local v2           #inflater:Landroid/view/MenuInflater;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4c
    :goto_4c
    return-void

    .line 791
    .restart local v0       #child:Landroid/view/View;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 810
    .end local v0           #child:Landroid/view/View;
    :cond_50
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v5, :cond_59

    .line 811
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 814
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;

    invoke-direct {v6, p0, v4}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/api/MediaRef;)V

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/PostFragment$MediaActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_4c
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

    .line 886
    packed-switch p1, :pswitch_data_32

    move-object v0, v4

    .line 899
    :goto_5
    return-object v0

    .line 888
    :pswitch_6
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/PostFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 894
    :pswitch_1c
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/fragments/PostFragment$AccountStatusQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 886
    :pswitch_data_32
    .packed-switch 0x7f0d0021
        :pswitch_6
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0d0148

    const/4 v3, 0x0

    .line 529
    const v2, 0x7f030076

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 532
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d0145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    .line 533
    new-instance v2, Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/ViewGroup;Ljava/util/List;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    .line 534
    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/AudienceView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    .line 536
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLoadingAudience:Z

    if-eqz v2, :cond_11e

    const v2, 0x7f070096

    :goto_3b
    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    new-instance v4, Lcom/google/android/apps/plus/fragments/PostFragment$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/AudienceView;->setAudienceChangedCallback(Ljava/lang/Runnable;)V

    .line 550
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f0f002c

    invoke-direct {v0, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 553
    .local v0, themeContext:Landroid/content/Context;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 555
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setCircleUsageType(I)V

    .line 556
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setShowPersonNameDialog(Z)V

    .line 557
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;)V

    .line 558
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 559
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/AudienceView;->setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 560
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/plus/views/AudienceView;->initLoaders(Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 562
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mGallery:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 564
    const v2, 0x7f0d0140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 565
    if-nez p3, :cond_ad

    .line 566
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_ad
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v6, 0x0

    invoke-virtual {v2, p0, v4, v5, v6}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    new-instance v4, Lcom/google/android/apps/plus/fragments/PostFragment$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/fragments/PostFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 592
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 595
    const v2, 0x7f0d0054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v2, 0x7f0d0144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/CompoundImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    .line 602
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isCheckIn()Z

    move-result v2

    if-eqz v2, :cond_123

    const/16 v2, 0x8

    :goto_104
    invoke-virtual {v4, v2}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setOnCheckedChangeListener(Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;)V

    .line 605
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mMediaButton:Landroid/widget/ImageButton;

    .line 607
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 609
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateMediaGallery()V

    .line 611
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 613
    return-object v1

    .line 536
    .end local v0           #themeContext:Landroid/content/Context;
    :cond_11e
    const v2, 0x7f07019a

    goto/16 :goto_3b

    .restart local v0       #themeContext:Landroid/content/Context;
    :cond_123
    move v2, v3

    .line 602
    goto :goto_104
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->destroy()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    .line 623
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 624
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1171
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1164
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1154
    const-string v0, "quit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1157
    :cond_f
    return-void
.end method

.method public onDiscard()V
    .registers 6

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1055
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isCheckIn()Z

    move-result v1

    if-eqz v1, :cond_3a

    const v1, 0x7f07014f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_13
    const v2, 0x7f070156

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07016a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07016b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1060
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1061
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "quit"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1065
    .end local v0           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :goto_39
    return-void

    .line 1055
    :cond_3a
    const v1, 0x7f07014e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 1063
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_39
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    if-ne p1, v0, :cond_7

    .line 1004
    packed-switch p2, :pswitch_data_e

    .line 1010
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 1006
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 1007
    const/4 v0, 0x1

    goto :goto_8

    .line 1004
    :pswitch_data_e
    .packed-switch 0x6
        :pswitch_9
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 843
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onItemClick(I)V

    .line 844
    return-void
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
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_4a

    .line 938
    :goto_8
    :pswitch_8
    return-void

    .line 911
    :pswitch_9
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->isEdited()Z

    move-result v3

    if-nez v3, :cond_2b

    if-eqz p2, :cond_2b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 912
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 914
    .local v1, audienceBytes:[B
    if-eqz v1, :cond_2b

    .line 916
    :try_start_1f
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 917
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 918
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/AudienceView;->setDefaultAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    :try_end_2b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1f .. :try_end_2b} :catch_45

    .line 924
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v1           #audienceBytes:[B
    :cond_2b
    :goto_2b
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLoadingAudience:Z

    .line 925
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0d0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 926
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    const v4, 0x7f07019a

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/AudienceView;->setEmptyAudienceHint(I)V

    goto :goto_8

    .line 919
    .restart local v1       #audienceBytes:[B
    :catch_45
    move-exception v2

    .line 920
    .local v2, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_2b

    .line 909
    :pswitch_data_4a
    .packed-switch 0x7f0d0021
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
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
    .line 946
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 749
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 752
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V

    .line 753
    return-void
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 5
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 868
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_AUTOCOMPLETE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 869
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 870
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/AudienceView;->clearText()V

    .line 871
    return-void
.end method

.method public onResume()V
    .registers 11

    .prologue
    const v7, 0x7f0d0054

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 684
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 685
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 687
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_33

    .line 688
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 689
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v2

    .line 690
    .local v2, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 694
    .end local v2           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->isProviderEnabled()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 695
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 701
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v3, :cond_4d

    .line 702
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->addLocationListener()V

    .line 706
    :cond_4d
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-nez v3, :cond_55

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    if-eqz v3, :cond_71

    .line 707
    :cond_55
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 708
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    if-nez v3, :cond_f1

    move v3, v4

    :goto_60
    invoke-virtual {v6, v3}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 709
    iput-object v9, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 710
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mRemoveLocation:Z

    .line 712
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V

    .line 713
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 716
    :cond_71
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v3, :cond_f4

    .line 717
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/PostFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 719
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 720
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/views/AudienceView;->replaceAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 721
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 722
    iput-object v9, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 728
    :goto_91
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d0

    .line 729
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    if-le v3, v8, :cond_107

    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v6, 0x7f0700fc

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/fragments/PostFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 738
    :cond_c6
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 739
    iput-object v9, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    .line 740
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V

    .line 742
    :cond_d0
    return-void

    .line 696
    :cond_d1
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CompoundImageButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 698
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v6, 0x1d71d84

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto/16 :goto_3e

    :cond_f1
    move v3, v5

    .line 708
    goto/16 :goto_60

    .line 725
    :cond_f4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLoadingAudience:Z

    if-nez v3, :cond_105

    move v3, v4

    :goto_101
    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_91

    :cond_105
    move v3, v5

    goto :goto_101

    .line 733
    :cond_107
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mResultMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 734
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->addToMediaGallery(Lcom/google/android/apps/plus/api/MediaRef;)V

    goto :goto_10d
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 760
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 764
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v0, :cond_1a

    .line 767
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 770
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    if-eqz v0, :cond_25

    .line 771
    const-string v0, "prov_location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 775
    const-string v0, "l_attachments"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 778
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_3f

    .line 779
    const-string v0, "post_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    :cond_3f
    const-string v0, "op_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    return-void
.end method

.method public onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 851
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 662
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 663
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStart()V

    .line 666
    :cond_c
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 673
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    if-eqz v0, :cond_c

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceAdapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onStop()V

    .line 677
    :cond_c
    return-void
.end method

.method public post()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 1177
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1180
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 1182
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->isEmpty(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1183
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/AudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    .line 1184
    .local v9, editor:Landroid/widget/EditText;
    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 1185
    invoke-virtual {v9}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1186
    .local v10, message:Ljava/lang/CharSequence;
    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1203
    .end local v9           #editor:Landroid/widget/EditText;
    .end local v10           #message:Ljava/lang/CharSequence;
    :goto_2b
    return v1

    .line 1190
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, content:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v2

    if-nez v2, :cond_67

    :cond_4c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1193
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->requestFocus()Z

    .line 1194
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1195
    .restart local v10       #message:Ljava/lang/CharSequence;
    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2b

    .line 1199
    .end local v10           #message:Ljava/lang/CharSequence;
    :cond_67
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPostTextView:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getMentions()Ljava/util/ArrayList;

    move-result-object v4

    .line 1200
    .local v4, mentions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Mention;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mActivityId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAudienceDisplay:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mAttachmentRefs:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/service/EsService;->createActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1202
    invoke-direct {p0, v11}, Lcom/google/android/apps/plus/fragments/PostFragment;->showProgressDialog(I)V

    move v1, v11

    .line 1203
    goto :goto_2b
.end method

.method public setLocationChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment;->mLocationToggleButton:Lcom/google/android/apps/plus/views/CompoundImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->setChecked(Z)V

    .line 1447
    return-void
.end method

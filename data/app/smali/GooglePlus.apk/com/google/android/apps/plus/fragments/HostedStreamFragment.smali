.class public Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.super Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.source "HostedStreamFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;
.implements Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;
.implements Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;
.implements Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$3;,
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;,
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;,
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;,
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;,
        Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
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
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog$PhotoHandler;",
        "Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;",
        "Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;",
        "Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;"
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field private static NEXT_PAGE_PRELOAD_TRIGGER_ROWS:I


# instance fields
.field protected mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

.field protected mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

.field protected mCircleId:Ljava/lang/String;

.field protected mComposeBarCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

.field private mCurrentSpinnerPosition:I

.field protected mEndOfStream:Z

.field protected mError:Z

.field protected mFirstLoad:Z

.field private mFragmentStartTime:J

.field protected mGaiaId:Ljava/lang/String;

.field protected mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

.field protected mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

.field private mLastDeactivationTime:J

.field protected mLoaderHash:Ljava/lang/Integer;

.field protected mLocation:Landroid/location/Location;

.field protected mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

.field protected mLocationDisabledView:Landroid/view/View;

.field protected mLocationSettingsButton:Landroid/widget/Button;

.field protected mNearby:Z

.field protected mOperationType:I

.field protected mPendingRequestId:Ljava/lang/Integer;

.field protected mPostsUri:Landroid/net/Uri;

.field protected mPreloadRequested:Z

.field private mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshDisabled:Z

.field protected mResetAnimationState:Z

.field private mScrollOffset:I

.field private mScrollPos:I

.field private mServerErrorRetryButton:Landroid/view/View;

.field private mServerErrorView:Landroid/view/View;

.field protected final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mStreamLength:I

.field protected mStreamOwnerUserId:Ljava/lang/String;

.field protected mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "circle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "circle_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->CIRCLES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;-><init>()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    .line 245
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateServerErrorView()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isPaused()Z

    move-result v0

    return v0
.end method

.method private addLocationListener(Landroid/location/Location;)V
    .registers 12
    .parameter "lastLocation"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-nez v0, :cond_1b

    .line 1122
    new-instance v0, Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    new-instance v7, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;

    const/4 v6, 0x0

    invoke-direct {v7, p0, v6}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$StreamLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;)V

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/LocationController;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZJLandroid/location/Location;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1126
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 1127
    .local v9, view:Landroid/view/View;
    const v0, 0x7f090254

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->isProviderEnabled()Z

    move-result v8

    .line 1132
    .local v8, isProviderEnabled:Z
    if-nez v8, :cond_3c

    .line 1133
    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showLocationDisabled(Landroid/view/View;)V

    .line 1134
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->removeLocationListener()V

    .line 1141
    :cond_3b
    :goto_3b
    return-void

    .line 1136
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->init()V

    .line 1137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_3b

    .line 1138
    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private static getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2
    .parameter "circleId"

    .prologue
    .line 1557
    const-string v0, "v.all.circles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1558
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_CIRCLES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 1567
    :goto_a
    return-object v0

    .line 1559
    :cond_b
    const-string v0, "v.whatshot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1560
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 1561
    :cond_16
    const-string v0, "v.nearby"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1562
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_NEARBY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 1563
    :cond_21
    const-string v0, "f."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "g."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1565
    :cond_31
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_USER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 1567
    :cond_34
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a
.end method

.method private loadCircleIdPreference()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "streams"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle"

    const-string v2, "v.all.circles"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populatePrimarySpinner(Landroid/database/Cursor;)V
    .registers 14
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 664
    if-nez p1, :cond_5

    .line 700
    :cond_4
    :goto_4
    return-void

    .line 668
    :cond_5
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    if-eqz v6, :cond_7b

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    .line 670
    .local v1, circleIdToLoad:Ljava/lang/String;
    :goto_b
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eq v6, v9, :cond_80

    move v2, v7

    .line 671
    .local v2, different:Z
    :goto_18
    if-nez v2, :cond_3a

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 672
    const/4 v3, 0x0

    .line 674
    .local v3, i:I
    :goto_21
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, circleId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getRealCircleId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 677
    const/4 v2, 0x1

    .line 683
    .end local v0           #circleId:Ljava/lang/String;
    .end local v4           #i:I
    :cond_3a
    if-eqz v2, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 684
    const/4 v5, 0x0

    .line 685
    .local v5, selectedPosition:I
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 688
    :cond_48
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .restart local v0       #circleId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v9, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 692
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 693
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 695
    :cond_68
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_48

    .line 697
    const/4 v6, -0x1

    iput v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    .line 698
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    goto :goto_4

    .line 668
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #circleIdToLoad:Ljava/lang/String;
    .end local v2           #different:Z
    .end local v5           #selectedPosition:I
    :cond_7b
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->loadCircleIdPreference()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .restart local v1       #circleIdToLoad:Ljava/lang/String;
    :cond_80
    move v2, v8

    .line 670
    goto :goto_18

    .line 680
    .restart local v0       #circleId:Ljava/lang/String;
    .restart local v2       #different:Z
    .restart local v4       #i:I
    :cond_82
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_21
.end method

.method private removeLocationListener()V
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    if-eqz v0, :cond_c

    .line 1149
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/LocationController;->release()V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationController:Lcom/google/android/apps/plus/phone/LocationController;

    .line 1152
    :cond_c
    return-void
.end method

.method private saveCircleIdPreference()V
    .registers 5

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "streams"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1503
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "circle"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getRealCircleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1505
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2c

    .line 1506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1510
    :goto_2b
    return-void

    .line 1508
    :cond_2c
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2b
.end method

.method private shouldMarkActivitiesAsRead()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1449
    sget-object v2, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$3;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$GetActivitiesParams$View:[I

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_24

    .line 1457
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 1468
    :cond_13
    :goto_13
    :pswitch_13
    return v0

    .line 1460
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 1461
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/SearchUtils;->isSearchKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    .line 1465
    goto :goto_13

    :cond_22
    move v0, v1

    .line 1468
    goto :goto_13

    .line 1449
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private showChoosePhotoDialog()V
    .registers 4

    .prologue
    .line 1513
    new-instance v0, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;

    const v1, 0x7f080329

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;-><init>(I)V

    .line 1515
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isCameraIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setIsCameraSupported(Z)V

    .line 1516
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "take_photo"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ChoosePhotoDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method private updateLocationHeader(Landroid/view/View;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 1160
    const v2, 0x7f090255

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1161
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-nez v2, :cond_14

    .line 1162
    const v2, 0x7f0801bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1171
    :goto_13
    return-void

    .line 1164
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/LocationController;->getFormattedAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 1166
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1168
    :cond_20
    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13
.end method

.method private updateServerErrorView()V
    .registers 3

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServerErrorView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    return-void

    .line 1651
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method protected createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;
    .registers 20
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
    .line 475
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/StreamAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V

    return-object v0
.end method

.method public doPickPhotoFromAlbums()V
    .registers 6

    .prologue
    .line 1645
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->COMPOSE_CHOOSE_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1646
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getCameraPhotosPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1647
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1648
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1241
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 1242
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    return-void
.end method

.method public doTakePhoto()V
    .registers 4

    .prologue
    .line 1633
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LOOP_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1634
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getWidgetCameraLauncherActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 1636
    .local v0, cameraLauncherActivityIntent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.plus.widget.CAMERA_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 1638
    return-void
.end method

.method protected fetchContent(Z)V
    .registers 10
    .parameter "newer"

    .prologue
    const/4 v6, 0x0

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_empty_stream"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1112
    :cond_d
    :goto_d
    return-void

    .line 1061
    :cond_e
    if-nez p1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mEndOfStream:Z

    if-nez v0, :cond_d

    .line 1066
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v0, :cond_55

    .line 1067
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_d

    .line 1072
    if-eqz p1, :cond_4c

    .line 1073
    const/4 v5, 0x0

    .line 1082
    .local v5, continuationToken:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800c4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/apps/plus/service/EsService;->getNearbyActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1105
    .local v7, reqId:Ljava/lang/Integer;
    :goto_44
    if-eqz p1, :cond_7d

    .line 1106
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 1111
    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    goto :goto_d

    .line 1075
    .end local v5           #continuationToken:Ljava/lang/String;
    .end local v7           #reqId:Ljava/lang/Integer;
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .restart local v5       #continuationToken:Ljava/lang/String;
    if-nez v5, :cond_1f

    goto :goto_d

    .line 1089
    .end local v5           #continuationToken:Ljava/lang/String;
    :cond_55
    if-eqz p1, :cond_74

    .line 1090
    const/4 v5, 0x0

    .line 1098
    .restart local v5       #continuationToken:Ljava/lang/String;
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .restart local v7       #reqId:Ljava/lang/Integer;
    goto :goto_44

    .line 1092
    .end local v5           #continuationToken:Ljava/lang/String;
    .end local v7           #reqId:Ljava/lang/Integer;
    :cond_74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getContinuationToken()Ljava/lang/String;

    move-result-object v5

    .line 1093
    .restart local v5       #continuationToken:Ljava/lang/String;
    if-nez v5, :cond_58

    goto :goto_d

    .line 1108
    .restart local v7       #reqId:Ljava/lang/Integer;
    :cond_7d
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_48
.end method

.method protected getComposeBarCursor()Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mComposeBarCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    if-nez v0, :cond_20

    .line 458
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mComposeBarCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mComposeBarCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 461
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mComposeBarCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    return-object v0
.end method

.method protected handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1194
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_d

    .line 1232
    :cond_c
    :goto_c
    return-void

    .line 1198
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 1200
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1202
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_21

    .line 1203
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1206
    :cond_21
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1208
    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOperationType:I

    packed-switch v2, :pswitch_data_4a

    .line 1225
    const v1, 0x7f0801ae

    .line 1230
    .local v1, resId:I
    :goto_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1210
    .end local v1           #resId:I
    :pswitch_3e
    const v1, 0x7f0801a1

    .line 1211
    .restart local v1       #resId:I
    goto :goto_31

    .line 1215
    .end local v1           #resId:I
    :pswitch_42
    const v1, 0x7f08019f

    .line 1216
    .restart local v1       #resId:I
    goto :goto_31

    .line 1220
    .end local v1           #resId:I
    :pswitch_46
    const v1, 0x7f0801a0

    .line 1221
    .restart local v1       #resId:I
    goto :goto_31

    .line 1208
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_46
    .end packed-switch
.end method

.method protected initCirclesLoader()V
    .registers 4

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 412
    return-void
.end method

.method protected isAdapterEmpty()Z
    .registers 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 1531
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isAdapterEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected isLocalDataAvailable(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "data"

    .prologue
    .line 791
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 1546
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1613
    packed-switch p1, :pswitch_data_22

    .line 1626
    :cond_3
    :goto_3
    return-void

    .line 1615
    :pswitch_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 1616
    const-string v2, "mediarefs"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1618
    .local v0, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 1620
    .local v1, postActivityIntent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1613
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected onAsyncData()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 1280
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onAsyncData()V

    .line 1282
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1284
    .local v0, activity:Landroid/app/Activity;
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFragmentStartTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1e

    instance-of v1, v0, Lcom/google/android/apps/plus/phone/ProfileActivity;

    if-eqz v1, :cond_1e

    .line 1285
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PROFILE_LOOP_TAB:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    iget-wide v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFragmentStartTime:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 1288
    iput-wide v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFragmentStartTime:J

    .line 1290
    :cond_1e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 19
    .parameter "v"

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationSettingsButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_12

    .line 906
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->getLocationSettingActivityIntent()Landroid/content/Intent;

    move-result-object v13

    .line 907
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 973
    .end local v13           #intent:Landroid/content/Intent;
    :cond_11
    :goto_11
    return-void

    .line 908
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServerErrorRetryButton:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_36

    .line 909
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    .line 910
    const-string v1, "HostedStreamFrag"

    const/4 v7, 0x4

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 911
    const-string v1, "HostedStreamFrag"

    const-string v7, "onClick - mError=false"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prefetchContent()V

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateServerErrorView()V

    goto :goto_11

    .line 915
    :cond_36
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/apps/plus/views/EventStreamCardView;

    if-eqz v1, :cond_60

    move-object/from16 v8, p1

    .line 916
    check-cast v8, Lcom/google/android/apps/plus/views/EventStreamCardView;

    .line 917
    .local v8, eventCardView:Lcom/google/android/apps/plus/views/EventStreamCardView;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/views/EventStreamCardView;->getEvent()Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v9

    .line 919
    .local v9, eventData:Lcom/google/api/services/plusi/model/PlusEvent;
    if-eqz v9, :cond_11

    .line 920
    iget-object v10, v9, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    .line 921
    .local v10, eventId:Ljava/lang/String;
    iget-object v14, v9, Lcom/google/api/services/plusi/model/PlusEvent;->creatorObfuscatedId:Ljava/lang/String;

    .line 922
    .local v14, ownerId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v7, v10, v14, v0}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 925
    .end local v8           #eventCardView:Lcom/google/android/apps/plus/views/EventStreamCardView;
    .end local v9           #eventData:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v10           #eventId:Ljava/lang/String;
    .end local v14           #ownerId:Ljava/lang/String;
    :cond_60
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/apps/plus/views/StreamCardView;

    if-eqz v1, :cond_9b

    .line 926
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    move-object/from16 v15, p1

    .line 928
    check-cast v15, Lcom/google/android/apps/plus/views/StreamCardView;

    .line 933
    .local v15, streamCardView:Lcom/google/android/apps/plus/views/StreamCardView;
    instance-of v1, v15, Lcom/google/android/apps/plus/views/ImageCardView;

    if-eqz v1, :cond_96

    move-object v12, v15

    .line 934
    check-cast v12, Lcom/google/android/apps/plus/views/ImageCardView;

    .line 935
    .local v12, imageCardView:Lcom/google/android/apps/plus/views/ImageCardView;
    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/ImageCardView;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v3

    .line 936
    .local v3, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/ImageCardView;->getDesiredWidth()I

    move-result v4

    .line 937
    .local v4, desiredWidth:I
    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/ImageCardView;->getDesiredHeight()I

    move-result v5

    .line 938
    .local v5, desiredHeight:I
    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/ImageCardView;->getMediaCount()I

    move-result v6

    .line 946
    .end local v12           #imageCardView:Lcom/google/android/apps/plus/views/ImageCardView;
    .local v6, mediaCount:I
    :goto_88
    invoke-virtual {v15}, Lcom/google/android/apps/plus/views/StreamCardView;->getActivityId()Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, activityId:Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 948
    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startStreamsOneUp(Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;IIIZ)V

    goto/16 :goto_11

    .line 940
    .end local v2           #activityId:Ljava/lang/String;
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #desiredWidth:I
    .end local v5           #desiredHeight:I
    .end local v6           #mediaCount:I
    :cond_96
    const/4 v3, 0x0

    .line 941
    .restart local v3       #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v4, 0x0

    .line 942
    .restart local v4       #desiredWidth:I
    const/4 v5, 0x0

    .line 943
    .restart local v5       #desiredHeight:I
    const/4 v6, 0x0

    .restart local v6       #mediaCount:I
    goto :goto_88

    .line 951
    .end local v3           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #desiredWidth:I
    .end local v5           #desiredHeight:I
    .end local v6           #mediaCount:I
    .end local v15           #streamCardView:Lcom/google/android/apps/plus/views/StreamCardView;
    :cond_9b
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_11

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    .line 953
    .local v11, id:I
    packed-switch v11, :pswitch_data_ea

    goto/16 :goto_11

    .line 955
    :pswitch_aa
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LOOP_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-object/from16 v0, v16

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 962
    :pswitch_cb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showChoosePhotoDialog()V

    goto/16 :goto_11

    .line 967
    :pswitch_d0
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LOOP_CHECKIN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/phone/Intents;->getCheckinActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 953
    :pswitch_data_ea
    .packed-switch 0x7f09007d
        :pswitch_aa
        :pswitch_cb
        :pswitch_d0
    .end packed-switch
.end method

.method public onCommentsClicked(Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;III)V
    .registers 13
    .parameter "activityId"
    .parameter "mediaRef"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "mediaCount"

    .prologue
    .line 1347
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startStreamsOneUp(Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;IIIZ)V

    .line 1348
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 418
    if-eqz p1, :cond_7a

    .line 419
    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    .line 420
    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    .line 422
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    .line 424
    const-string v0, "post_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 425
    const-string v0, "post_request_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 428
    :cond_34
    const-string v0, "op_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOperationType:I

    .line 430
    const-string v0, "loader_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 431
    const-string v0, "loader_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 433
    :cond_50
    const-string v0, "stream_length"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    .line 434
    const-string v0, "last_deactivation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLastDeactivationTime:J

    .line 435
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    .line 436
    const-string v0, "reset_animation"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mResetAnimationState:Z

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mRefreshDisabled:Z

    .line 447
    :goto_73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prepareLoaderUri()V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->initCirclesLoader()V

    .line 449
    return-void

    .line 441
    :cond_7a
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    .line 442
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFragmentStartTime:J

    goto :goto_73
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
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 761
    packed-switch p1, :pswitch_data_5a

    move-object v0, v5

    .line 785
    :goto_6
    return-object v0

    .line 763
    :pswitch_7
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->CIRCLES_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_6

    .line 768
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_empty_stream"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 769
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    .line 772
    :cond_24
    const-string v6, "sort_index ASC"

    .line 773
    .local v6, orderAndLimit:Ljava/lang/String;
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 777
    :cond_44
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPostsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    if-nez v4, :cond_58

    const-string v4, "has_muted=0"

    :goto_54
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_58
    move-object v4, v5

    goto :goto_54

    .line 761
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_16
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 482
    const v0, 0x7f0300d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 484
    .local v11, view:Landroid/view/View;
    sget v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->NEXT_PAGE_PRELOAD_TRIGGER_ROWS:I

    if-nez v0, :cond_1c

    .line 485
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v10

    .line 486
    .local v10, screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    iget v0, v10, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-nez v0, :cond_d2

    .line 487
    const/16 v0, 0x8

    sput v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->NEXT_PAGE_PRELOAD_TRIGGER_ROWS:I

    .line 493
    .end local v10           #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_1c
    :goto_1c
    const v0, 0x7f09013f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ColumnGridView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 495
    const v0, 0x7f090256

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 496
    .local v9, floatingComposeBarView:Landroid/view/View;
    const v0, 0x7f09007d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    const v0, 0x7f09007e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    const v0, 0x7f09007f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->shouldMarkActivitiesAsRead()Z

    move-result v7

    move-object v0, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->createStreamAdapter(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)Lcom/google/android/apps/plus/phone/StreamAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    .line 504
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getComposeBarCursor()Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeComposeBarCursor(Landroid/database/Cursor;)V

    .line 505
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;-><init>(Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    .line 506
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelector(I)V

    .line 509
    const v0, 0x7f08011c

    invoke-virtual {p0, v11, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 511
    const v0, 0x7f090257

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    .line 512
    const v0, 0x7f090259

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationSettingsButton:Landroid/widget/Button;

    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationSettingsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    const v0, 0x7f09025a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServerErrorView:Landroid/view/View;

    .line 516
    const v0, 0x7f09025b

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServerErrorRetryButton:Landroid/view/View;

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServerErrorRetryButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_empty_stream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 520
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyView(Landroid/view/View;)V

    .line 523
    :cond_ce
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateServerErrorView()V

    .line 524
    return-object v11

    .line 489
    .end local v9           #floatingComposeBarView:Landroid/view/View;
    .restart local v10       #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    :cond_d2
    const/16 v0, 0x10

    sput v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->NEXT_PAGE_PRELOAD_TRIGGER_ROWS:I

    goto/16 :goto_1c
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onDestroyView()V

    .line 573
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setOnScrollListener(Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;)V

    .line 575
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    .line 577
    :cond_f
    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 994
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 998
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 990
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 977
    const-string v0, "remove_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 978
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showProgressDialog(I)V

    .line 986
    :cond_22
    :goto_22
    return-void

    .line 981
    :cond_23
    const-string v0, "mute_dialog"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 982
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService;->muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 984
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showProgressDialog(I)V

    goto :goto_22
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16
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
    const v12, 0x7f090085

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 796
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_146

    .line 897
    :cond_d
    :goto_d
    return-void

    .line 798
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->populatePrimarySpinner(Landroid/database/Cursor;)V

    goto :goto_d

    .line 803
    :pswitch_12
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->getCount()I

    move-result v4

    .line 804
    .local v4, oldCount:I
    if-eqz v4, :cond_1d

    .line 805
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->saveScrollPosition()V

    .line 808
    :cond_1d
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7, p2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->changeStreamCursor(Landroid/database/Cursor;)V

    .line 809
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mResetAnimationState:Z

    if-eqz v7, :cond_2d

    .line 810
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/StreamAdapter;->resetAnimationState()V

    .line 811
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mResetAnimationState:Z

    .line 814
    :cond_2d
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v3

    .line 817
    .local v3, newCount:I
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mEndOfStream:Z

    .line 818
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPreloadRequested:Z

    .line 819
    const-string v7, "HostedStreamFrag"

    invoke-static {v7, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 820
    const-string v7, "HostedStreamFrag"

    const-string v10, "onLoadFinished - mPreloadRequested=false"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_46
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-eqz v7, :cond_91

    if-nez v3, :cond_91

    .line 823
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 824
    const/4 v0, 0x0

    .line 850
    .local v0, asyncDataReceived:Z
    :goto_58
    iput-boolean v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    .line 852
    if-eqz p2, :cond_62

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_ee

    .line 853
    :cond_62
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 854
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->restoreScrollPosition()V

    .line 886
    :goto_68
    const-string v7, "HostedStreamFrag"

    invoke-static {v7, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 887
    const-string v7, "HostedStreamFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoadFinished - mEndOfStream="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mEndOfStream:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_8a
    if-eqz v0, :cond_d

    .line 892
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onAsyncData()V

    goto/16 :goto_d

    .line 826
    .end local v0           #asyncDataReceived:Z
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 828
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isLocalDataAvailable(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 829
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showContent(Landroid/view/View;)V

    .line 830
    const/4 v0, 0x1

    .line 831
    .restart local v0       #asyncDataReceived:Z
    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    .line 832
    const/16 v7, 0x17

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v8, :cond_be

    move v7, v8

    :goto_b8
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mEndOfStream:Z

    .line 834
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    goto :goto_58

    :cond_be
    move v7, v9

    .line 832
    goto :goto_b8

    .line 835
    .end local v0           #asyncDataReceived:Z
    :cond_c0
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    if-eqz v7, :cond_d9

    .line 836
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v10, "no_location_stream_key"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPostsUri:Landroid/net/Uri;

    invoke-virtual {v7, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d7

    .line 838
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->fetchContent(Z)V

    .line 840
    :cond_d7
    const/4 v0, 0x0

    .restart local v0       #asyncDataReceived:Z
    goto :goto_58

    .line 842
    .end local v0           #asyncDataReceived:Z
    :cond_d9
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v7, :cond_e1

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-eqz v7, :cond_eb

    .line 843
    :cond_e1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyView(Landroid/view/View;)V

    .line 844
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 846
    :cond_eb
    const/4 v0, 0x1

    .restart local v0       #asyncDataReceived:Z
    goto/16 :goto_58

    .line 859
    :cond_ee
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 861
    .local v1, i:I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 863
    :cond_fa
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v8, :cond_10b

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_fa

    .line 868
    :cond_10b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 869
    .local v2, loaderHash:I
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    if-eqz v7, :cond_13e

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v2, :cond_13e

    move v5, v8

    .line 870
    .local v5, snapToTopOfStream:Z
    :goto_120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    .line 873
    if-nez v5, :cond_135

    if-ge v3, v4, :cond_135

    .line 874
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/ColumnGridView;->getLastVisiblePosition()I

    move-result v7

    add-int/lit8 v8, v3, -0x1

    if-lt v7, v8, :cond_135

    .line 875
    const/4 v5, 0x1

    .line 879
    :cond_135
    if-eqz v5, :cond_140

    .line 880
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionToTop()V

    goto/16 :goto_68

    .end local v5           #snapToTopOfStream:Z
    :cond_13e
    move v5, v9

    .line 869
    goto :goto_120

    .line 882
    .restart local v5       #snapToTopOfStream:Z
    :cond_140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->restoreScrollPosition()V

    goto/16 :goto_68

    .line 796
    nop

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 901
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 561
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onPause()V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->onPause()V

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->onPause()V

    .line 565
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 567
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->removeLocationListener()V

    .line 568
    return-void
.end method

.method public onPlusOneAnimFinished()V
    .registers 8

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isPaused()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_d

    .line 1394
    :cond_c
    :goto_c
    return-void

    .line 1372
    :cond_d
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v5, :cond_c

    .line 1376
    const/4 v1, 0x0

    .line 1377
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v3

    .local v3, size:I
    :goto_1d
    if-ge v2, v3, :cond_43

    .line 1378
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1379
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/google/android/apps/plus/views/StreamCardView;

    if-eqz v5, :cond_49

    move-object v4, v0

    .line 1380
    check-cast v4, Lcom/google/android/apps/plus/views/StreamCardView;

    .line 1381
    .local v4, streamCardView:Lcom/google/android/apps/plus/views/StreamCardView;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/StreamCardView;->getActivityId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    iget-object v6, v6, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->activityId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1383
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    iget v6, v6, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->overrideCount:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/views/StreamCardView;->overridePlusOnedButtonDisplay(ZI)V

    .line 1385
    const/4 v1, 0x1

    .line 1391
    .end local v0           #child:Landroid/view/View;
    .end local v4           #streamCardView:Lcom/google/android/apps/plus/views/StreamCardView;
    :cond_43
    if-nez v1, :cond_c

    .line 1392
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->onShakeAnimFinished()V

    goto :goto_c

    .line 1377
    .restart local v0       #child:Landroid/view/View;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method

.method public onPlusOneClicked(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Lcom/google/android/apps/plus/views/StreamCardView;)V
    .registers 14
    .parameter "activityId"
    .parameter "plusOneData"
    .parameter "objectType"
    .parameter "streamCardView"

    .prologue
    const/4 v7, 0x0

    .line 1295
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    if-nez v5, :cond_19

    .line 1296
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_13

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1299
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->togglePlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V

    .line 1300
    invoke-virtual {p4, v7, v7}, Lcom/google/android/apps/plus/views/StreamCardView;->overridePlusOnedButtonDisplay(ZI)V

    .line 1327
    :cond_19
    :goto_19
    return-void

    .line 1302
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 1303
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_5c

    const/4 v0, 0x1

    .line 1305
    .local v0, overrideCount:I
    :goto_21
    new-instance v5, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    invoke-direct {v5, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;-><init>(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;I)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    .line 1307
    const v5, 0x7f09025c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;

    .line 1309
    .local v1, plusOneAnimatorView:Lcom/google/android/apps/plus/views/PlusOneAnimatorView;
    invoke-virtual {p4}, Lcom/google/android/apps/plus/views/StreamCardView;->getPlusOneButtonAnimationCopies()Landroid/util/Pair;

    move-result-object v2

    .line 1311
    .local v2, plusOneButtons:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/views/ClickableButton;Lcom/google/android/apps/plus/views/ClickableButton;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/plus/views/ClickableButton;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1, p0, v5, v6}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->startPlusOneAnim(Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;Lcom/google/android/apps/plus/views/ClickableButton;Lcom/google/android/apps/plus/views/ClickableButton;)V

    .line 1314
    invoke-virtual {p4}, Lcom/google/android/apps/plus/views/StreamCardView;->startDelayedShakeAnimation()V

    .line 1316
    const v5, 0x7f09025d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1317
    .local v3, plusOneGlassView:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$2;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    const-wide/16 v7, 0x393

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 1303
    .end local v0           #overrideCount:I
    .end local v1           #plusOneAnimatorView:Lcom/google/android/apps/plus/views/PlusOneAnimatorView;
    .end local v2           #plusOneButtons:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/views/ClickableButton;Lcom/google/android/apps/plus/views/ClickableButton;>;"
    .end local v3           #plusOneGlassView:Landroid/view/View;
    :cond_5c
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    goto :goto_21
.end method

.method protected onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
    .registers 5
    .parameter "actionBar"

    .prologue
    .line 647
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300d6

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 649
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 652
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 653
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/views/HostActionBar;->showPrimarySpinner(Landroid/widget/SpinnerAdapter;I)V

    .line 655
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showRefreshButton()V

    .line 656
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/HostActionBar;->showProgressIndicator()V

    .line 657
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 13
    .parameter "position"

    .prologue
    const v10, 0x7f090254

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 704
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    if-eq v5, p1, :cond_a2

    .line 705
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;

    .line 708
    .local v1, newInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v5, :cond_3a

    .line 710
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    if-ltz v5, :cond_a3

    .line 711
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPrimarySpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    invoke-virtual {v5, v9}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;

    .line 713
    .local v2, oldInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getRealCircleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v3

    .line 717
    .end local v2           #oldInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
    .local v3, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :goto_2c
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getRealCircleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v0

    .line 720
    .local v0, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->clearNavigationAction()V

    .line 721
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->recordNavigationAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 724
    .end local v0           #endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local v3           #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :cond_3a
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCurrentSpinnerPosition:I

    .line 725
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getCircleId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    .line 726
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;->getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 727
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    sget-object v9, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    if-ne v5, v9, :cond_a5

    move v5, v6

    :goto_4f
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    .line 731
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mFirstLoad:Z

    .line 733
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 734
    .local v4, view:Landroid/view/View;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v5, :cond_a7

    .line 735
    invoke-direct {p0, v8}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->addLocationListener(Landroid/location/Location;)V

    .line 736
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 737
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 738
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-nez v5, :cond_76

    .line 739
    const v5, 0x7f0801bb

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 747
    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prepareLoaderUri()V

    .line 748
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "circle_id"

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "view"

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    if-nez v5, :cond_b6

    move-object v5, v8

    :goto_8f
    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v8, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 752
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->saveCircleIdPreference()V

    .line 753
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mResetAnimationState:Z

    .line 755
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->refresh()V

    .line 757
    .end local v1           #newInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_a2
    return-void

    .line 715
    .restart local v1       #newInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$CircleSpinnerInfo;
    :cond_a3
    const/4 v3, 0x0

    .restart local v3       #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    goto :goto_2c

    .end local v3           #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :cond_a5
    move v5, v7

    .line 727
    goto :goto_4f

    .line 742
    .restart local v4       #view:Landroid/view/View;
    :cond_a7
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->removeLocationListener()V

    .line 743
    iput-object v8, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    .line 744
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76

    .line 749
    :cond_b6
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8f
.end method

.method public onReshareClicked(Ljava/lang/String;Z)V
    .registers 8
    .parameter "activityId"
    .parameter "isLimited"

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, p1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1333
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2f

    .line 1334
    const v2, 0x7f0801f5

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0801f6

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801f7

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/apps/plus/fragments/ConfirmIntentDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 1338
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "confirm_reshare"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1342
    .end local v0           #dialog:Landroid/support/v4/app/DialogFragment;
    :goto_2e
    return-void

    .line 1340
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onResume()V

    .line 531
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 533
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v4, :cond_2d

    .line 534
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v2

    .local v2, size:I
    :goto_14
    if-ge v0, v2, :cond_28

    .line 535
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 536
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/apps/plus/views/CardView;

    if-eqz v4, :cond_25

    .line 537
    check-cast v3, Lcom/google/android/apps/plus/views/CardView;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CardView;->onStart()V

    .line 534
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 540
    :cond_28
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ColumnGridView;->onResume()V

    .line 543
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_2d
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v4, :cond_34

    .line 544
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->addLocationListener(Landroid/location/Location;)V

    .line 547
    :cond_34
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v4, :cond_59

    .line 548
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v4

    if-nez v4, :cond_59

    .line 549
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v1

    .line 550
    .local v1, result:Lcom/google/android/apps/plus/service/ServiceResult;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 552
    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 556
    .end local v1           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 557
    return-void
.end method

.method protected onResumeContentFetched(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 1237
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-eqz v0, :cond_22

    .line 598
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->saveScrollPosition()V

    .line 599
    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v0, "scroll_off"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2d

    .line 604
    const-string v0, "location"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 607
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 608
    const-string v0, "post_request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    :cond_3c
    const-string v0, "op_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOperationType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    if-eqz v0, :cond_52

    .line 614
    const-string v0, "loader_hash"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLoaderHash:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    :cond_52
    const-string v0, "stream_length"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v0, "last_deactivation"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLastDeactivationTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 619
    const-string v0, "error"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 620
    const-string v0, "reset_animation"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mResetAnimationState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    return-void
.end method

.method protected onSetArguments(Landroid/os/Bundle;)V
    .registers 5
    .parameter "args"

    .prologue
    .line 625
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onSetArguments(Landroid/os/Bundle;)V

    .line 627
    const-string v1, "gaia_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    .line 628
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 629
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamOwnerUserId:Ljava/lang/String;

    .line 634
    :goto_17
    const-string v1, "circle_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    .line 636
    const-string v1, "view"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, view:Ljava/lang/String;
    if-nez v0, :cond_3a

    .line 638
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 642
    :goto_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    if-ne v1, v2, :cond_41

    const/4 v1, 0x1

    :goto_32
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    .line 643
    return-void

    .line 631
    .end local v0           #view:Ljava/lang/String;
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamOwnerUserId:Ljava/lang/String;

    goto :goto_17

    .line 640
    .restart local v0       #view:Ljava/lang/String;
    :cond_3a
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_2b

    .line 642
    :cond_41
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public onShakeAnimFinished()V
    .registers 6

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->isPaused()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_d

    .line 1416
    :cond_c
    :goto_c
    return-void

    .line 1401
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1402
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_21

    .line 1403
    const v2, 0x7f09025d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1404
    .local v0, plusOneGlassView:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 1405
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    .end local v0           #plusOneGlassView:Landroid/view/View;
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    if-eqz v2, :cond_c

    .line 1413
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->activityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;->objectType:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->togglePlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V

    .line 1415
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAnimatingPlusOneInfo:Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PlusOneInfo;

    goto :goto_c
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 581
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->onStop()V

    .line 583
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildCount()I

    move-result v1

    .local v1, size:I
    :goto_a
    if-ge v0, v1, :cond_1e

    .line 584
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 585
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/google/android/apps/plus/views/CardView;

    if-eqz v3, :cond_1b

    .line 586
    check-cast v2, Lcom/google/android/apps/plus/views/CardView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/CardView;->onStop()V

    .line 583
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 590
    :cond_1e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ColumnGridView;->invalidateViews()V

    .line 591
    return-void
.end method

.method public onViewUsed(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPreloadRequested:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mEndOfStream:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-nez v0, :cond_11

    .line 1024
    :cond_10
    :goto_10
    return-void

    .line 1021
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mInnerAdapter:Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCount()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->NEXT_PAGE_PRELOAD_TRIGGER_ROWS:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_10

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->prefetchContent()V

    goto :goto_10
.end method

.method protected prefetchContent()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 1030
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPreloadRequested:Z

    .line 1031
    const-string v1, "HostedStreamFrag"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1032
    const-string v1, "HostedStreamFrag"

    const-string v2, "prefetchContent - mPreloadRequested=true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    new-instance v2, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 1046
    .local v0, result:Z
    if-nez v0, :cond_2f

    const-string v1, "HostedStreamFrag"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1047
    const-string v1, "HostedStreamFrag"

    const-string v2, "prefetchContent - posting the runnable returned false!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_2f
    return-void
.end method

.method protected prepareLoaderUri()V
    .registers 6

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_13

    .line 1006
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "no_location_stream_key"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPostsUri:Landroid/net/Uri;

    .line 1013
    :goto_12
    return-void

    .line 1009
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mCircleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/LocationUtils;->convertLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mView:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPostsUri:Landroid/net/Uri;

    goto :goto_12
.end method

.method public recordNavigationAction()V
    .registers 1

    .prologue
    .line 1539
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 1476
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mRefreshDisabled:Z

    if-eqz v1, :cond_8

    .line 1477
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mRefreshDisabled:Z

    .line 1492
    :goto_7
    return-void

    .line 1481
    :cond_8
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->refresh()V

    .line 1483
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v1, :cond_1b

    .line 1485
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    .line 1486
    .local v0, lastLocation:Landroid/location/Location;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocation:Landroid/location/Location;

    .line 1487
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->addLocationListener(Landroid/location/Location;)V

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    goto :goto_7

    .line 1490
    .end local v0           #lastLocation:Landroid/location/Location;
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->fetchContent(Z)V

    goto :goto_7
.end method

.method protected restoreScrollPosition()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1598
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-nez v0, :cond_6

    .line 1609
    :cond_5
    :goto_5
    return-void

    .line 1602
    :cond_6
    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    if-eqz v0, :cond_5

    .line 1603
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    iget v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->setSelectionFromTop(II)V

    .line 1606
    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    .line 1607
    iput v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    goto :goto_5
.end method

.method protected saveScrollPosition()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1572
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    if-nez v1, :cond_6

    .line 1591
    :goto_5
    return-void

    .line 1580
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollPos:I

    .line 1581
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAdapter:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;

    if-eqz v1, :cond_24

    .line 1582
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1583
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 1584
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    goto :goto_5

    .line 1586
    :cond_21
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    goto :goto_5

    .line 1589
    .end local v0           #v:Landroid/view/View;
    :cond_24
    iput v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mScrollOffset:I

    goto :goto_5
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1269
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showContent(Landroid/view/View;)V

    .line 1270
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v0, :cond_15

    .line 1271
    const v0, 0x7f090254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1274
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    return-void
.end method

.method protected showEmptyView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1259
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyView(Landroid/view/View;)V

    .line 1260
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNearby:Z

    if-eqz v0, :cond_15

    .line 1261
    const v0, 0x7f090254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateLocationHeader(Landroid/view/View;)V

    .line 1264
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1247
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 1248
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    return-void
.end method

.method protected showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "progressText"

    .prologue
    .line 1253
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->showEmptyViewProgress(Landroid/view/View;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    return-void
.end method

.method protected showLocationDisabled(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 1436
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->removeProgressViewMessages()V

    .line 1437
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    const v0, 0x7f090079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    const v0, 0x7f090254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGridView:Lcom/google/android/apps/plus/views/ColumnGridView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ColumnGridView;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mLocationDisabledView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    return-void
.end method

.method protected showProgressDialog(I)V
    .registers 6
    .parameter "operationType"

    .prologue
    .line 1179
    iput p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOperationType:I

    .line 1181
    const/4 v1, 0x0

    const v2, 0x7f0801af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 1184
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method public startStreamsOneUp(Ljava/lang/String;Lcom/google/android/apps/plus/api/MediaRef;IIIZ)V
    .registers 10
    .parameter "activityId"
    .parameter "mediaRef"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "mediaCount"
    .parameter "showKeyboard"

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1353
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v2, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamOneUpActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1354
    .local v1, intent:Landroid/content/Intent;
    if-lez p3, :cond_1c

    if-lez p4, :cond_1c

    .line 1355
    const-string v2, "photo_width"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1356
    const-string v2, "photo_height"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    :cond_1c
    if-eqz p2, :cond_28

    .line 1359
    const-string v2, "photo_ref"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1360
    const-string v2, "photo_count"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    :cond_28
    const-string v2, "show_keyboard"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1363
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    .line 1364
    return-void
.end method

.method protected togglePlusOne(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)V
    .registers 10
    .parameter "activityId"
    .parameter "plusOneData"
    .parameter "objectType"

    .prologue
    const/4 v5, 0x1

    .line 1420
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->isPostPlusOnePending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1421
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1422
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1423
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1, v5}, Lcom/google/android/apps/plus/service/EsService;->deletePostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    .line 1428
    .end local v0           #activity:Landroid/app/Activity;
    :cond_18
    :goto_18
    return-void

    .line 1425
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->createPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)I

    goto :goto_18
.end method

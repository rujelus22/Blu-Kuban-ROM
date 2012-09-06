.class public abstract Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PeopleSearchAdapter.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/Filterable;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/common/widget/CompositeCursorAdapter;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;"
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

.field private static final GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;

.field public static final PEOPLE_PROJECTION:[Ljava/lang/String;

.field public static final SUGGESTED_PEOPLE_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActiveLoaderCount:I

.field private mActivityId:Ljava/lang/String;

.field protected mAddToCirclesActionEnabled:Z

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field protected final mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCircleUsageType:I

.field private mCirclesError:Z

.field private mCirclesLoaded:Z

.field private final mCirclesLoaderId:I

.field private mContactsCursor:Landroid/database/Cursor;

.field private mContactsError:Z

.field private mContactsLoaded:Z

.field private final mContactsLoaderId:I

.field private mFilter:Landroid/widget/Filter;

.field private volatile mFilterLatch:Ljava/util/concurrent/CountDownLatch;

.field private mFilterNullGaiaIds:Z

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGaiaIdCircleCursor:Landroid/database/Cursor;

.field private final mGaiaIdLoaderId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIncludePeopleInCircles:Z

.field protected mIncludePhoneNumberContacts:Z

.field private mIncludePlusPages:Z

.field private mIsMentionsAdapter:Z

.field protected mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

.field private final mLoaderManager:Landroid/support/v4/app/LoaderManager;

.field private mLocalProfileError:Z

.field private mLocalProfilesCursor:Landroid/database/Cursor;

.field private mLocalProfilesLoaded:Z

.field private final mPeopleLoaderId:I

.field private final mProfilesLoaderId:I

.field private mPublicProfileSearchEnabled:Z

.field private mPublicProfilesCursor:Landroid/database/Cursor;

.field private mPublicProfilesError:Z

.field private mPublicProfilesLoading:Z

.field private mPublicProfilesNotFound:Z

.field protected mQuery:Ljava/lang/String;

.field private mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

.field private mResultsPreserved:Z

.field private mShowPersonNameDialog:Z

.field private mShowProgressWhenEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "circle_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "circle_name"

    aput-object v1, v0, v6

    const-string v1, "contact_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CIRCLES_PROJECTION:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "person_id"

    aput-object v1, v0, v4

    const-string v1, "gaia_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "profile_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 93
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "person_id"

    aput-object v1, v0, v4

    const-string v1, "gaia_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->SUGGESTED_PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "person_id"

    aput-object v1, v0, v4

    const-string v1, "gaia_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;

    .line 120
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "lookup_key"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "email"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 125
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "lookup_key"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "email"

    aput-object v1, v0, v6

    const-string v1, "phone"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "phone_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

    .line 137
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "gaia_id"

    aput-object v1, v0, v3

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"

    .prologue
    .line 337
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 15
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"
    .parameter "instanceId"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 352
    invoke-direct {p0, p1, v8}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 179
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    .line 196
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowProgressWhenEmpty:Z

    .line 199
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowPersonNameDialog:Z

    .line 206
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePeopleInCircles:Z

    .line 214
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-direct {v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 223
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$2;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    if-ge v0, v8, :cond_2d

    .line 354
    invoke-virtual {p0, v7, v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->addPartition(ZZ)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 357
    :cond_2d
    mul-int/lit8 v5, p5, 0xa

    add-int/lit16 v1, v5, 0x400

    .line 358
    .local v1, loaderId:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .local v2, loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    .line 359
    add-int/lit8 v1, v2, 0x1

    .end local v2           #loaderId:I
    .restart local v1       #loaderId:I
    iput v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdLoaderId:I

    .line 360
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .restart local v2       #loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    .line 361
    add-int/lit8 v1, v2, 0x1

    .end local v2           #loaderId:I
    .restart local v1       #loaderId:I
    iput v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    .line 362
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .restart local v2       #loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    .line 364
    const-string v5, "people_search_results"

    invoke-virtual {p2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;

    .line 366
    .local v4, savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;
    if-nez v4, :cond_8f

    .line 367
    new-instance v4, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;

    .end local v4           #savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;
    invoke-direct {v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;-><init>()V

    .line 368
    .restart local v4       #savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "people_search_results"

    invoke-virtual {v5, v4, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 378
    :cond_61
    :goto_61
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;->setPeopleSearchResults(Lcom/google/android/apps/plus/fragments/PeopleSearchResults;)V

    .line 380
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 381
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    .line 382
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 383
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setMyProfile(Ljava/lang/String;)V

    .line 384
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePeopleInCircles:Z

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setIncludePeopleInCircles(Z)V

    .line 385
    new-instance v5, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v5, p1, p3, v6, p5}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 386
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 387
    return-void

    .line 371
    :cond_8f
    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;->getPeopleSearchResults()Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    move-result-object v3

    .line 372
    .local v3, results:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
    if-eqz v3, :cond_61

    .line 373
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 374
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResultsPreserved:Z

    goto :goto_61
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showProgressItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->doContinueLoadingPublicProfiles()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->releaseLatch()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIsMentionsAdapter:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addContacts(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 783
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_e

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsCursor:Landroid/database/Cursor;

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartContacts()V

    .line 789
    if-eqz p1, :cond_4e

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 791
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v0, :cond_57

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, phoneNumber:Ljava/lang/String;
    :goto_26
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v0, :cond_59

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, phoneType:Ljava/lang/String;
    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 805
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #phoneType:Ljava/lang/String;
    :cond_4e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishContacts()V

    .line 807
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursorForPeoplePartition()V

    .line 808
    return-void

    :cond_57
    move-object v5, v7

    .line 791
    goto :goto_26

    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_59
    move-object v6, v7

    .line 793
    goto :goto_2f
.end method

.method private addGaiaIdsAndCircles(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_d

    .line 738
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    .line 742
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartGaiaIdsAndCircles()V

    .line 744
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 746
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addGaiaIdAndCircles(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 752
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishGaiaIdsAndCircles()V

    .line 754
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursorForPeoplePartition()V

    .line 755
    return-void
.end method

.method private addProfiles(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 758
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_e

    .line 759
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartLocalProfiles()V

    .line 764
    if-eqz p1, :cond_42

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 766
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addLocalProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 777
    :cond_42
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishLocalProfiles()V

    .line 779
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursorForPeoplePartition()V

    .line 780
    return-void
.end method

.method private addPublicProfiles(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 811
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    if-eq v2, p1, :cond_f

    .line 812
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_f
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    .line 816
    if-eqz p1, :cond_19

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_23

    :cond_19
    move v2, v4

    :goto_1a
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesError:Z

    .line 818
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesError:Z

    if-eqz v2, :cond_25

    .line 819
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    .line 847
    :cond_22
    :goto_22
    return-void

    :cond_23
    move v2, v3

    .line 816
    goto :goto_1a

    .line 823
    :cond_25
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, previousToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 830
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    .line 832
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, nextToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setToken(Ljava/lang/String;)V

    .line 834
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    move v2, v4

    :goto_49
    invoke-virtual {v5, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setHasMoreResults(Z)V

    .line 836
    :goto_4c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 837
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addPublicProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_6b
    move v2, v3

    .line 834
    goto :goto_49

    .line 844
    :cond_6d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getPublicProfileCount()I

    move-result v2

    if-nez v2, :cond_7b

    :goto_75
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesNotFound:Z

    .line 846
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursorForPeoplePartition()V

    goto :goto_22

    :cond_7b
    move v4, v3

    .line 844
    goto :goto_75
.end method

.method private buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 8
    .parameter "cursor"

    .prologue
    .line 1195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 1196
    .local v2, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, gaiaId:Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 1198
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1201
    :cond_e
    const/4 v0, 0x0

    .line 1202
    .local v0, email:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v4, :cond_36

    .line 1203
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_36
    if-nez v0, :cond_3d

    .line 1213
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1216
    :cond_3d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1217
    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1225
    :cond_46
    :goto_46
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1226
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v4

    return-object v4

    .line 1219
    :cond_53
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 1221
    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_46
.end method

.method private changeCursorForPeoplePartition()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 854
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 856
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 857
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 862
    :goto_19
    return-void

    .line 860
    :cond_1a
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_19
.end method

.method private createFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1241
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    return-object v0
.end method

.method private doContinueLoadingPublicProfiles()V
    .registers 5

    .prologue
    .line 589
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;

    .line 591
    .local v0, loader:Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    .line 594
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 595
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updatePublicProfileSearchStatus()V

    .line 597
    :cond_30
    return-void
.end method

.method private getWellFormedEmailAddress()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 915
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v0, v2

    .line 927
    :cond_a
    :goto_a
    return-object v0

    .line 919
    :cond_b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 920
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_2f

    array-length v3, v1

    if-lez v3, :cond_2f

    .line 921
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_a

    .end local v0           #address:Ljava/lang/String;
    :cond_2f
    move-object v0, v2

    .line 927
    goto :goto_a
.end method

.method private getWellFormedSmsAddress()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 935
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 951
    :cond_9
    :goto_9
    return-object v4

    .line 938
    :cond_a
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 941
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 942
    .local v3, len:I
    const/4 v1, 0x1

    .line 943
    .local v1, firstChar:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v3, :cond_32

    .line 944
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 945
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2e

    if-eqz v1, :cond_9

    .line 949
    :cond_2e
    const/4 v1, 0x0

    .line 943
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 951
    .end local v0           #c:C
    :cond_32
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    goto :goto_9
.end method

.method private releaseLatch()V
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;

    .line 877
    .local v0, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_7

    .line 878
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 880
    :cond_7
    return-void
.end method

.method private showProgressItem()V
    .registers 2

    .prologue
    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    .line 656
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updatePublicProfileSearchStatus()V

    .line 657
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v0, :cond_f

    .line 658
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 660
    :cond_f
    return-void
.end method

.method private updatePublicProfileSearchStatus()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 965
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfileSearchEnabled:Z

    if-nez v1, :cond_8

    .line 989
    :goto_7
    return-void

    .line 969
    :cond_8
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 970
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesLoaded:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaded:Z

    if-eqz v1, :cond_3f

    .line 974
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesError:Z

    if-eqz v1, :cond_4d

    .line 975
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 984
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_48

    .line 985
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showEmptyPeopleSearchResults()V

    .line 988
    :cond_48
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_7

    .line 976
    :cond_4d
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesNotFound:Z

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIsMentionsAdapter:Z

    if-nez v1, :cond_61

    .line 977
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f

    .line 978
    :cond_61
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIsMentionsAdapter:Z

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowProgressWhenEmpty:Z

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCount()I

    move-result v1

    if-lez v1, :cond_3f

    .line 980
    :cond_75
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f
.end method

.method private updateWellFormedEmailPartition(Landroid/database/Cursor;)V
    .registers 9
    .parameter "peopleData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 886
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "address"

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 887
    .local v1, wellFormedEmailCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_31

    .line 888
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 890
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 893
    .end local v0           #address:Ljava/lang/String;
    :cond_31
    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 894
    return-void
.end method

.method private updateWellFormedSmsPartition(Landroid/database/Cursor;)V
    .registers 9
    .parameter "peopleData"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 900
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "address"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 901
    .local v1, wellFormedSmsCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_31

    .line 902
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 904
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 907
    .end local v0           #address:Ljava/lang/String;
    :cond_31
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 908
    return-void
.end method


# virtual methods
.method protected continueLoadingPublicProfiles()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->hasMoreResults()Z

    move-result v0

    if-nez v0, :cond_9

    .line 586
    :goto_8
    return-void

    .line 579
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$3;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_a

    .line 1235
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->createFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilter:Landroid/widget/Filter;

    .line 1237
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method protected getItemViewType(II)I
    .registers 3
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 567
    return p1
.end method

.method public getItemViewTypeCount()I
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x6

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfileError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsError:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isLoaded()Z
    .registers 3

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesLoaded:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaded:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaded:Z

    if-eqz v0, :cond_1b

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public isSearchingForFirstResult()Z
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCount()I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 603
    if-eqz p1, :cond_2b

    .line 604
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 605
    const-string v0, "search_list_adapter.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    .line 606
    const-string v0, "search_list_adapter.results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResultsPreserved:Z

    if-nez v0, :cond_2b

    .line 607
    const-string v0, "search_list_adapter.results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 610
    :cond_2b
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
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
    .line 667
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    if-ne p1, v0, :cond_18

    .line 668
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CIRCLES_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 693
    :goto_17
    return-object v0

    .line 670
    :cond_18
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdLoaderId:I

    if-ne p1, v0, :cond_30

    .line 671
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;ZLjava/lang/String;ZZ)V

    goto :goto_17

    .line 673
    :cond_30
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    if-ne p1, v0, :cond_4e

    .line 674
    new-instance v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v3, :cond_4b

    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

    :goto_42
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_17

    :cond_4b
    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    goto :goto_42

    .line 678
    :cond_4e
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    if-ne p1, v0, :cond_6c

    .line 679
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePlusPages:Z

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePeopleInCircles:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActivityId:Ljava/lang/String;

    const/16 v9, 0xa

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/fragments/PeopleSearchListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;I)V

    goto :goto_17

    .line 682
    :cond_6c
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    if-ne p1, v0, :cond_a6

    .line 683
    new-instance v0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "gaia_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "person_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "snippet"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePlusPages:Z

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)V

    goto/16 :goto_17

    .line 693
    :cond_a6
    const/4 v0, 0x0

    goto/16 :goto_17
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1175
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1182
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1168
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11
    .parameter "args"
    .parameter "tag"

    .prologue
    const/4 v7, 0x0

    .line 1132
    const-string v5, "add_email_dialog"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1133
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, email:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 1138
    .local v2, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1139
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1140
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_4a

    .line 1141
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 1161
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v3           #personId:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 1143
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .restart local v3       #personId:Ljava/lang/String;
    :cond_4a
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v7, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49

    .line 1146
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v3           #personId:Ljava/lang/String;
    :cond_54
    const-string v5, "add_sms_dialog"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1147
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .restart local v1       #name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v4

    .line 1149
    .local v4, sms:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1151
    .restart local v3       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 1152
    .restart local v2       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1153
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1154
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_9d

    .line 1155
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49

    .line 1157
    :cond_9d
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v7, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49
.end method

.method public onItemClick(I)V
    .registers 19
    .parameter "position"

    .prologue
    .line 996
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 997
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_9

    .line 1099
    :cond_8
    :goto_8
    return-void

    .line 1001
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getPartitionForPosition(I)I

    move-result v9

    .line 1002
    .local v9, partition:I
    packed-switch v9, :pswitch_data_170

    goto :goto_8

    .line 1004
    :pswitch_11
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1005
    .local v11, personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v10

    .line 1006
    .local v10, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, gaiaId:Ljava/lang/String;
    if-eqz v7, :cond_24

    .line 1008
    invoke-virtual {v10, v7}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1010
    :cond_24
    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1011
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    const/4 v15, 0x0

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_8

    .line 1016
    .end local v7           #gaiaId:Ljava/lang/String;
    .end local v10           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v11           #personId:Ljava/lang/String;
    :pswitch_3b
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1017
    .local v13, type:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1018
    .local v4, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v2

    .line 1019
    .local v2, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, circleId:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1021
    invoke-static {v13}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1022
    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1023
    const/4 v14, 0x4

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v14, v13}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v14

    if-eqz v14, :cond_b8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v14}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenMinorPublicExtendedDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v14

    if-nez v14, :cond_b8

    .line 1027
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1028
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1029
    const v14, 0x7f0803c1

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1031
    const v14, 0x7f080209

    new-instance v15, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3, v2, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Landroid/content/Context;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    const v14, 0x7f08020a

    new-instance v15, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$5;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1048
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1053
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_ab
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v15

    invoke-interface {v14, v3, v15}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    goto/16 :goto_8

    .line 1050
    :cond_b8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v15

    invoke-interface {v14, v3, v15}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    goto :goto_ab

    .line 1057
    .end local v2           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v3           #circleId:Ljava/lang/String;
    .end local v4           #context:Landroid/content/Context;
    .end local v13           #type:I
    :pswitch_c4
    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1058
    .restart local v11       #personId:Ljava/lang/String;
    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1059
    .local v8, lookupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v15

    invoke-interface {v14, v11, v8, v15}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto/16 :goto_8

    .line 1063
    .end local v8           #lookupKey:Ljava/lang/String;
    .end local v11           #personId:Ljava/lang/String;
    :pswitch_dd
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAddToCirclesActionEnabled:Z

    if-nez v14, :cond_8

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowPersonNameDialog:Z

    if-eqz v14, :cond_f2

    .line 1067
    const-string v14, "add_email_dialog"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1070
    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v6

    .line 1071
    .local v6, email:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1072
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1073
    .restart local v11       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v10

    .line 1074
    .restart local v10       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v10, v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    const/4 v15, 0x0

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto/16 :goto_8

    .line 1081
    .end local v6           #email:Ljava/lang/String;
    .end local v10           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v11           #personId:Ljava/lang/String;
    :pswitch_126
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAddToCirclesActionEnabled:Z

    if-nez v14, :cond_8

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowPersonNameDialog:Z

    if-eqz v14, :cond_13b

    .line 1085
    const-string v14, "add_sms_dialog"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1088
    :cond_13b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v12

    .line 1089
    .local v12, sms:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1090
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "p:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1091
    .restart local v11       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v10

    .line 1092
    .restart local v10       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v10, v11}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    const/4 v15, 0x0

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto/16 :goto_8

    .line 1002
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_11
        :pswitch_3b
        :pswitch_dd
        :pswitch_126
        :pswitch_c4
    .end packed-switch
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 701
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 702
    .local v0, id:I
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    if-ne v0, v3, :cond_2e

    .line 703
    if-nez p2, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesError:Z

    .line 704
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaded:Z

    .line 705
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 726
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updatePublicProfileSearchStatus()V

    .line 727
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v1, :cond_20

    .line 728
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 730
    :cond_20
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    .line 731
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    if-gtz v1, :cond_2d

    .line 732
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->releaseLatch()V

    .line 734
    :cond_2d
    return-void

    .line 706
    :cond_2e
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdLoaderId:I

    if-ne v0, v3, :cond_36

    .line 707
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->addGaiaIdsAndCircles(Landroid/database/Cursor;)V

    goto :goto_14

    .line 708
    :cond_36
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    if-ne v0, v3, :cond_4f

    .line 709
    if-nez p2, :cond_3d

    move v1, v2

    :cond_3d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsError:Z

    .line 710
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaded:Z

    .line 711
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->addContacts(Landroid/database/Cursor;)V

    .line 712
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updateWellFormedEmailPartition(Landroid/database/Cursor;)V

    .line 713
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v1, :cond_14

    .line 714
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updateWellFormedSmsPartition(Landroid/database/Cursor;)V

    goto :goto_14

    .line 716
    :cond_4f
    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    if-ne v0, v3, :cond_5e

    .line 717
    if-nez p2, :cond_56

    move v1, v2

    :cond_56
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfileError:Z

    .line 718
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLocalProfilesLoaded:Z

    .line 719
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->addProfiles(Landroid/database/Cursor;)V

    goto :goto_14

    .line 720
    :cond_5e
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    if-ne v0, v1, :cond_14

    .line 721
    sget-object v1, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->ABORTED:Landroid/database/MatrixCursor;

    if-eq p2, v1, :cond_14

    .line 722
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->addPublicProfiles(Landroid/database/Cursor;)V

    goto :goto_14
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 959
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 616
    const-string v0, "search_list_adapter.query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->isParcelable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 618
    const-string v0, "search_list_adapter.results"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 620
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 623
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 624
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mGaiaIdLoaderId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "query"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 628
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 630
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 631
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    if-nez v2, :cond_37

    .line 632
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 634
    :cond_37
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfileSearchEnabled:Z

    if-eqz v2, :cond_42

    .line 635
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 637
    :cond_42
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updatePublicProfileSearchStatus()V

    .line 639
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "add_person_dialog_listener"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;

    .line 641
    .local v1, listener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;
    if-eqz v1, :cond_54

    .line 642
    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;->setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 644
    :cond_54
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    return-void
.end method

.method public setAddToCirclesActionEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAddToCirclesActionEnabled:Z

    .line 409
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 393
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    .line 394
    return-void
.end method

.method public setFilterNullGaiaIds(Z)V
    .registers 2
    .parameter "filterNullGaiaIds"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    .line 401
    return-void
.end method

.method public setIncludePeopleInCircles(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePeopleInCircles:Z

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePeopleInCircles:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setIncludePeopleInCircles(Z)V

    .line 448
    return-void
.end method

.method public setIncludePhoneNumberContacts(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePhoneNumberContacts:Z

    .line 433
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIncludePlusPages:Z

    .line 440
    return-void
.end method

.method public setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    .line 472
    return-void
.end method

.method public setMention(Ljava/lang/String;)V
    .registers 3
    .parameter "activityId"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActivityId:Ljava/lang/String;

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mIsMentionsAdapter:Z

    .line 465
    return-void
.end method

.method public setPublicProfileSearchEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfileSearchEnabled:Z

    .line 425
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 7
    .parameter "queryString"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 476
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->releaseLatch()V

    .line 529
    :cond_d
    :goto_d
    return-void

    .line 480
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setQueryString(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    .line 485
    iput v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    .line 486
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 487
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 488
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 489
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 490
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->clearPartitions()V

    .line 492
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->releaseLatch()V

    .line 493
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    if-eqz v1, :cond_d

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    goto :goto_d

    .line 497
    :cond_53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCircleUsageType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_71

    .line 500
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    .line 501
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mCirclesLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 504
    :cond_71
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    .line 505
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPeopleLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 507
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterNullGaiaIds:Z

    if-nez v1, :cond_8f

    .line 508
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mActiveLoaderCount:I

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mContactsLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 512
    :cond_8f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfileSearchEnabled:Z

    if-eqz v1, :cond_d

    .line 513
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesError:Z

    .line 514
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesNotFound:Z

    .line 515
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mPublicProfilesLoading:Z

    .line 517
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 523
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 524
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 526
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->updatePublicProfileSearchStatus()V

    goto/16 :goto_d
.end method

.method public setShowPersonNameDialog(Z)V
    .registers 2
    .parameter "showPersonNameDialog"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowPersonNameDialog:Z

    .line 417
    return-void
.end method

.method public setShowProgressWhenEmpty(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mShowProgressWhenEmpty:Z

    .line 457
    return-void
.end method

.method protected showEmptyPeopleSearchResults()V
    .registers 4

    .prologue
    .line 868
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 870
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_16

    .line 871
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 873
    :cond_16
    return-void
.end method

.method protected showPersonNameDialog(Ljava/lang/String;)V
    .registers 12
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 1105
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "add_person_dialog_listener"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;

    .line 1107
    .local v9, listener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;
    if-nez v9, :cond_21

    .line 1108
    new-instance v9, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;

    .end local v9           #listener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;
    invoke-direct {v9}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;-><init>()V

    .line 1109
    .restart local v9       #listener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "add_person_dialog_listener"

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1112
    :cond_21
    invoke-virtual {v9, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$AddEmailDialogListener;->setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1115
    .local v7, context:Landroid/content/Context;
    const v0, 0x7f0802f1

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0802f2

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/apps/plus/fragments/EditFragmentDialog;

    move-result-object v8

    .line 1123
    .local v8, dialog:Lcom/google/android/apps/plus/fragments/EditFragmentDialog;
    invoke-virtual {v8, v9, v6}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v8, v0, p1}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

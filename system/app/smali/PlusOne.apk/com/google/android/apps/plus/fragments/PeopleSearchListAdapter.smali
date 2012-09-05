.class public Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PeopleSearchListAdapter.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/Filterable;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;,
        Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/common/widget/CompositeCursorAdapter;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

.field private static final GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActiveLoaderCount:I

.field private mActivityId:Ljava/lang/String;

.field private mAddToCirclesActionEnabled:Z

.field private final mCircleContentObserver:Landroid/database/DataSetObserver;

.field private final mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mCircleUsageType:I

.field private mCirclesError:Z

.field private mCirclesLoaded:Z

.field private final mCirclesLoaderId:I

.field private mContactsCursor:Landroid/database/Cursor;

.field private mContactsError:Z

.field private mContactsLoaded:Z

.field private final mContactsLoaderId:I

.field private volatile mFilterLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGaiaIdCircleCursor:Landroid/database/Cursor;

.field private final mGaiaIdLoaderId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIncludePeopleInCircles:Z

.field private mIncludePhoneNumberContacts:Z

.field private mIncludePlusPages:Z

.field private mIsMentionsAdapter:Z

.field private mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

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

.field private mQuery:Ljava/lang/String;

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

    .line 74
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

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CIRCLES_PROJECTION:[Ljava/lang/String;

    .line 87
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

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v3

    const-string v1, "lookup_key"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "email"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 105
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

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "gaia_id"

    aput-object v1, v0, v3

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "loaderManager"
    .parameter "account"

    .prologue
    .line 294
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 295
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
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 309
    invoke-direct {p0, p1, v8}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 159
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    .line 176
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowProgressWhenEmpty:Z

    .line 179
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowPersonNameDialog:Z

    .line 186
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePeopleInCircles:Z

    .line 194
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-direct {v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 201
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    .line 244
    new-instance v5, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$2;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleContentObserver:Landroid/database/DataSetObserver;

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    if-ge v0, v8, :cond_2d

    .line 311
    invoke-virtual {p0, v7, v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->addPartition(ZZ)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 314
    :cond_2d
    mul-int/lit8 v5, p5, 0xa

    add-int/lit16 v1, v5, 0x400

    .line 315
    .local v1, loaderId:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .local v2, loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    .line 316
    add-int/lit8 v1, v2, 0x1

    .end local v2           #loaderId:I
    .restart local v1       #loaderId:I
    iput v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdLoaderId:I

    .line 317
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .restart local v2       #loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    .line 318
    add-int/lit8 v1, v2, 0x1

    .end local v2           #loaderId:I
    .restart local v1       #loaderId:I
    iput v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    .line 319
    add-int/lit8 v2, v1, 0x1

    .end local v1           #loaderId:I
    .restart local v2       #loaderId:I
    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    .line 321
    const-string v5, "people_search_results"

    invoke-virtual {p2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;

    .line 323
    .local v4, savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;
    if-nez v4, :cond_88

    .line 324
    new-instance v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;

    .end local v4           #savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;
    invoke-direct {v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;-><init>()V

    .line 325
    .restart local v4       #savedInstance:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "people_search_results"

    invoke-virtual {v5, v4, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 334
    :cond_61
    :goto_61
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;->setPeopleSearchResults(Lcom/google/android/apps/plus/fragments/PeopleSearchResults;)V

    .line 336
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 337
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    .line 338
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 339
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setMyProfile(Ljava/lang/String;)V

    .line 340
    new-instance v5, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v5, p1, p3, v6, p5}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 341
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleContentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 342
    return-void

    .line 327
    :cond_88
    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;->getPeopleSearchResults()Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    move-result-object v3

    .line 328
    .local v3, results:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
    if-eqz v3, :cond_61

    .line 329
    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 330
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResultsPreserved:Z

    goto :goto_61
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showProgressItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->releaseLatch()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIsMentionsAdapter:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addContacts(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_e

    .line 864
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 866
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsCursor:Landroid/database/Cursor;

    .line 868
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartContacts()V

    .line 869
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 871
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, phoneNumber:Ljava/lang/String;
    :goto_24
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v0, :cond_57

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, phoneType:Ljava/lang/String;
    :goto_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

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

    .line 882
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 885
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #phoneType:Ljava/lang/String;
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishContacts()V

    .line 887
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursorForPeoplePartition()V

    .line 888
    return-void

    :cond_55
    move-object v5, v7

    .line 871
    goto :goto_24

    .restart local v5       #phoneNumber:Ljava/lang/String;
    :cond_57
    move-object v6, v7

    .line 873
    goto :goto_2d
.end method

.method private addGaiaIdsAndCircles(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_d

    .line 818
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 820
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdCircleCursor:Landroid/database/Cursor;

    .line 822
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartGaiaIdsAndCircles()V

    .line 824
    if-eqz p1, :cond_35

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 826
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addGaiaIdAndCircles(Ljava/lang/Long;Ljava/lang/String;)V

    .line 829
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 832
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishGaiaIdsAndCircles()V

    .line 834
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursorForPeoplePartition()V

    .line 835
    return-void
.end method

.method private addProfiles(Landroid/database/Cursor;)V
    .registers 10
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 838
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_e

    .line 839
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_e
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesCursor:Landroid/database/Cursor;

    .line 843
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onStartLocalProfiles()V

    .line 844
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 846
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addLocalProfile(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 857
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->onFinishLocalProfiles()V

    .line 859
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursorForPeoplePartition()V

    .line 860
    return-void
.end method

.method private addPublicProfiles(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 891
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    if-eq v2, p1, :cond_f

    .line 892
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_f
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesCursor:Landroid/database/Cursor;

    .line 896
    if-eqz p1, :cond_19

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_23

    :cond_19
    move v2, v4

    :goto_1a
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesError:Z

    .line 898
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesError:Z

    if-eqz v2, :cond_25

    .line 899
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    .line 927
    :cond_22
    :goto_22
    return-void

    :cond_23
    move v2, v3

    .line 896
    goto :goto_1a

    .line 903
    :cond_25
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 906
    .local v1, previousToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 910
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    .line 912
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, nextToken:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setToken(Ljava/lang/String;)V

    .line 914
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v2, v4

    :goto_49
    invoke-virtual {v5, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setHasMoreResults(Z)V

    .line 916
    :goto_4c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 917
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->addPublicProfile(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_6f
    move v2, v3

    .line 914
    goto :goto_49

    .line 924
    :cond_71
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getPublicProfileCount()I

    move-result v2

    if-nez v2, :cond_7f

    :goto_79
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesNotFound:Z

    .line 926
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursorForPeoplePartition()V

    goto :goto_22

    :cond_7f
    move v4, v3

    .line 924
    goto :goto_79
.end method

.method private buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 9
    .parameter "cursor"

    .prologue
    .line 1253
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v3

    .line 1254
    .local v3, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1255
    .local v1, gaiaId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_12

    .line 1256
    invoke-virtual {v3, v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1259
    :cond_12
    const/4 v0, 0x0

    .line 1260
    .local v0, email:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v5, :cond_3a

    .line 1261
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1262
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    .end local v4           #phoneNumber:Ljava/lang/String;
    :cond_3a
    if-nez v0, :cond_41

    .line 1271
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 1275
    invoke-virtual {v3, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1283
    :cond_4a
    :goto_4a
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1284
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    return-object v5

    .line 1277
    :cond_57
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 1279
    invoke-virtual {v3, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_4a
.end method

.method private changeCursorForPeoplePartition()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 934
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 936
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 937
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 942
    :goto_19
    return-void

    .line 940
    :cond_1a
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_19
.end method

.method private continueLoadingPublicProfiles()V
    .registers 5

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->hasMoreResults()Z

    move-result v1

    if-nez v1, :cond_9

    .line 677
    :cond_8
    :goto_8
    return-void

    .line 669
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;

    .line 671
    .local v0, loader:Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    .line 674
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 675
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updatePublicProfileSearchStatus()V

    goto :goto_8
.end method

.method private getWellFormedEmailAddress()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 995
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v0, v2

    .line 1007
    :cond_a
    :goto_a
    return-object v0

    .line 999
    :cond_b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1000
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_2f

    array-length v3, v1

    if-lez v3, :cond_2f

    .line 1001
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1002
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

    .line 1007
    goto :goto_a
.end method

.method private getWellFormedSmsAddress()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1015
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1031
    :cond_9
    :goto_9
    return-object v4

    .line 1018
    :cond_a
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1021
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 1022
    .local v3, len:I
    const/4 v1, 0x1

    .line 1023
    .local v1, firstChar:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v3, :cond_32

    .line 1024
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1025
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2e

    if-eqz v1, :cond_9

    .line 1029
    :cond_2e
    const/4 v1, 0x0

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1031
    .end local v0           #c:C
    :cond_32
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    goto :goto_9
.end method

.method private releaseLatch()V
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;

    .line 957
    .local v0, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_7

    .line 958
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 960
    :cond_7
    return-void
.end method

.method private showPersonNameDialog(Ljava/lang/String;)V
    .registers 12
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 1170
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "add_person_dialog_listener"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;

    .line 1172
    .local v9, listener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;
    if-nez v9, :cond_21

    .line 1173
    new-instance v9, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;

    .end local v9           #listener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;
    invoke-direct {v9}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;-><init>()V

    .line 1174
    .restart local v9       #listener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "add_person_dialog_listener"

    invoke-virtual {v0, v9, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1177
    :cond_21
    invoke-virtual {v9, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;->setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1180
    .local v7, context:Landroid/content/Context;
    const v0, 0x7f07023e

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f07023f

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

    .line 1188
    .local v8, dialog:Lcom/google/android/apps/plus/fragments/EditFragmentDialog;
    invoke-virtual {v8, v9, v6}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v8, v0, p1}, Lcom/google/android/apps/plus/fragments/EditFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method private showProgressItem()V
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    .line 734
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updatePublicProfileSearchStatus()V

    .line 735
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v0, :cond_f

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 738
    :cond_f
    return-void
.end method

.method private updatePublicProfileSearchStatus()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1045
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfileSearchEnabled:Z

    if-nez v1, :cond_8

    .line 1069
    :goto_7
    return-void

    .line 1049
    :cond_8
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1050
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesLoaded:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaded:Z

    if-eqz v1, :cond_3f

    .line 1054
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesError:Z

    if-eqz v1, :cond_4d

    .line 1055
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1064
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_48

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showEmptyPeopleSearchResults()V

    .line 1068
    :cond_48
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_7

    .line 1056
    :cond_4d
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesNotFound:Z

    if-eqz v1, :cond_61

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIsMentionsAdapter:Z

    if-nez v1, :cond_61

    .line 1057
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f

    .line 1058
    :cond_61
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIsMentionsAdapter:Z

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowProgressWhenEmpty:Z

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCount()I

    move-result v1

    if-lez v1, :cond_3f

    .line 1060
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
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 966
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "address"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 967
    .local v1, wellFormedEmailCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_31

    .line 968
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 970
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 973
    .end local v0           #address:Ljava/lang/String;
    :cond_31
    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 974
    return-void
.end method

.method private updateWellFormedSmsPartition(Landroid/database/Cursor;)V
    .registers 9
    .parameter "peopleData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 980
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "address"

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 981
    .local v1, wellFormedSmsCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_31

    .line 982
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 984
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 987
    .end local v0           #address:Ljava/lang/String;
    :cond_31
    invoke-virtual {p0, v5, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 988
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 24
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 544
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 658
    :cond_8
    :goto_8
    return-void

    .line 548
    :cond_9
    packed-switch p2, :pswitch_data_1aa

    goto :goto_8

    :pswitch_d
    move-object/from16 v2, p1

    .line 550
    check-cast v2, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 551
    .local v2, item:Lcom/google/android/apps/plus/views/CircleListItemView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->setHighlightedText(Ljava/lang/String;)V

    .line 552
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v17, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v5, v7, v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_8

    .end local v2           #item:Lcom/google/android/apps/plus/views/CircleListItemView;
    :pswitch_42
    move-object/from16 v2, p1

    .line 560
    check-cast v2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 561
    .local v2, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setHighlightedText(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 563
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, personId:Ljava/lang/String;
    invoke-virtual {v2, v15}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 565
    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 566
    .local v13, lookupKey:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1, v13}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactId(JLjava/lang/String;)V

    .line 568
    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 569
    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 570
    .local v8, snippet:Ljava/lang/String;
    const/4 v5, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, circleIds:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ff

    const/4 v11, 0x1

    .line 573
    .local v11, inCircles:Z
    :goto_91
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, email:Ljava/lang/String;
    const/4 v6, 0x0

    .line 575
    .local v6, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v5, :cond_a7

    .line 576
    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 578
    :cond_a7
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIdsEmailAddressPhoneNumberAndSnippet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_101

    if-nez v11, :cond_101

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_101

    const/4 v5, 0x1

    :goto_d0
    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v5, :cond_e4

    .line 588
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 591
    :cond_e4
    const/4 v10, 0x1

    .line 592
    .local v10, firstRow:Z
    if-eqz v13, :cond_ea

    .line 595
    if-nez p4, :cond_103

    .line 596
    const/4 v10, 0x1

    .line 608
    :cond_ea
    :goto_ea
    invoke-virtual {v2, v10}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setFirstRow(Z)V

    .line 610
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_fa

    .line 611
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->continueLoadingPublicProfiles()V

    .line 614
    :cond_fa
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .line 572
    .end local v4           #email:Ljava/lang/String;
    .end local v6           #phoneNumber:Ljava/lang/String;
    .end local v10           #firstRow:Z
    .end local v11           #inCircles:Z
    :cond_ff
    const/4 v11, 0x0

    goto :goto_91

    .line 585
    .restart local v4       #email:Ljava/lang/String;
    .restart local v6       #phoneNumber:Ljava/lang/String;
    .restart local v11       #inCircles:Z
    :cond_101
    const/4 v5, 0x0

    goto :goto_d0

    .line 598
    .restart local v10       #firstRow:Z
    :cond_103
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 599
    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 601
    .local v16, prevLookupKey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 602
    const/4 v10, 0x0

    .line 604
    :cond_119
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_ea

    .end local v2           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    .end local v3           #circleIds:Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v6           #phoneNumber:Ljava/lang/String;
    .end local v8           #snippet:Ljava/lang/String;
    .end local v10           #firstRow:Z
    .end local v11           #inCircles:Z
    .end local v13           #lookupKey:Ljava/lang/String;
    .end local v15           #personId:Ljava/lang/String;
    .end local v16           #prevLookupKey:Ljava/lang/String;
    :pswitch_11d
    move-object/from16 v2, p1

    .line 618
    check-cast v2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 619
    .restart local v2       #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setWellFormedEmail(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 621
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_140

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v5, :cond_140

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 624
    :cond_140
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .end local v2           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    :pswitch_145
    move-object/from16 v2, p1

    .line 628
    check-cast v2, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 629
    .restart local v2       #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setWellFormedSms(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 631
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_168

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v5, :cond_168

    .line 632
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 634
    :cond_168
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    goto/16 :goto_8

    .line 638
    .end local v2           #item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    :pswitch_16d
    const/16 v12, 0x8

    .line 639
    .local v12, loadingVisibility:I
    const/16 v14, 0x8

    .line 640
    .local v14, notFoundVisibility:I
    const/16 v9, 0x8

    .line 641
    .local v9, errorVisibility:I
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1b8

    .line 652
    :goto_17d
    const v5, 0x7f0d00ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 653
    const v5, 0x7f0d010f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 654
    const v5, 0x7f0d00ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 643
    :pswitch_1a3
    const/4 v12, 0x0

    .line 644
    goto :goto_17d

    .line 646
    :pswitch_1a5
    const/4 v14, 0x0

    .line 647
    goto :goto_17d

    .line 649
    :pswitch_1a7
    const/4 v9, 0x0

    goto :goto_17d

    .line 548
    nop

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11d
        :pswitch_145
        :pswitch_42
        :pswitch_16d
    .end packed-switch

    .line 641
    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_1a5
        :pswitch_1a7
    .end packed-switch
.end method

.method public getCircleNameResolver()Lcom/google/android/apps/plus/fragments/CircleNameResolver;
    .registers 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1292
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    return-object v0
.end method

.method protected getItemViewType(II)I
    .registers 3
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 512
    return p1
.end method

.method public getItemViewTypeCount()I
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x5

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

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
    .line 493
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfileError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsError:Z

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
    .line 500
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesLoaded:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaded:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaded:Z

    if-eqz v0, :cond_1b

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

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
    .line 477
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCount()I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "container"

    .prologue
    .line 521
    packed-switch p2, :pswitch_data_1e

    .line 536
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 523
    :pswitch_5
    new-instance v1, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 528
    :pswitch_b
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v1

    goto :goto_4

    .line 531
    :pswitch_10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 532
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    .line 521
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public onAddPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1076
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWellFormedEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1077
    const-string v0, "add_email_dialog"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    .line 1083
    :goto_f
    return-void

    .line 1078
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getWellFormedSms()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1079
    const-string v0, "add_sms_dialog"

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto :goto_f

    .line 1081
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 683
    if-eqz p1, :cond_2b

    .line 684
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 685
    const-string v0, "search_list_adapter.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    .line 686
    const-string v0, "search_list_adapter.results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResultsPreserved:Z

    if-nez v0, :cond_2b

    .line 687
    const-string v0, "search_list_adapter.results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 690
    :cond_2b
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 16
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
    const/16 v6, 0xa

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 745
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    if-ne p1, v0, :cond_1b

    .line 746
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CIRCLES_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 773
    :goto_1a
    return-object v0

    .line 748
    :cond_1b
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdLoaderId:I

    if-ne p1, v0, :cond_2f

    .line 749
    new-instance v0, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->GAIA_ID_CIRCLE_PROJECTION:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePlusPages:Z

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_1a

    .line 751
    :cond_2f
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    if-ne p1, v0, :cond_4d

    .line 752
    new-instance v0, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v3, :cond_4a

    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CONTACT_PROJECTION_WITH_PHONE:[Ljava/lang/String;

    :goto_41
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/fragments/AndroidContactSearchLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1a

    :cond_4a
    sget-object v3, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    goto :goto_41

    .line 756
    :cond_4d
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    if-ne p1, v0, :cond_6f

    .line 757
    new-instance v1, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePlusPages:Z

    iget-boolean v10, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePeopleInCircles:Z

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActivityId:Ljava/lang/String;

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/plus/content/EsProvider;->buildPeopleQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->LOCAL_PROFILE_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1a

    .line 762
    :cond_6f
    iget v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    if-ne p1, v0, :cond_a5

    .line 763
    new-instance v0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "gaia_id"

    aput-object v5, v3, v4

    const-string v4, "person_id"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "snippet"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePlusPages:Z

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getToken()Ljava/lang/String;

    move-result-object v7

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    goto/16 :goto_1a

    :cond_a5
    move-object v0, v5

    .line 773
    goto/16 :goto_1a
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1240
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1233
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11
    .parameter "args"
    .parameter "tag"

    .prologue
    const/4 v7, 0x0

    .line 1197
    const-string v5, "add_email_dialog"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1198
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, email:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1202
    .local v3, personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 1203
    .local v2, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1204
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1205
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_4a

    .line 1206
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 1226
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v3           #personId:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 1208
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .restart local v3       #personId:Ljava/lang/String;
    :cond_4a
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v7, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49

    .line 1211
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v3           #personId:Ljava/lang/String;
    :cond_54
    const-string v5, "add_sms_dialog"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1212
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    .restart local v1       #name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v4

    .line 1214
    .local v4, sms:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    .restart local v3       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 1217
    .restart local v2       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1218
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1219
    iget-boolean v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-eqz v5, :cond_9d

    .line 1220
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onAddPersonToCirclesAction(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49

    .line 1222
    :cond_9d
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v6

    invoke-interface {v5, v3, v7, v6}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_49
.end method

.method public onItemClick(I)V
    .registers 14
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1105
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_c

    .line 1164
    :cond_b
    :goto_b
    return-void

    .line 1109
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 1110
    .local v5, partition:I
    packed-switch v5, :pswitch_data_d2

    goto :goto_b

    .line 1112
    :pswitch_14
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 1113
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, circleId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1115
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1116
    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1117
    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->setSize(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    .line 1118
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    goto :goto_b

    .line 1122
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    .end local v1           #circleId:Ljava/lang/String;
    :pswitch_44
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, personId:Ljava/lang/String;
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1124
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v10

    invoke-interface {v9, v7, v4, v10}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_b

    .line 1128
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v7           #personId:Ljava/lang/String;
    :pswitch_56
    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-nez v9, :cond_b

    .line 1130
    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowPersonNameDialog:Z

    if-eqz v9, :cond_64

    .line 1132
    const-string v9, "add_email_dialog"

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto :goto_b

    .line 1135
    :cond_64
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 1136
    .local v3, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1138
    .restart local v7       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v6

    .line 1139
    .local v6, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v6, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1140
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v10

    invoke-interface {v9, v7, v11, v10}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto/16 :goto_b

    .line 1146
    .end local v3           #email:Ljava/lang/String;
    .end local v6           #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    .end local v7           #personId:Ljava/lang/String;
    :pswitch_93
    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    if-nez v9, :cond_b

    .line 1148
    iget-boolean v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowPersonNameDialog:Z

    if-eqz v9, :cond_a2

    .line 1150
    const-string v9, "add_sms_dialog"

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->showPersonNameDialog(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1153
    :cond_a2
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getWellFormedSmsAddress()Ljava/lang/String;

    move-result-object v8

    .line 1154
    .local v8, sms:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1156
    .restart local v7       #personId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v6

    .line 1157
    .restart local v6       #person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 1158
    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v10

    invoke-interface {v9, v7, v11, v10}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto/16 :goto_b

    .line 1110
    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_56
        :pswitch_93
        :pswitch_44
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 781
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 782
    .local v0, id:I
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    if-ne v0, v1, :cond_30

    .line 783
    if-nez p2, :cond_2e

    move v1, v2

    :goto_d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesError:Z

    .line 784
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaded:Z

    .line 785
    invoke-virtual {p0, v3, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 806
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updatePublicProfileSearchStatus()V

    .line 807
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v1, :cond_20

    .line 808
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 810
    :cond_20
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    .line 811
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    if-gtz v1, :cond_2d

    .line 812
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->releaseLatch()V

    .line 814
    :cond_2d
    return-void

    :cond_2e
    move v1, v3

    .line 783
    goto :goto_d

    .line 786
    :cond_30
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdLoaderId:I

    if-ne v0, v1, :cond_38

    .line 787
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->addGaiaIdsAndCircles(Landroid/database/Cursor;)V

    goto :goto_14

    .line 788
    :cond_38
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    if-ne v0, v1, :cond_51

    .line 789
    if-nez p2, :cond_3f

    move v3, v2

    :cond_3f
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsError:Z

    .line 790
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaded:Z

    .line 791
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->addContacts(Landroid/database/Cursor;)V

    .line 792
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updateWellFormedEmailPartition(Landroid/database/Cursor;)V

    .line 793
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    if-eqz v1, :cond_14

    .line 794
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updateWellFormedSmsPartition(Landroid/database/Cursor;)V

    goto :goto_14

    .line 796
    :cond_51
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    if-ne v0, v1, :cond_60

    .line 797
    if-nez p2, :cond_58

    move v3, v2

    :cond_58
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfileError:Z

    .line 798
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLocalProfilesLoaded:Z

    .line 799
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->addProfiles(Landroid/database/Cursor;)V

    goto :goto_14

    .line 800
    :cond_60
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    if-ne v0, v1, :cond_14

    .line 801
    sget-object v1, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->ABORTED:Landroid/database/MatrixCursor;

    if-eq p2, v1, :cond_14

    .line 802
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->addPublicProfiles(Landroid/database/Cursor;)V

    goto :goto_14
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 1039
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onRemovePersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1090
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 696
    const-string v0, "search_list_adapter.query"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->isParcelable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 698
    const-string v0, "search_list_adapter.results"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 700
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 703
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 704
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mGaiaIdLoaderId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 705
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 706
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "query"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 708
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 710
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 711
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 712
    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfileSearchEnabled:Z

    if-eqz v2, :cond_3e

    .line 713
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 715
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updatePublicProfileSearchStatus()V

    .line 717
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "add_person_dialog_listener"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;

    .line 719
    .local v1, listener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;
    if-eqz v1, :cond_50

    .line 720
    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$AddEmailDialogListener;->setAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 722
    :cond_50
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    return-void
.end method

.method public onUnblockPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1097
    return-void
.end method

.method public setAddToCirclesActionEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mAddToCirclesActionEnabled:Z

    .line 357
    return-void
.end method

.method public setCircleUsageType(I)V
    .registers 2
    .parameter "circleUsageType"

    .prologue
    .line 348
    iput p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    .line 349
    return-void
.end method

.method public setIncludePeopleInCircles(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePeopleInCircles:Z

    .line 395
    return-void
.end method

.method public setIncludePhoneNumberContacts(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePhoneNumberContacts:Z

    .line 381
    return-void
.end method

.method public setIncludePlusPages(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIncludePlusPages:Z

    .line 388
    return-void
.end method

.method public setListener(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    .line 419
    return-void
.end method

.method public setMention(Ljava/lang/String;)V
    .registers 3
    .parameter "activityId"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActivityId:Ljava/lang/String;

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIsMentionsAdapter:Z

    .line 412
    return-void
.end method

.method public setPublicProfileSearchEnabled(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfileSearchEnabled:Z

    .line 373
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 7
    .parameter "queryString"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 423
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->releaseLatch()V

    .line 474
    :cond_d
    :goto_d
    return-void

    .line 427
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->setQueryString(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    .line 432
    iput v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    .line 433
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 435
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 436
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 437
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->clearPartitions()V

    .line 439
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->releaseLatch()V

    .line 440
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    if-eqz v1, :cond_d

    .line 441
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;

    invoke-interface {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchListAdapterListener;->onSearchListAdapterStateChange(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    goto :goto_d

    .line 444
    :cond_53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCircleUsageType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_71

    .line 447
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    .line 448
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mCirclesLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 451
    :cond_71
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    .line 452
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPeopleLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 454
    iget v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mActiveLoaderCount:I

    .line 455
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mContactsLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 457
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfileSearchEnabled:Z

    if-eqz v1, :cond_d

    .line 458
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesError:Z

    .line 459
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesNotFound:Z

    .line 460
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mPublicProfilesLoading:Z

    .line 462
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 468
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mProfilesLoaderId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 471
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->updatePublicProfileSearchStatus()V

    goto/16 :goto_d
.end method

.method public setShowPersonNameDialog(Z)V
    .registers 2
    .parameter "showPersonNameDialog"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowPersonNameDialog:Z

    .line 365
    return-void
.end method

.method public setShowProgressWhenEmpty(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mShowProgressWhenEmpty:Z

    .line 404
    return-void
.end method

.method protected showEmptyPeopleSearchResults()V
    .registers 4

    .prologue
    .line 948
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 950
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_16

    .line 951
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 953
    :cond_16
    return-void
.end method

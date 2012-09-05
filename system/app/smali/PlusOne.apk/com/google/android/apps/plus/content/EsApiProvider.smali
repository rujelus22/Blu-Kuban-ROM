.class public Lcom/google/android/apps/plus/content/EsApiProvider;
.super Landroid/content/ContentProvider;
.source "EsApiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    }
.end annotation


# static fields
.field private static sMatcher:Landroid/content/UriMatcher;

.field private static final sPlusoneCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/api/services/pos/model/Plusones;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreviewCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x14

    .line 88
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 89
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "plusone"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "account"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "preview"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v4}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    .line 112
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v4}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/util/LruCache;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/content/EsApiProvider;ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/content/EsApiProvider;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    move-result-object v0

    return-object v0
.end method

.method private buildPlusOneCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;
    .registers 12
    .parameter "urls"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults",
            "<",
            "Lcom/google/api/services/pos/model/Plusones;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 607
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.circles.platform.result.extra.ERROR_CODE"

    iget-object v8, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    iget-object v8, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ServiceResult;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_ad

    .line 614
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v7

    .line 617
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    :try_start_38
    array-length v6, p1

    if-ge v1, v6, :cond_84

    .line 619
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mResults:Ljava/util/Map;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/pos/model/Plusones;

    .line 620
    .local v3, plusones:Lcom/google/api/services/pos/model/Plusones;
    if-nez v3, :cond_59

    .line 622
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #plusones:Lcom/google/api/services/pos/model/Plusones;
    check-cast v3, Lcom/google/api/services/pos/model/Plusones;

    .line 625
    .restart local v3       #plusones:Lcom/google/api/services/pos/model/Plusones;
    :cond_59
    if-nez v3, :cond_6c

    .line 626
    new-instance v6, Lcom/google/api/services/pos/model/Plusones;

    invoke-direct {v6}, Lcom/google/api/services/pos/model/Plusones;-><init>()V

    aget-object v8, p1, v1

    invoke-virtual {v6, v8}, Lcom/google/api/services/pos/model/Plusones;->setId(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 617
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 628
    :cond_6c
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/pos/model/Plusones;

    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 629
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 632
    .end local v3           #plusones:Lcom/google/api/services/pos/model/Plusones;
    :catchall_81
    move-exception v6

    monitor-exit v7
    :try_end_83
    .catchall {:try_start_38 .. :try_end_83} :catchall_81

    throw v6

    :cond_84
    :try_start_84
    monitor-exit v7
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_81

    .line 635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_ae

    const/4 v5, 0x1

    .line 637
    .local v5, privileged:Z
    :goto_96
    if-eqz v5, :cond_ad

    .line 638
    new-instance v4, Lcom/google/api/services/pos/model/List;

    invoke-direct {v4}, Lcom/google/api/services/pos/model/List;-><init>()V

    .line 640
    .local v4, plusonesList:Lcom/google/api/services/pos/model/List;
    invoke-virtual {v4, v2}, Lcom/google/api/services/pos/model/List;->setItems(Ljava/util/List;)Lcom/google/api/services/pos/model/List;

    .line 641
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.android.apps.content.EXTRA_PLUSONES"

    invoke-virtual {v4}, Lcom/google/api/services/pos/model/List;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    .end local v4           #plusonesList:Lcom/google/api/services/pos/model/List;
    .end local v5           #privileged:Z
    :cond_ad
    return-object v0

    .line 635
    .restart local v1       #i:I
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    :cond_ae
    const/4 v5, 0x0

    goto :goto_96
.end method

.method private buildPreviewCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;
    .registers 11
    .parameter "urls"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults",
            "<",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p2, updateResults:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 555
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "uri"

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 558
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.circles.platform.result.extra.ERROR_CODE"

    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/ServiceResult;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    array-length v3, p1

    new-array v0, v3, [Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 564
    .local v0, activities:[Lcom/google/android/apps/plus/network/ApiaryActivity;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    array-length v3, v0

    if-ge v2, v3, :cond_65

    array-length v3, p1

    if-ge v2, v3, :cond_65

    .line 565
    new-array v3, v7, [Ljava/lang/Object;

    aget-object v4, p1, v2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 566
    iget-object v3, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mResults:Ljava/util/Map;

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryActivity;

    aput-object v3, v0, v2

    .line 567
    aget-object v3, v0, v2

    if-nez v3, :cond_62

    .line 568
    sget-object v3, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryActivity;

    aput-object v3, v0, v2

    .line 564
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 571
    :cond_65
    array-length v3, v0

    if-lez v3, :cond_71

    .line 572
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 575
    :cond_71
    return-object v1
.end method

.method private expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 12
    .parameter "plusones"
    .parameter "cursor"

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v5

    .line 440
    .local v5, setByViewer:Ljava/lang/Boolean;
    if-eqz v5, :cond_46

    .line 441
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_43

    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    .line 447
    .local v6, state:Ljava/lang/Integer;
    :goto_e
    const-wide/16 v0, 0x0

    .line 448
    .local v0, count:J
    invoke-virtual {p1}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v3

    .line 449
    .local v3, metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    if-eqz v3, :cond_24

    .line 450
    invoke-virtual {v3}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v2

    .line 451
    .local v2, globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    if-eqz v2, :cond_24

    .line 452
    invoke-virtual {v2}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 456
    .end local v2           #globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    :cond_24
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/api/services/pos/model/Plusones;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/google/api/services/pos/model/Plusones;->getAbtk()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 460
    .local v4, row:[Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 461
    return-void

    .line 441
    .end local v0           #count:J
    .end local v3           #metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    .end local v4           #row:[Ljava/lang/Object;
    .end local v6           #state:Ljava/lang/Integer;
    :cond_43
    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_NOTPLUSONED:Ljava/lang/Integer;

    goto :goto_e

    .line 444
    :cond_46
    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_ANONYMOUS:Ljava/lang/Integer;

    .restart local v6       #state:Ljava/lang/Integer;
    goto :goto_e
.end method

.method private getAccount()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 423
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v2, Lcom/google/android/apps/plus/external/PlatformContract$AccountContent;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 424
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz v0, :cond_23

    .line 425
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 426
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_GET_ACCOUNT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/plus/content/EsApiProvider;->logSystemEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 428
    :cond_23
    return-object v1
.end method

.method private getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 10
    .parameter "uri"
    .parameter "hostKey"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 579
    .local v0, context:Landroid/content/Context;
    const-string v5, "pkg"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, pkgFromQuery:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_28

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 583
    move-object v2, v3

    .line 590
    .local v2, pkg:Ljava/lang/String;
    :goto_1d
    sget-object v5, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, p2, v5, v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generateApiaryApiInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    return-object v5

    .line 585
    .end local v2           #pkg:Ljava/lang/String;
    :cond_28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 586
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, packages:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v1, v5

    .restart local v2       #pkg:Ljava/lang/String;
    goto :goto_1d
.end method

.method private getPlusOnes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "urls"

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    .line 475
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    .line 476
    .local v5, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v0, "skipCache"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 479
    .local v2, skip:Z
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, v2, v0, p2}, Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 483
    .local v7, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 485
    invoke-direct {p0, v4, v5, v7}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePlusoneEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    move-result-object v6

    .line 491
    .local v6, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    :goto_2c
    const-string v0, "no_preview"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 493
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/google/android/apps/plus/content/EsApiProvider$2;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsApiProvider$2;-><init>(Lcom/google/android/apps/plus/content/EsApiProvider;Z[Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 509
    :cond_47
    invoke-direct {p0, p2, v6}, Lcom/google/android/apps/plus/content/EsApiProvider;->buildPlusOneCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 487
    .end local v6           #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    :cond_4c
    new-instance v6, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    invoke-direct {v6}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>()V

    .restart local v6       #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    goto :goto_2c
.end method

.method private getPreviews(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "urls"

    .prologue
    .line 523
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_19

    const/4 v3, 0x1

    .line 525
    .local v3, privileged:Z
    :goto_11
    if-nez v3, :cond_1b

    .line 526
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7}, Ljava/lang/SecurityException;-><init>()V

    throw v7

    .line 523
    .end local v3           #privileged:Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_11

    .line 530
    .restart local v3       #privileged:Z
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 531
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v7, "hostKey"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, hostKey:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v2

    .line 535
    .local v2, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v7, "skipCache"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 538
    .local v5, skip:Z
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, v5, v7, p2}, Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 542
    .local v6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4c

    .line 544
    invoke-direct {p0, v0, v2, v6}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    move-result-object v4

    .line 550
    .local v4, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    :goto_47
    invoke-direct {p0, p2, v4}, Lcom/google/android/apps/plus/content/EsApiProvider;->buildPreviewCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7

    .line 546
    .end local v4           #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    :cond_4c
    new-instance v4, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    invoke-direct {v4}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>()V

    .restart local v4       #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    goto :goto_47
.end method

.method private getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .parameter "skip"
    .parameter
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, cache:Landroid/support/v4/util/LruCache;,"Landroid/support/v4/util/LruCache<Landroid/net/Uri;TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v4, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_25

    .line 380
    monitor-enter p2

    .line 381
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    :try_start_a
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_20

    aget-object v3, v0, v1

    .line 382
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 383
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 386
    .end local v3           #url:Ljava/lang/String;
    :cond_20
    monitor-exit p2

    .line 390
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :goto_21
    return-object v4

    .line 386
    .restart local v0       #arr$:[Ljava/lang/String;
    :catchall_22
    move-exception v5

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v5

    .line 388
    .end local v0           #arr$:[Ljava/lang/String;
    :cond_25
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_21
.end method

.method private logSystemEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 6
    .parameter "account"
    .parameter "targetAction"

    .prologue
    .line 400
    if-eqz p1, :cond_1b

    .line 402
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/apps/plus/content/EsApiProvider$1;-><init>(Lcom/google/android/apps/plus/content/EsApiProvider;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    .end local v0           #applicationContext:Landroid/content/Context;
    :cond_1b
    return-void
.end method

.method public static makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;
    .registers 5
    .parameter "info"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    .line 757
    .local v0, source:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v1, "content://com.google.android.apps.plus.content.ApiProvider/preview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "apiKey"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "clientId"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "apiVersion"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "hostKey"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private updatePlusoneEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    .registers 16
    .parameter "account"
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults",
            "<",
            "Lcom/google/api/services/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 279
    .local v1, context:Landroid/content/Context;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v8, plusOnesMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/api/services/pos/model/Plusones;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 282
    .local v10, url:Ljava/lang/String;
    new-instance v6, Lcom/google/android/apps/plus/api/GetPlusOneOperation;

    invoke-direct {v6, v1, v10}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    .local v6, pos:Lcom/google/android/apps/plus/api/GetPlusOneOperation;
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryOperation;

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V

    .line 285
    .local v0, op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->start()V

    .line 287
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_53

    .line 288
    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getPlusones()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v9

    .line 289
    .local v9, plusone:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v9, :cond_e

    .line 291
    invoke-direct {p0, p1, v9}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePlusonePersonIds(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/pos/model/Plusones;)V

    .line 292
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v4, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v4

    .line 295
    :try_start_45
    sget-object v2, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    monitor-exit v4

    goto :goto_e

    :catchall_50
    move-exception v2

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw v2

    .line 299
    .end local v9           #plusone:Lcom/google/api/services/pos/model/Plusones;
    :cond_53
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getEx()Ljava/lang/Exception;

    move-result-object v11

    invoke-direct {v3, v4, v5, v11}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 303
    .end local v0           #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v6           #pos:Lcom/google/android/apps/plus/api/GetPlusOneOperation;
    .end local v10           #url:Ljava/lang/String;
    :goto_69
    return-object v2

    :cond_6a
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {v2, v3, v8}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V

    goto :goto_69
.end method

.method private updatePlusonePersonIds(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/pos/model/Plusones;)V
    .registers 14
    .parameter "account"
    .parameter "plusones"

    .prologue
    .line 346
    invoke-virtual {p2}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v3

    .line 347
    .local v3, metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    if-eqz v3, :cond_62

    .line 348
    invoke-virtual {v3}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v0

    .line 349
    .local v0, globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    if-eqz v0, :cond_62

    .line 350
    invoke-virtual {v0}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getPerson()Ljava/util/List;

    move-result-object v4

    .line 351
    .local v4, people:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;>;"
    if-eqz v4, :cond_62

    .line 352
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v6, publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    .line 354
    .local v5, person:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 357
    .end local v5           #person:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v6}, Lcom/google/android/apps/plus/util/PeopleUtils;->getGaiaIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 360
    .local v7, ttIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_62

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_62

    .line 361
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->setId(Ljava/lang/String;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 366
    .end local v0           #globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #people:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;>;"
    .end local v6           #publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #ttIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_62
    return-void
.end method

.method private updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    .registers 16
    .parameter "account"
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults",
            "<",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 318
    .local v1, context:Landroid/content/Context;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v8, results:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 320
    .local v10, url:Ljava/lang/String;
    new-instance v6, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;

    invoke-direct {v6, v1, v10}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    .local v6, previewOp:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryOperation;

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V

    .line 323
    .local v0, op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->start()V

    .line 324
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4e

    .line 325
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 326
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v2

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v4, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    monitor-enter v4

    .line 328
    :try_start_40
    sget-object v2, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit v4

    goto :goto_e

    :catchall_4b
    move-exception v2

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v2

    .line 332
    .end local v9           #uri:Landroid/net/Uri;
    :cond_4e
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getEx()Ljava/lang/Exception;

    move-result-object v11

    invoke-direct {v3, v4, v5, v11}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 337
    .end local v0           #op:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v6           #previewOp:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    .end local v10           #url:Ljava/lang/String;
    :goto_64
    return-object v2

    :cond_65
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {v2, v3, v8}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V

    goto :goto_64
.end method

.method private writePlusOne(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 27
    .parameter "uri"
    .parameter "values"
    .parameter "urlToPlusOne"

    .prologue
    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 657
    .local v3, context:Landroid/content/Context;
    sget-object v5, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    .line 658
    .local v6, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    .line 660
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 662
    .local v17, uriToPlusOne:Landroid/net/Uri;
    const-string v5, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    if-ne v5, v7, :cond_14d

    const/4 v9, 0x1

    .line 664
    .local v9, add:Z
    :goto_2b
    const-string v5, "token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 666
    .local v16, token:Ljava/lang/String;
    const/4 v12, 0x0

    .line 667
    .local v12, cachedSetByViewer:Ljava/lang/Boolean;
    const/4 v11, 0x0

    .line 668
    .local v11, cachedCount:Ljava/lang/Double;
    const/4 v13, 0x0

    .line 669
    .local v13, hashOfCachedPlusone:I
    const/4 v14, 0x0

    .line 671
    .local v14, notify:Z
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v7

    .line 672
    :try_start_3a
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/services/pos/model/Plusones;

    .line 673
    .local v10, cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v10, :cond_a5

    .line 675
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v12

    .line 676
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/google/api/services/pos/model/Plusones;->setIsSetByViewer(Ljava/lang/Boolean;)Lcom/google/api/services/pos/model/Plusones;

    .line 677
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 680
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v11

    .line 681
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_150

    const/4 v5, 0x1

    :goto_92
    int-to-double v0, v5

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->setCount(Ljava/lang/Double;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 684
    :cond_a0
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->hashCode()I

    move-result v13

    .line 685
    const/4 v14, 0x1

    .line 687
    :cond_a5
    monitor-exit v7
    :try_end_a6
    .catchall {:try_start_3a .. :try_end_a6} :catchall_153

    .line 690
    if-eqz v14, :cond_be

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 693
    const/4 v14, 0x0

    .line 696
    :cond_be
    new-instance v8, Lcom/google/android/apps/plus/api/WritePlusOneOperation;

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-direct {v8, v3, v0, v9, v1}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 698
    .local v8, op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryOperation;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;)V

    .line 700
    .local v2, apiaryOperation:Lcom/google/android/apps/plus/network/ApiaryOperation;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->start()V

    .line 701
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v5

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_159

    .line 704
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->getPlusones()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v15

    .line 705
    .local v15, plusone:Lcom/google/api/services/pos/model/Plusones;
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v7

    .line 706
    :try_start_e0
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #cached:Lcom/google/api/services/pos/model/Plusones;
    check-cast v10, Lcom/google/api/services/pos/model/Plusones;

    .line 707
    .restart local v10       #cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v10, :cond_12b

    .line 708
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_12b

    .line 709
    invoke-virtual {v15}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/google/api/services/pos/model/Plusones;->setIsSetByViewer(Ljava/lang/Boolean;)Lcom/google/api/services/pos/model/Plusones;

    .line 710
    if-eqz v11, :cond_12a

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    if-eqz v5, :cond_12a

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    if-eqz v5, :cond_12a

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_12a

    .line 714
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->setCount(Ljava/lang/Double;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 717
    :cond_12a
    const/4 v14, 0x1

    .line 720
    :cond_12b
    monitor-exit v7
    :try_end_12c
    .catchall {:try_start_e0 .. :try_end_12c} :catchall_156

    .line 742
    .end local v15           #plusone:Lcom/google/api/services/pos/model/Plusones;
    :goto_12c
    if-eqz v14, :cond_143

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 747
    :cond_143
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v5

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_1b4

    const/4 v5, 0x1

    :goto_14c
    return v5

    .line 662
    .end local v2           #apiaryOperation:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .end local v8           #op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    .end local v9           #add:Z
    .end local v10           #cached:Lcom/google/api/services/pos/model/Plusones;
    .end local v11           #cachedCount:Ljava/lang/Double;
    .end local v12           #cachedSetByViewer:Ljava/lang/Boolean;
    .end local v13           #hashOfCachedPlusone:I
    .end local v14           #notify:Z
    .end local v16           #token:Ljava/lang/String;
    :cond_14d
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 681
    .restart local v9       #add:Z
    .restart local v10       #cached:Lcom/google/api/services/pos/model/Plusones;
    .restart local v11       #cachedCount:Ljava/lang/Double;
    .restart local v12       #cachedSetByViewer:Ljava/lang/Boolean;
    .restart local v13       #hashOfCachedPlusone:I
    .restart local v14       #notify:Z
    .restart local v16       #token:Ljava/lang/String;
    :cond_150
    const/4 v5, -0x1

    goto/16 :goto_92

    .line 687
    .end local v10           #cached:Lcom/google/api/services/pos/model/Plusones;
    :catchall_153
    move-exception v5

    :try_start_154
    monitor-exit v7
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    throw v5

    .line 720
    .restart local v2       #apiaryOperation:Lcom/google/android/apps/plus/network/ApiaryOperation;
    .restart local v8       #op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    .restart local v15       #plusone:Lcom/google/api/services/pos/model/Plusones;
    :catchall_156
    move-exception v5

    :try_start_157
    monitor-exit v7
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    throw v5

    .line 722
    .end local v15           #plusone:Lcom/google/api/services/pos/model/Plusones;
    .restart local v10       #cached:Lcom/google/api/services/pos/model/Plusones;
    :cond_159
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v7

    .line 723
    :try_start_15c
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #cached:Lcom/google/api/services/pos/model/Plusones;
    check-cast v10, Lcom/google/api/services/pos/model/Plusones;

    .line 724
    .restart local v10       #cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v10, :cond_1ae

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->hashCode()I

    move-result v5

    if-ne v13, v5, :cond_1ae

    .line 726
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getIsSetByViewer()Ljava/lang/Boolean;

    move-result-object v5

    if-eq v5, v12, :cond_1ae

    .line 727
    invoke-virtual {v10, v12}, Lcom/google/api/services/pos/model/Plusones;->setIsSetByViewer(Ljava/lang/Boolean;)Lcom/google/api/services/pos/model/Plusones;

    .line 728
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->setCount(Ljava/lang/Double;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 729
    if-eqz v11, :cond_1ad

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    if-eqz v5, :cond_1ad

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    if-eqz v5, :cond_1ad

    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_1ad

    .line 733
    invoke-virtual {v10}, Lcom/google/api/services/pos/model/Plusones;->getMetadata()Lcom/google/api/services/pos/model/Plusones$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/pos/model/Plusones$Metadata;->getGlobalCounts()Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->setCount(Ljava/lang/Double;)Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 735
    :cond_1ad
    const/4 v14, 0x1

    .line 738
    :cond_1ae
    monitor-exit v7

    goto/16 :goto_12c

    .end local v10           #cached:Lcom/google/api/services/pos/model/Plusones;
    :catchall_1b1
    move-exception v5

    monitor-exit v7
    :try_end_1b3
    .catchall {:try_start_15c .. :try_end_1b3} :catchall_1b1

    throw v5

    .line 747
    .restart local v10       #cached:Lcom/google/api/services/pos/model/Plusones;
    :cond_1b4
    const/4 v5, 0x0

    goto :goto_14c
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 139
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 130
    :pswitch_b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.plusones"

    goto :goto_a

    .line 133
    :pswitch_e
    const-string v0, "vnd.android.cursor.item/vnd.google.android.apps.plus.account"

    goto :goto_a

    .line 136
    :pswitch_11
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.activitypreview"

    goto :goto_a

    .line 128
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 182
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 167
    :pswitch_b
    if-eqz p4, :cond_9

    array-length v0, p4

    if-lez v0, :cond_9

    .line 168
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/content/EsApiProvider;->getPlusOnes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_a

    .line 173
    :pswitch_15
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getAccount()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_a

    .line 176
    :pswitch_1a
    if-eqz p4, :cond_9

    array-length v0, p4

    if-lez v0, :cond_9

    .line 177
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/content/EsApiProvider;->getPreviews(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_a

    .line 165
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_b
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1c

    move v0, v1

    .line 194
    .local v0, privileged:Z
    :goto_14
    if-nez v0, :cond_1e

    .line 195
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .end local v0           #privileged:Z
    :cond_1c
    move v0, v2

    .line 193
    goto :goto_14

    .line 198
    .restart local v0       #privileged:Z
    :cond_1e
    sget-object v3, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_74

    :cond_27
    :goto_27
    move v1, v2

    .line 226
    :cond_28
    :goto_28
    return v1

    .line 201
    :pswitch_29
    if-eqz p4, :cond_27

    array-length v3, p4

    if-ne v3, v1, :cond_27

    .line 202
    aget-object v3, p4, v2

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsApiProvider;->writePlusOne(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    .line 205
    goto :goto_28

    .line 213
    :pswitch_38
    sget-object v3, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v3

    .line 214
    :try_start_3b
    sget-object v1, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 215
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_6d

    .line 216
    sget-object v3, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    monitor-enter v3

    .line 217
    :try_start_44
    sget-object v1, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 218
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_70

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.google.android.apps.plus.content.ApiProvider/account"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_27

    .line 215
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1

    .line 218
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    .line 198
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_29
        :pswitch_38
    .end packed-switch
.end method

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

    .line 87
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 88
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "plusone"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "account"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.apps.plus.content.ApiProvider"

    const-string v2, "preview"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v4}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    .line 111
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v4}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/util/LruCache;
    .registers 1

    .prologue
    .line 52
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
    .line 52
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
    .line 52
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
    .line 607
    .local p2, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 610
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.circles.platform.result.extra.ERROR_CODE"

    iget-object v8, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    iget-object v8, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ServiceResult;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_ae

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v7

    .line 620
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    :try_start_38
    array-length v6, p1

    if-ge v1, v6, :cond_82

    .line 622
    iget-object v6, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mResults:Ljava/util/Map;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/pos/model/Plusones;

    .line 623
    .local v3, plusones:Lcom/google/api/services/pos/model/Plusones;
    if-nez v3, :cond_59

    .line 625
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #plusones:Lcom/google/api/services/pos/model/Plusones;
    check-cast v3, Lcom/google/api/services/pos/model/Plusones;

    .line 628
    .restart local v3       #plusones:Lcom/google/api/services/pos/model/Plusones;
    :cond_59
    if-nez v3, :cond_6a

    .line 629
    new-instance v3, Lcom/google/api/services/pos/model/Plusones;

    .end local v3           #plusones:Lcom/google/api/services/pos/model/Plusones;
    invoke-direct {v3}, Lcom/google/api/services/pos/model/Plusones;-><init>()V

    .line 630
    .restart local v3       #plusones:Lcom/google/api/services/pos/model/Plusones;
    aget-object v6, p1, v1

    iput-object v6, v3, Lcom/google/api/services/pos/model/Plusones;->id:Ljava/lang/String;

    .line 631
    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 620
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 633
    :cond_6a
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    aget-object v8, p1, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/pos/model/Plusones;

    invoke-direct {p0, v6, v0}, Lcom/google/android/apps/plus/content/EsApiProvider;->expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V

    .line 634
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 637
    .end local v3           #plusones:Lcom/google/api/services/pos/model/Plusones;
    :catchall_7f
    move-exception v6

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_38 .. :try_end_81} :catchall_7f

    throw v6

    :cond_82
    :try_start_82
    monitor-exit v7
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_7f

    .line 640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_af

    const/4 v5, 0x1

    .line 642
    .local v5, privileged:Z
    :goto_94
    if-eqz v5, :cond_ae

    .line 643
    new-instance v4, Lcom/google/api/services/pos/model/List;

    invoke-direct {v4}, Lcom/google/api/services/pos/model/List;-><init>()V

    .line 645
    .local v4, plusonesList:Lcom/google/api/services/pos/model/List;
    iput-object v2, v4, Lcom/google/api/services/pos/model/List;->items:Ljava/util/List;

    .line 646
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.google.android.apps.content.EXTRA_PLUSONES"

    invoke-static {}, Lcom/google/api/services/pos/model/ListJson;->getInstance()Lcom/google/api/services/pos/model/ListJson;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/api/services/pos/model/ListJson;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    .end local v4           #plusonesList:Lcom/google/api/services/pos/model/List;
    .end local v5           #privileged:Z
    :cond_ae
    return-object v0

    .line 640
    .restart local v1       #i:I
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones;>;"
    :cond_af
    const/4 v5, 0x0

    goto :goto_94
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

    .line 558
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "uri"

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 561
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.circles.platform.result.extra.ERROR_CODE"

    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.circles.platform.result.extra.ERROR_MESSAGE"

    iget-object v5, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/service/ServiceResult;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    array-length v3, p1

    new-array v0, v3, [Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 567
    .local v0, activities:[Lcom/google/android/apps/plus/network/ApiaryActivity;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    array-length v3, v0

    if-ge v2, v3, :cond_65

    array-length v3, p1

    if-ge v2, v3, :cond_65

    .line 568
    new-array v3, v7, [Ljava/lang/Object;

    aget-object v4, p1, v2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 569
    iget-object v3, p2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mResults:Ljava/util/Map;

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryActivity;

    aput-object v3, v0, v2

    .line 570
    aget-object v3, v0, v2

    if-nez v3, :cond_62

    .line 571
    sget-object v3, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/network/ApiaryActivity;

    aput-object v3, v0, v2

    .line 567
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 574
    :cond_65
    array-length v3, v0

    if-lez v3, :cond_71

    .line 575
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.android.apps.content.EXTRA_ACTIVITY"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 578
    :cond_71
    return-object v1
.end method

.method private expandPlusOneToCursor(Lcom/google/api/services/pos/model/Plusones;Lcom/google/android/apps/plus/phone/EsMatrixCursor;)V
    .registers 12
    .parameter "plusones"
    .parameter "cursor"

    .prologue
    .line 431
    iget-object v5, p1, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 432
    .local v5, setByViewer:Ljava/lang/Boolean;
    if-eqz v5, :cond_3a

    .line 433
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_37

    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    .line 439
    .local v6, state:Ljava/lang/Integer;
    :goto_c
    const-wide/16 v0, 0x0

    .line 440
    .local v0, count:J
    iget-object v3, p1, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    .line 441
    .local v3, metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    if-eqz v3, :cond_1c

    .line 442
    iget-object v2, v3, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 443
    .local v2, globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    if-eqz v2, :cond_1c

    .line 444
    iget-object v7, v2, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 448
    .end local v2           #globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    :cond_1c
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/api/services/pos/model/Plusones;->id:Ljava/lang/String;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/google/api/services/pos/model/Plusones;->abtk:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 452
    .local v4, row:[Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 453
    return-void

    .line 433
    .end local v0           #count:J
    .end local v3           #metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    .end local v4           #row:[Ljava/lang/Object;
    .end local v6           #state:Ljava/lang/Integer;
    :cond_37
    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_NOTPLUSONED:Ljava/lang/Integer;

    goto :goto_c

    .line 436
    :cond_3a
    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_ANONYMOUS:Ljava/lang/Integer;

    .restart local v6       #state:Ljava/lang/Integer;
    goto :goto_c
.end method

.method private getAccount()Landroid/database/Cursor;
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v9

    .line 399
    .local v9, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v10, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v4, Lcom/google/android/apps/plus/external/PlatformContract$AccountContent;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v10, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 400
    .local v10, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz v9, :cond_6c

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 404
    .local v8, customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 405
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 406
    .local v12, pkgs:[Ljava/lang/String;
    if-eqz v12, :cond_4a

    array-length v4, v12

    if-lez v4, :cond_4a

    .line 407
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    aget-object v3, v12, v13

    aget-object v4, v12, v13

    invoke-static {v4, v11}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v0, sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 412
    .end local v8           #customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, apiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v8

    .line 414
    .end local v0           #sourceInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .end local v2           #apiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .restart local v8       #customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4a
    new-instance v3, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    .line 416
    .local v3, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_GET_ACCOUNT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v9, v3, v4}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 418
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v13

    invoke-virtual {v10, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 420
    .end local v3           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .end local v8           #customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v12           #pkgs:[Ljava/lang/String;
    :cond_6c
    return-object v10
.end method

.method private getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 10
    .parameter "uri"
    .parameter "hostKey"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 582
    .local v0, context:Landroid/content/Context;
    const-string v5, "pkg"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
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

    .line 586
    move-object v2, v3

    .line 593
    .local v2, pkg:Ljava/lang/String;
    :goto_1d
    sget-object v5, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1, p2, v5, v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->generateApiaryApiInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    return-object v5

    .line 588
    .end local v2           #pkg:Ljava/lang/String;
    :cond_28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 589
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, packages:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, v1, v5

    .restart local v2       #pkg:Ljava/lang/String;
    goto :goto_1d
.end method

.method private getPlusOnes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "urls"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    .line 466
    .local v7, account:Lcom/google/android/apps/plus/content/EsAccount;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    .line 467
    .local v6, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const/4 v0, 0x0

    .line 469
    .local v0, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_29

    .line 470
    new-instance v0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    .end local v0           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v6}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    .line 475
    .restart local v0       #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_29
    const-string v1, "skipCache"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 478
    .local v3, skip:Z
    sget-object v1, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, v3, v1, p2}, Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 481
    .local v11, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_79

    .line 483
    invoke-direct {p0, v7, v6, v11}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePlusoneEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    move-result-object v10

    .line 489
    .local v10, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    :goto_43
    if-eqz v7, :cond_61

    const-string v1, "no_preview"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 491
    new-instance v12, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/plus/content/EsApiProvider$1;

    move-object v2, p0

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsApiProvider$1;-><init>(Lcom/google/android/apps/plus/content/EsApiProvider;Z[Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    invoke-direct {v12, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 507
    :cond_61
    invoke-direct {p0, p2, v10}, Lcom/google/android/apps/plus/content/EsApiProvider;->buildPlusOneCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;

    move-result-object v9

    .line 508
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_78

    .line 509
    iget-object v1, v10, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-nez v1, :cond_7f

    sget-object v8, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_READ_PLUSONES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    .line 511
    .local v8, action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :goto_71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v0, v8}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 513
    .end local v8           #action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;
    :cond_78
    return-object v9

    .line 485
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    :cond_79
    new-instance v10, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    invoke-direct {v10}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>()V

    .restart local v10       #result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/api/services/pos/model/Plusones;>;"
    goto :goto_43

    .line 509
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_7f
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_READ_PLUSONES_ERROR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_71
.end method

.method private getPreviews(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "uri"
    .parameter "urls"

    .prologue
    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v8, :cond_19

    const/4 v3, 0x1

    .line 528
    .local v3, privileged:Z
    :goto_11
    if-nez v3, :cond_1b

    .line 529
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7}, Ljava/lang/SecurityException;-><init>()V

    throw v7

    .line 526
    .end local v3           #privileged:Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_11

    .line 533
    .restart local v3       #privileged:Z
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 534
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v7, "hostKey"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, hostKey:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v2

    .line 538
    .local v2, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    const-string v7, "skipCache"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 541
    .local v5, skip:Z
    sget-object v7, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, v5, v7, p2}, Lcom/google/android/apps/plus/content/EsApiProvider;->getUncachedUrls(ZLandroid/support/v4/util/LruCache;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 545
    .local v6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4c

    .line 547
    invoke-direct {p0, v0, v2, v6}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    move-result-object v4

    .line 553
    .local v4, result:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    :goto_47
    invoke-direct {p0, p2, v4}, Lcom/google/android/apps/plus/content/EsApiProvider;->buildPreviewCursorFromCache([Ljava/lang/String;Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;)Landroid/database/Cursor;

    move-result-object v7

    return-object v7

    .line 549
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
    .line 375
    .local p2, cache:Landroid/support/v4/util/LruCache;,"Landroid/support/v4/util/LruCache<Landroid/net/Uri;TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v4, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_25

    .line 378
    monitor-enter p2

    .line 379
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

    .line 380
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1d

    .line 381
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 384
    .end local v3           #url:Ljava/lang/String;
    :cond_20
    monitor-exit p2

    .line 388
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :goto_21
    return-object v4

    .line 384
    .restart local v0       #arr$:[Ljava/lang/String;
    :catchall_22
    move-exception v5

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v5

    .line 386
    .end local v0           #arr$:[Ljava/lang/String;
    :cond_25
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_21
.end method

.method public static makePreviewUri(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Landroid/net/Uri;
    .registers 5
    .parameter "info"

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v0

    .line 758
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
    .registers 15
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

    if-eqz v2, :cond_65

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 282
    .local v6, url:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;)V

    .line 284
    .local v0, op:Lcom/google/android/apps/plus/api/GetPlusOneOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->start()V

    .line 286
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getErrorCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4e

    .line 287
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getPlusones()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v9

    .line 288
    .local v9, plusone:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v9, :cond_e

    .line 290
    invoke-direct {p0, p1, v9}, Lcom/google/android/apps/plus/content/EsApiProvider;->updatePlusonePersonIds(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/pos/model/Plusones;)V

    .line 291
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v4, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v4

    .line 294
    :try_start_40
    sget-object v2, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    monitor-exit v4

    goto :goto_e

    :catchall_4b
    move-exception v2

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v2

    .line 298
    .end local v9           #plusone:Lcom/google/api/services/pos/model/Plusones;
    :cond_4e
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->getException()Ljava/lang/Exception;

    move-result-object v10

    invoke-direct {v3, v4, v5, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 302
    .end local v0           #op:Lcom/google/android/apps/plus/api/GetPlusOneOperation;
    .end local v6           #url:Ljava/lang/String;
    :goto_64
    return-object v2

    :cond_65
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {v2, v3, v8}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V

    goto :goto_64
.end method

.method private updatePlusonePersonIds(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/api/services/pos/model/Plusones;)V
    .registers 13
    .parameter "account"
    .parameter "plusones"

    .prologue
    .line 344
    iget-object v3, p2, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    .line 345
    .local v3, metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;
    if-eqz v3, :cond_51

    .line 346
    iget-object v0, v3, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    .line 347
    .local v0, globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    if-eqz v0, :cond_51

    .line 348
    iget-object v4, v0, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->person:Ljava/util/List;

    .line 349
    .local v4, people:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;>;"
    if-eqz v4, :cond_51

    .line 350
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v6, publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    .line 352
    .local v5, person:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    iget-object v8, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->id:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 355
    .end local v5           #person:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1, v6}, Lcom/google/android/apps/plus/util/PeopleUtils;->getGaiaIdsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 358
    .local v7, ttIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_51

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_51

    .line 359
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v8, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;->id:Ljava/lang/String;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 364
    .end local v0           #globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #people:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts$Person;>;"
    .end local v6           #publicIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #ttIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_51
    return-void
.end method

.method private updatePreviewEntries(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/util/List;)Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
    .registers 15
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

    .line 316
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, context:Landroid/content/Context;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v8, results:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/apps/plus/network/ApiaryActivity;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .local v5, url:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 321
    .local v0, op:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->start()V

    .line 322
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getErrorCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_49

    .line 323
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 324
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v2

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v4, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    monitor-enter v4

    .line 326
    :try_start_3b
    sget-object v2, Lcom/google/android/apps/plus/content/EsApiProvider;->sPreviewCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    monitor-exit v4

    goto :goto_e

    :catchall_46
    move-exception v2

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_46

    throw v2

    .line 330
    .end local v9           #uri:Landroid/net/Uri;
    :cond_49
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->getException()Ljava/lang/Exception;

    move-result-object v10

    invoke-direct {v3, v4, v6, v10}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 335
    .end local v0           #op:Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
    .end local v5           #url:Ljava/lang/String;
    :goto_5f
    return-object v2

    :cond_60
    new-instance v2, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;

    new-instance v3, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v3}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {v2, v3, v8}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V

    goto :goto_5f
.end method

.method private writePlusOne(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 26
    .parameter "uri"
    .parameter "values"
    .parameter "urlToPlusOne"

    .prologue
    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 662
    .local v3, context:Landroid/content/Context;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsApiProvider;->getApiaryApiInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v7

    .line 663
    .local v7, info:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    .line 664
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 665
    .local v17, uriToPlusOne:Landroid/net/Uri;
    const-string v5, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    if-ne v5, v6, :cond_109

    const/4 v9, 0x1

    .line 667
    .local v9, add:Z
    :goto_26
    const-string v5, "token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 669
    .local v10, token:Ljava/lang/String;
    const/4 v13, 0x0

    .line 670
    .local v13, cachedSetByViewer:Ljava/lang/Boolean;
    const/4 v12, 0x0

    .line 671
    .local v12, cachedCount:Ljava/lang/Double;
    const/4 v14, 0x0

    .line 672
    .local v14, hashOfCachedPlusone:I
    const/4 v15, 0x0

    .line 674
    .local v15, notify:Z
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v6

    .line 675
    :try_start_35
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/api/services/pos/model/Plusones;

    .line 676
    .local v11, cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v11, :cond_84

    .line 678
    iget-object v13, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 679
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 680
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    if-eqz v5, :cond_7f

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    if-eqz v5, :cond_7f

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    if-eqz v5, :cond_7f

    .line 683
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iget-object v12, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 684
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v8, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10c

    const/4 v5, 0x1

    :goto_74
    int-to-double v0, v5

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v8, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 687
    :cond_7f
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v14

    .line 688
    const/4 v15, 0x1

    .line 690
    :cond_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_35 .. :try_end_85} :catchall_10f

    .line 693
    if-eqz v15, :cond_9a

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 696
    const/4 v15, 0x0

    .line 699
    :cond_9a
    new-instance v2, Lcom/google/android/apps/plus/api/WritePlusOneOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;ZLjava/lang/String;)V

    .line 701
    .local v2, op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->start()V

    .line 702
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->getErrorCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_115

    .line 705
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->getPlusones()Lcom/google/api/services/pos/model/Plusones;

    move-result-object v16

    .line 706
    .local v16, plusone:Lcom/google/api/services/pos/model/Plusones;
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v6

    .line 707
    :try_start_b5
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cached:Lcom/google/api/services/pos/model/Plusones;
    check-cast v11, Lcom/google/api/services/pos/model/Plusones;

    .line 708
    .restart local v11       #cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v11, :cond_ea

    .line 709
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    if-eq v5, v8, :cond_ea

    .line 710
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    iput-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 711
    if-eqz v12, :cond_e9

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    if-eqz v5, :cond_e9

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    if-eqz v5, :cond_e9

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    if-eqz v5, :cond_e9

    .line 715
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iput-object v12, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 718
    :cond_e9
    const/4 v15, 0x1

    .line 721
    :cond_ea
    monitor-exit v6
    :try_end_eb
    .catchall {:try_start_b5 .. :try_end_eb} :catchall_112

    .line 743
    .end local v16           #plusone:Lcom/google/api/services/pos/model/Plusones;
    :goto_eb
    if-eqz v15, :cond_ff

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsApiProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.google.android.apps.plus.content.ApiProvider/plusone"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 748
    :cond_ff
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->getErrorCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_156

    const/4 v5, 0x1

    :goto_108
    return v5

    .line 665
    .end local v2           #op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    .end local v9           #add:Z
    .end local v10           #token:Ljava/lang/String;
    .end local v11           #cached:Lcom/google/api/services/pos/model/Plusones;
    .end local v12           #cachedCount:Ljava/lang/Double;
    .end local v13           #cachedSetByViewer:Ljava/lang/Boolean;
    .end local v14           #hashOfCachedPlusone:I
    .end local v15           #notify:Z
    :cond_109
    const/4 v9, 0x0

    goto/16 :goto_26

    .line 684
    .restart local v9       #add:Z
    .restart local v10       #token:Ljava/lang/String;
    .restart local v11       #cached:Lcom/google/api/services/pos/model/Plusones;
    .restart local v12       #cachedCount:Ljava/lang/Double;
    .restart local v13       #cachedSetByViewer:Ljava/lang/Boolean;
    .restart local v14       #hashOfCachedPlusone:I
    .restart local v15       #notify:Z
    :cond_10c
    const/4 v5, -0x1

    goto/16 :goto_74

    .line 690
    .end local v11           #cached:Lcom/google/api/services/pos/model/Plusones;
    :catchall_10f
    move-exception v5

    :try_start_110
    monitor-exit v6
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v5

    .line 721
    .restart local v2       #op:Lcom/google/android/apps/plus/api/WritePlusOneOperation;
    .restart local v16       #plusone:Lcom/google/api/services/pos/model/Plusones;
    :catchall_112
    move-exception v5

    :try_start_113
    monitor-exit v6
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw v5

    .line 723
    .end local v16           #plusone:Lcom/google/api/services/pos/model/Plusones;
    .restart local v11       #cached:Lcom/google/api/services/pos/model/Plusones;
    :cond_115
    sget-object v6, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    monitor-enter v6

    .line 724
    :try_start_118
    sget-object v5, Lcom/google/android/apps/plus/content/EsApiProvider;->sPlusoneCache:Landroid/support/v4/util/LruCache;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #cached:Lcom/google/api/services/pos/model/Plusones;
    check-cast v11, Lcom/google/api/services/pos/model/Plusones;

    .line 725
    .restart local v11       #cached:Lcom/google/api/services/pos/model/Plusones;
    if-eqz v11, :cond_151

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v14, v5, :cond_151

    .line 727
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    if-eq v5, v13, :cond_151

    .line 728
    iput-object v13, v11, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 729
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iput-object v12, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 730
    if-eqz v12, :cond_150

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    if-eqz v5, :cond_150

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    if-eqz v5, :cond_150

    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    if-eqz v5, :cond_150

    .line 734
    iget-object v5, v11, Lcom/google/api/services/pos/model/Plusones;->metadata:Lcom/google/api/services/pos/model/Plusones$Metadata;

    iget-object v5, v5, Lcom/google/api/services/pos/model/Plusones$Metadata;->globalCounts:Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;

    iput-object v12, v5, Lcom/google/api/services/pos/model/Plusones$Metadata$GlobalCounts;->count:Ljava/lang/Double;

    .line 736
    :cond_150
    const/4 v15, 0x1

    .line 739
    :cond_151
    monitor-exit v6

    goto :goto_eb

    .end local v11           #cached:Lcom/google/api/services/pos/model/Plusones;
    :catchall_153
    move-exception v5

    monitor-exit v6
    :try_end_155
    .catchall {:try_start_118 .. :try_end_155} :catchall_153

    throw v5

    .line 748
    .restart local v11       #cached:Lcom/google/api/services/pos/model/Plusones;
    :cond_156
    const/4 v5, 0x0

    goto :goto_108
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 138
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 129
    :pswitch_b
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.plusones"

    goto :goto_a

    .line 132
    :pswitch_e
    const-string v0, "vnd.android.cursor.item/vnd.google.android.apps.plus.account"

    goto :goto_a

    .line 135
    :pswitch_11
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.apps.plus.activitypreview"

    goto :goto_a

    .line 127
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
    .line 147
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 155
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
    .line 164
    sget-object v0, Lcom/google/android/apps/plus/content/EsApiProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 182
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 166
    :pswitch_b
    if-eqz p4, :cond_9

    array-length v0, p4

    if-lez v0, :cond_9

    .line 167
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

    .line 164
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

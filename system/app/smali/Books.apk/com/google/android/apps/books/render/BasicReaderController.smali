.class public Lcom/google/android/apps/books/render/BasicReaderController;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/ReaderController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/BasicReaderController$1;,
        Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;,
        Lcom/google/android/apps/books/render/BasicReaderController$MyListener;,
        Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;,
        Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;,
        Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;,
        Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;,
        Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;,
        Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;,
        Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCssJsonArray:Lorg/json/JSONArray;

.field private mCurrentHighlight:Ljava/lang/String;

.field private mDisplayDensity:F

.field private mHighlightApplied:Z

.field private final mInboundListener:Lcom/google/android/apps/books/render/ReaderListener;

.field private final mLoadRangeBoundsRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadedPassages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnInvalidPositionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPageLoadedHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPassageTextReadyHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;

.field private mPageHeight:I

.field private mPassageJsonArray:Lorg/json/JSONArray;

.field private final mPassageTextRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionToPassage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewContent:Ljava/lang/String;

.field private mPreviewContentSet:Z

.field private final mReader:Lcom/google/android/apps/books/render/TextReader;

.field private mReaderAlive:Z

.field private mReaderInitialized:Z

.field private mReaderIsBusy:Z

.field private mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

.field private mRequestId:I

.field private mSettingsApplied:Z

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/TextReader;Lcom/google/android/apps/books/render/ReaderListener;)V
    .registers 5
    .parameter "reader"
    .parameter "listener"

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;Lcom/google/android/apps/books/render/BasicReaderController$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mInboundListener:Lcom/google/android/apps/books/render/ReaderListener;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mHighlightApplied:Z

    .line 84
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPositionToPassage:Ljava/util/Map;

    .line 86
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnInvalidPositionHandlers:Ljava/util/Map;

    .line 107
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;

    .line 118
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnPassageTextReadyHandlers:Ljava/util/Map;

    .line 266
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    .line 332
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    .line 334
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;

    .line 344
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/TextReader;

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    .line 345
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/ReaderListener;

    iput-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;

    .line 346
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPositionToPassage:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnInvalidPositionHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderAlive:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mSettingsApplied:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mOnPassageTextReadyHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/render/BasicReaderController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I

    move-result v0

    return v0
.end method

.method private advance()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 498
    :goto_3
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderAlive:Z

    if-eqz v2, :cond_d1

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    if-nez v2, :cond_d1

    .line 499
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPreviewContent:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPreviewContentSet:Z

    if-nez v2, :cond_1d

    .line 503
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPreviewContent:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/books/render/TextReader;->setPreviewContent(Ljava/lang/String;)V

    .line 504
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPreviewContentSet:Z

    goto :goto_3

    .line 505
    :cond_1d
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mSettingsApplied:Z

    if-nez v2, :cond_4a

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPreviewContentSet:Z

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    if-eqz v2, :cond_4a

    .line 509
    :cond_2d
    const-string v2, "ReaderController"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 510
    const-string v2, "ReaderController"

    const-string v3, "Issuing apply settings request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3c
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    .line 513
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    iget v4, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mDisplayDensity:F

    iget v5, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPageHeight:I

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/books/render/TextReader;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V

    goto :goto_3

    .line 514
    :cond_4a
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mVolumeId:Ljava/lang/String;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageJsonArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_6a

    .line 516
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    .line 517
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mVolumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageJsonArray:Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCssJsonArray:Lorg/json/JSONArray;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/apps/books/render/TextReader;->initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_3

    .line 518
    :cond_6a
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    if-eqz v2, :cond_86

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mSettingsApplied:Z

    if-eqz v2, :cond_86

    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mHighlightApplied:Z

    if-nez v2, :cond_86

    .line 519
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCurrentHighlight:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/books/render/TextReader;->setHighlight(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 526
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mHighlightApplied:Z

    goto/16 :goto_3

    .line 527
    :cond_86
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a1

    .line 528
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;

    .line 529
    .local v0, next:Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    .line 530
    invoke-virtual {v0}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;->run()V

    goto/16 :goto_3

    .line 531
    .end local v0           #next:Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
    :cond_a1
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ba

    .line 532
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    .line 536
    .local v1, request:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
    invoke-virtual {v1}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->run()V

    goto/16 :goto_3

    .line 537
    .end local v1           #request:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
    :cond_ba
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d1

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    .line 539
    .local v1, request:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;
    invoke-virtual {v1}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->run()V

    .line 540
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    goto/16 :goto_3

    .line 545
    .end local v1           #request:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;
    :cond_d1
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z

    if-nez v2, :cond_e4

    const-string v2, "ReaderController"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 546
    const-string v2, "ReaderController"

    const-string v3, "Reverting to idle state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_e4
    return-void
.end method

.method private allocateRequestId()I
    .registers 3

    .prologue
    .line 551
    iget v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mRequestId:I

    return v0
.end method

.method private forceApplySettings()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    .line 384
    iput-boolean v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mSettingsApplied:Z

    .line 385
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 386
    return-void
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V
    .registers 5
    .parameter "settings"
    .parameter "displayDensity"
    .parameter "pageHeight"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPageHeight:I

    if-ne v0, p3, :cond_12

    iget v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mDisplayDensity:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1b

    .line 371
    :cond_12
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 372
    iput p2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mDisplayDensity:F

    .line 373
    iput p3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPageHeight:I

    .line 374
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->forceApplySettings()V

    .line 376
    :cond_1b
    return-void
.end method

.method public clearPendingTasks()V
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 446
    return-void
.end method

.method public getReaderListener()Lcom/google/android/apps/books/render/ReaderListener;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mInboundListener:Lcom/google/android/apps/books/render/ReaderListener;

    return-object v0
.end method

.method public initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "passageJsonArray"
    .parameter "cssJsonArray"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageJsonArray:Lorg/json/JSONArray;

    invoke-static {v0, p3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCssJsonArray:Lorg/json/JSONArray;

    invoke-static {v0, p4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 358
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z

    .line 359
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mAccount:Landroid/accounts/Account;

    .line 360
    iput-object p2, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mVolumeId:Ljava/lang/String;

    .line 361
    iput-object p3, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageJsonArray:Lorg/json/JSONArray;

    .line 362
    iput-object p4, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCssJsonArray:Lorg/json/JSONArray;

    .line 363
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 365
    :cond_2e
    return-void
.end method

.method public loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 14
    .parameter "passage"
    .parameter "page"
    .parameter "offset"
    .parameter "highlightSearch"
    .parameter "nextHighlightPassageIndex"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I

    move-result v2

    .line 400
    .local v2, requestId:I
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;IIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 402
    .local v0, request:Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 405
    return v2
.end method

.method public loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 16
    .parameter "passage"
    .parameter "position"
    .parameter "offset"
    .parameter "fallbackPassageIndex"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I

    move-result v2

    .line 414
    .local v2, requestId:I
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 416
    .local v0, request:Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 419
    return v2
.end method

.method public loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
    .registers 5
    .parameter "range"

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I

    move-result v0

    .line 463
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;

    new-instance v2, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    invoke-direct {v2, p0, p1, v0, v0}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;Lcom/google/android/apps/books/render/TextRange;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 466
    return v0
.end method

.method public requestPassageText(ILjava/lang/String;)I
    .registers 9
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I

    move-result v4

    .line 452
    .local v4, result:I
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;ILjava/lang/String;II)V

    .line 453
    .local v0, r:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 456
    return v4
.end method

.method public setHighlight(Ljava/lang/String;)V
    .registers 3
    .parameter "highlight"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCurrentHighlight:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 425
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mCurrentHighlight:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/BasicReaderController;->mHighlightApplied:Z

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/books/render/BasicReaderController;->advance()V

    .line 429
    :cond_10
    return-void
.end method

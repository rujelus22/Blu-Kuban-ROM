.class public Lcom/google/android/music/albumwall/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/Model$FocusAccumulator;,
        Lcom/google/android/music/albumwall/Model$Focusable;,
        Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;,
        Lcom/google/android/music/albumwall/Model$PileMemberHandle;,
        Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;,
        Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;,
        Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;,
        Lcom/google/android/music/albumwall/Model$ModelPile;,
        Lcom/google/android/music/albumwall/Model$ModelPilePart;,
        Lcom/google/android/music/albumwall/Model$ModelItem;,
        Lcom/google/android/music/albumwall/Model$RequestablePile;,
        Lcom/google/android/music/albumwall/Model$RequestableItem;,
        Lcom/google/android/music/albumwall/Model$RequestableTexture;,
        Lcom/google/android/music/albumwall/Model$RequestableCount;,
        Lcom/google/android/music/albumwall/Model$Requestable;,
        Lcom/google/android/music/albumwall/Model$TextureTracker;,
        Lcom/google/android/music/albumwall/Model$Epoch;
    }
.end annotation


# static fields
.field private static final sTextureTracker:Lcom/google/android/music/albumwall/Model$TextureTracker;


# instance fields
.field private mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

.field private mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

.field mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

.field private mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

.field private mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

.field private mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field private mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

.field private mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field private mExpandUngroupedMetadata:F

.field private mFrameTime:J

.field private mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field private mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

.field private mManageAlbumMode:Z

.field private mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

.field private mOutstandingChildCountRequests:I

.field private mOutstandingItemRequests:I

.field private mOutstandingItemTextureRequests:[I

.field private mOutstandingPileRequests:I

.field private mOutstandingPileTextureRequests:[I

.field private mOwner:Ljava/lang/Thread;

.field private mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

.field private mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

.field private mPileMembersAccessed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/albumwall/Model$PileMemberHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mPilesAccessed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/music/albumwall/Model$TextureTracker;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$TextureTracker;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/Model;->sTextureTracker:Lcom/google/android/music/albumwall/Model$TextureTracker;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "config"
    .parameter "preferences"

    .prologue
    const/16 v3, 0x8a

    const/16 v2, 0x2a

    const/4 v1, 0x0

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 683
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 686
    new-instance v0, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    .line 690
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    .line 694
    new-instance v0, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    .line 698
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    .line 713
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    .line 727
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    .line 730
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    .line 733
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    .line 735
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 736
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 805
    new-instance v0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    .line 817
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 823
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 824
    iput-object p2, p0, Lcom/google/android/music/albumwall/Model;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 825
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/Model$Epoch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/Model;)Lcom/google/android/music/albumwall/AlbumWallCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    return-object v0
.end method

.method private endCollectingCacheStats()V
    .registers 6

    .prologue
    .line 1699
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 1700
    .local v2, pileCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 1702
    .local v3, pileMembersCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1703
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1709
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v1, v4, 0x2

    .line 1710
    .local v1, pileCacheSize:I
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v0, v4, 0x2

    .line 1712
    .local v0, itemCacheSize:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->ensureCapacity(I)V

    .line 1713
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->ensureCapacity(I)V

    .line 1714
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->ensureCapacity(I)V

    .line 1715
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->ensureCapacity(I)V

    .line 1716
    return-void
.end method

.method private endCollectingViewState()V
    .registers 6

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->endCollectingViewState()V

    .line 1732
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v3

    .line 1733
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 1734
    .local v1, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iget v2, v2, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1735
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1736
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1737
    iget v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPileIndex:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1738
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1739
    iget v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItemIndex:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1740
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v2, :cond_40

    iget v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    if-ltz v2, :cond_40

    .line 1741
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 1742
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 1744
    :cond_40
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_56

    .line 1745
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 1746
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    .line 1748
    :cond_56
    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    invoke-virtual {p0, v2}, Lcom/google/android/music/albumwall/Model;->getVisibilityForExpandUngrouped(F)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 1749
    monitor-exit v3

    .line 1750
    return-void

    .line 1749
    .end local v0           #center:Lcom/google/android/music/albumwall/Model$Focusable;
    .end local v1           #state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :catchall_60
    move-exception v2

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_8 .. :try_end_62} :catchall_60

    throw v2
.end method

.method private getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;
    .registers 5
    .parameter "pileIndex"

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1089
    .local v0, key:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 1090
    .local v1, p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v1, :cond_1a

    .line 1091
    new-instance v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .end local v1           #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/Model$RequestablePile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1092
    .restart local v1       #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    :cond_1a
    return-object v1
.end method

.method private getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;
    .registers 11
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1485
    if-nez p2, :cond_a

    .line 1486
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1489
    .local v6, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v6, :cond_24

    .line 1490
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1491
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;

    move-result-object v6

    .line 1496
    :cond_24
    iget-object v0, v6, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v7, v0, p1

    .line 1497
    .local v7, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1498
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 1499
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1504
    iget-object v5, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1505
    .local v5, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1506
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$7;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$7;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v7, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1522
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v5           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v7           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_51
    :goto_51
    return-object v7

    .line 1493
    :cond_52
    const/4 v7, 0x0

    goto :goto_51
.end method

.method private getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I
    .registers 6
    .parameter "type"
    .parameter "item"
    .parameter "currentlyVisible"

    .prologue
    .line 1476
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1477
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1478
    const/4 v1, 0x0

    .line 1481
    :goto_7
    return v1

    .line 1480
    :cond_8
    #setter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z
    invoke-static {v0, p3}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1202(Lcom/google/android/music/albumwall/Model$RequestableTexture;Z)Z

    .line 1481
    #getter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_7
.end method

.method private getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;
    .registers 4
    .parameter "item"

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1527
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_14

    .line 1528
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;-><init>()V

    .line 1529
    .restart local v0       #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    :cond_14
    return-object v0
.end method

.method private getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;
    .registers 4
    .parameter "pile"

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1144
    .local v0, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v0, :cond_15

    .line 1145
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .end local v0           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$ModelPile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1146
    .restart local v0       #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_15
    return-object v0
.end method

.method private final getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I
    .registers 5
    .parameter "f"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1656
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$Focusable;->isPileList()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1657
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v1, :cond_12

    .line 1658
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/google/android/music/albumwall/Model;->getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)I

    move-result v0

    .line 1666
    :cond_12
    :goto_12
    return v0

    .line 1662
    :cond_13
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v1, :cond_12

    .line 1663
    iget-object v0, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model;->getItemScrollOverlayTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v0

    goto :goto_12
.end method

.method private getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;
    .registers 10
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 1189
    new-instance v2, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/music/albumwall/Model$PileMemberHandle;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1190
    .local v2, key:Lcom/google/android/music/albumwall/Model$PileMemberHandle;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 1192
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_3a

    .line 1193
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1194
    .local v3, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v3, :cond_3a

    .line 1195
    invoke-virtual {v3, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1196
    .local v1, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget v4, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 1198
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .end local v0           #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/music/albumwall/Model$RequestableItem;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1199
    .restart local v0       #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .end local v1           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    .end local v3           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_3a
    return-object v0
.end method

.method private handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    .registers 6
    .parameter "item"
    .parameter "value"

    .prologue
    .line 1613
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_e

    .line 1614
    iget-object v2, p2, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, v0

    .line 1615
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1617
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_e
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    .registers 5
    .parameter "pileKey"
    .parameter "p"

    .prologue
    .line 1596
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1597
    const/4 v0, 0x1

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1598
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .registers 4
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1601
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1602
    return-void
.end method

.method private handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .registers 7
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1606
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 1607
    iget-object v2, p3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, v0

    .line 1608
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1606
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1610
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_e
    return-void
.end method

.method private request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "requestable"
    .parameter "runnable"

    .prologue
    .line 1007
    invoke-virtual {p1, p2}, Lcom/google/android/music/albumwall/Model$Requestable;->setRequest(Ljava/lang/Runnable;)V

    .line 1010
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1011
    return-void
.end method

.method private setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V
    .registers 8
    .parameter "epoch"
    .parameter "p"
    .parameter "expanded"
    .parameter "count"

    .prologue
    .line 1175
    invoke-virtual {p2, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1176
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v2, :cond_16

    .line 1177
    :cond_c
    iget v1, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1178
    .local v1, oldCount:I
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 1179
    iput p4, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1180
    if-le v1, p4, :cond_15

    .line 1186
    .end local v1           #oldCount:I
    :cond_15
    :goto_15
    return-void

    .line 1184
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setRequestFailed()V

    goto :goto_15
.end method

.method private startCollectingViewState()V
    .registers 2

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->startCollectingViewState()V

    .line 1720
    return-void
.end method

.method private timeToFadeInFactor(JJ)F
    .registers 10
    .parameter "time"
    .parameter "fadeTimeMs"

    .prologue
    const/high16 v2, 0x3f80

    .line 1462
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_a

    .line 1463
    const/4 v2, 0x0

    .line 1471
    :cond_9
    :goto_9
    return v2

    .line 1464
    :cond_a
    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_9

    .line 1467
    iget-wide v3, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    sub-long v0, v3, p1

    .line 1468
    .local v0, delta:J
    cmp-long v3, v0, p3

    if-gtz v3, :cond_9

    .line 1471
    long-to-float v2, v0

    long-to-float v3, p3

    div-float/2addr v2, v3

    goto :goto_9
.end method

.method private updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "texture"
    .parameter "bitmap"

    .prologue
    .line 1620
    if-nez p2, :cond_3

    .line 1640
    :goto_2
    return-void

    .line 1623
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 1631
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 1635
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->genTextureId()V

    .line 1636
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setExtent(II)V

    .line 1637
    const/16 v0, 0xde1

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1638
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 1639
    invoke-static {p2}, Lcom/google/android/opengl/glview/GLCanvas;->loadBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1633
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setTextureLoadTime(J)V

    goto :goto_c
.end method


# virtual methods
.method public final beginFrame()V
    .registers 1

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->startCollectingViewState()V

    .line 1690
    return-void
.end method

.method public eglContextCleared()V
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->eglContextCleared()V

    .line 932
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->eglContextCleared()V

    .line 933
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 934
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 938
    return-void
.end method

.method public final endFrame()V
    .registers 1

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingViewState()V

    .line 1695
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingCacheStats()V

    .line 1696
    return-void
.end method

.method public final getAlbumLoadingTextureId()I
    .registers 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I
    .registers 8
    .parameter "pile"
    .parameter "expanded"

    .prologue
    const/4 v4, 0x2

    .line 1099
    if-nez p1, :cond_b

    .line 1100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "pile is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1102
    :cond_b
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v3, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1104
    .local v2, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v2, :cond_1d

    .line 1105
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_40

    .line 1106
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v2

    .line 1111
    :cond_1d
    invoke-virtual {v2, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1112
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_3d

    .line 1114
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1119
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1120
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v3, Lcom/google/android/music/albumwall/Model$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/music/albumwall/Model$3;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1139
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_3d
    iget v3, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .end local v0           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    :goto_3f
    return v3

    .line 1108
    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public getExpandUngroupedForVisibility(Z)F
    .registers 5
    .parameter "visibility"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 1760
    if-eqz p1, :cond_10

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1763
    .local v0, value:F
    :cond_d
    :goto_d
    return v0

    .end local v0           #value:F
    :cond_e
    move v0, v1

    .line 1760
    goto :goto_d

    :cond_10
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method public getExpandUngroupedMetadata()F
    .registers 2

    .prologue
    .line 1779
    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    return v0
.end method

.method public getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getExpandedPileIndex()I
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    return v0
.end method

.method public final getFrameTime()J
    .registers 3

    .prologue
    .line 1802
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    return-wide v0
.end method

.method public getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 11
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 1209
    if-gez p3, :cond_1b

    .line 1210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n < 0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_1b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v6

    .line 1213
    .local v6, requestableItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v6, :cond_23

    .line 1214
    const/4 v0, 0x0

    .line 1239
    :goto_22
    return-object v0

    .line 1216
    :cond_23
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableItem;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_42

    .line 1218
    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1223
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1224
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$4;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    invoke-direct {p0, v6, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1239
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_42
    iget-object v0, v6, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_22
.end method

.method public getItemLabelTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I
    .registers 4
    .parameter "item"
    .parameter "currentlyVisible"

    .prologue
    .line 1582
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    move-result v0

    return v0
.end method

.method public getItemScrollOverlayTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .registers 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1592
    invoke-direct {p0, v0, p1, v0}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    move-result v0

    return v0
.end method

.method public getItemTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;J)F
    .registers 7
    .parameter "type"
    .parameter "item"
    .parameter "fadeTimeMs"

    .prologue
    .line 1458
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/music/albumwall/Model;->timeToFadeInFactor(JJ)F

    move-result v0

    return v0
.end method

.method public getItemTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F
    .registers 5
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1448
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1449
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1450
    const/4 v1, 0x0

    .line 1452
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_7
.end method

.method public getItemTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I
    .registers 4
    .parameter "item"
    .parameter "currentlyVisible"

    .prologue
    .line 1409
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTextureIdImp(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)I

    move-result v0

    return v0
.end method

.method public getItemTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)J
    .registers 6
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1430
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1431
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_9

    .line 1432
    const-wide/16 v1, 0x0

    .line 1434
    :goto_8
    return-wide v1

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureLoadTime()J

    move-result-wide v1

    goto :goto_8
.end method

.method public getItemTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)F
    .registers 5
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1439
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1440
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1441
    const/4 v1, 0x0

    .line 1443
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_7
.end method

.method public final getLabelLoadingTextureId()I
    .registers 2

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public getLabelMarkTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_10

    .line 1417
    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .end local p1
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1422
    :goto_d
    if-nez v0, :cond_15

    .line 1425
    :goto_f
    return v1

    .line 1420
    .restart local p1
    :cond_10
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    goto :goto_d

    .line 1425
    .end local p1
    :cond_15
    #getter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_f
.end method

.method public getLabelsVisible()Z
    .registers 3

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 1785
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    monitor-exit v1

    return v0

    .line 1786
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    return v0
.end method

.method public getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 7
    .parameter "pileIndex"

    .prologue
    .line 1031
    if-gez p1, :cond_1b

    .line 1032
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pile < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_1b
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1035
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1036
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->peekNeedsRequest()Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_43

    .line 1038
    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1043
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1044
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v2, Lcom/google/android/music/albumwall/Model$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/music/albumwall/Model$2;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;I)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1059
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_43
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v2
.end method

.method public getPileCount()I
    .registers 4

    .prologue
    .line 978
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 982
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 983
    .local v0, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    new-instance v2, Lcom/google/android/music/albumwall/Model$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/albumwall/Model$1;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 998
    .end local v0           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iget v1, v1, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    return v1
.end method

.method public getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;
    .registers 13
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    const/4 v1, 0x2

    .line 1321
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1323
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_15

    .line 1324
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_42

    .line 1325
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v7

    .line 1330
    :cond_15
    invoke-virtual {v7, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v8, v0, p1

    .line 1331
    .local v8, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v8}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_41

    .line 1334
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1339
    iget-object v6, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1341
    .local v6, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1342
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$5;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$5;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1357
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v6           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v8           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_41
    :goto_41
    return-object v8

    .line 1327
    :cond_42
    const/4 v8, 0x0

    goto :goto_41
.end method

.method public getPileTextureFadeInFactor(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZJ)F
    .registers 8
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "fadeTimeMs"

    .prologue
    .line 1315
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/android/music/albumwall/Model;->timeToFadeInFactor(JJ)F

    move-result v0

    return v0
.end method

.method public getPileTextureHeight(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F
    .registers 6
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1296
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1297
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1298
    const/4 v1, 0x0

    .line 1300
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_7
.end method

.method public getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)I
    .registers 7
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "currentlyVisible"

    .prologue
    .line 1277
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1278
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1279
    const/4 v1, 0x0

    .line 1282
    :goto_7
    return v1

    .line 1281
    :cond_8
    #setter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z
    invoke-static {v0, p4}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1202(Lcom/google/android/music/albumwall/Model$RequestableTexture;Z)Z

    .line 1282
    #getter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_7
.end method

.method public getPileTextureLoadTime(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)J
    .registers 7
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1305
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1306
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_9

    .line 1307
    const-wide/16 v1, 0x0

    .line 1309
    :goto_8
    return-wide v1

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureLoadTime()J

    move-result-wide v1

    goto :goto_8
.end method

.method public getPileTextureWidth(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)F
    .registers 6
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1287
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1288
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1289
    const/4 v1, 0x0

    .line 1291
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_7
.end method

.method public final getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getThumbOverlayTextureId()I
    .registers 4

    .prologue
    .line 1644
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1645
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1646
    .local v1, id:I
    if-nez v1, :cond_16

    .line 1648
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    if-eqz v2, :cond_16

    .line 1649
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {p0, v2}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1652
    :cond_16
    return v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .registers 4

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 1792
    :try_start_3
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    monitor-exit v1

    return-object v0

    .line 1793
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getVisibilityForExpandUngrouped(F)Z
    .registers 5
    .parameter "expandUngrouped"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1753
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_11

    .line 1756
    .local v0, visibility:Z
    :cond_10
    :goto_10
    return v0

    .end local v0           #visibility:Z
    :cond_11
    move v0, v1

    .line 1753
    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method public final invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 6
    .parameter "item"
    .parameter "type"

    .prologue
    .line 1865
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_12

    .line 1866
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1867
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v1, :cond_11

    .line 1868
    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->invalidate(I)V

    .line 1876
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_11
    :goto_11
    return-void

    .line 1871
    :cond_12
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1872
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-eqz v0, :cond_11

    .line 1873
    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    goto :goto_11
.end method

.method public invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 4
    .parameter "viewState"

    .prologue
    .line 852
    new-instance v0, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 853
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->invalidate()V

    .line 854
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 855
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 856
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 857
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 859
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 860
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 861
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedForVisibility(Z)F

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    .line 862
    monitor-exit v1

    .line 863
    return-void

    .line 862
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public final invalidateTexture(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V

    .line 1854
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V

    .line 1855
    return-void
.end method

.method public final isManageAlbumMode()Z
    .registers 2

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model;->mManageAlbumMode:Z

    return v0
.end method

.method public final reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V
    .registers 14
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "item"
    .parameter "itemIndex"
    .parameter "distanceSquared"
    .parameter "isPileList"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V

    .line 1727
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 6
    .parameter "viewState"

    .prologue
    const/4 v3, 0x0

    .line 872
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 874
    if-eqz p1, :cond_57

    .line 875
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    if-ltz v0, :cond_f

    .line 876
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 878
    :cond_f
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_1e

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    if-ltz v0, :cond_1e

    .line 879
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 881
    :cond_1e
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_2d

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    if-ltz v0, :cond_2d

    .line 882
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 884
    :cond_2d
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_42

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    if-ltz v0, :cond_42

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    if-ltz v0, :cond_42

    .line 887
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 891
    :cond_42
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_57

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    if-ltz v0, :cond_57

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    if-ltz v0, :cond_57

    .line 894
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 899
    :cond_57
    return-void
.end method

.method public setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 839
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 840
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 841
    return-void
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 4
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 830
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 831
    iput-object p2, p0, Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 832
    iput-object p3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 833
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 9
    .parameter "epoch"
    .parameter "pile"
    .parameter "unexpandedCount"
    .parameter "expandedCount"

    .prologue
    .line 1161
    if-eqz p1, :cond_8

    .line 1162
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1164
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1165
    .local v0, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v0, :cond_2b

    .line 1167
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting un-requested child count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_2a
    return-void

    .line 1169
    :cond_2b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/music/albumwall/Model;->setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V

    .line 1170
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/google/android/music/albumwall/Model;->setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V

    goto :goto_2a
.end method

.method public setExpandUngroupedMetadata(F)V
    .registers 6
    .parameter "expandUngroupedMetadata"

    .prologue
    .line 1768
    iput p1, p0, Lcom/google/android/music/albumwall/Model;->mExpandUngroupedMetadata:F

    .line 1769
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 1770
    :try_start_5
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model;->getVisibilityForExpandUngrouped(F)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    .line 1771
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1772
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-boolean v3, v3, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->labelsVisible:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setShowLabels(IZ)V

    .line 1774
    :cond_22
    monitor-exit v1

    .line 1775
    return-void

    .line 1774
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V
    .registers 5
    .parameter "pile"
    .parameter "pileIndex"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eq v0, p1, :cond_2b

    .line 953
    if-nez p1, :cond_13

    const/4 v0, -0x1

    if-eq p2, v0, :cond_13

    .line 954
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile == null but pileIndex != -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_13
    if-eqz p1, :cond_1f

    if-gez p2, :cond_1f

    .line 957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile != null but pileIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_1f
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 960
    :try_start_22
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput-object p1, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 961
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p2, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 962
    monitor-exit v1

    .line 964
    :cond_2b
    return-void

    .line 962
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public final setFrameTime(J)V
    .registers 3
    .parameter "frameTime"

    .prologue
    .line 1807
    iput-wide p1, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    .line 1808
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 10
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 1249
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1250
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v0

    .line 1251
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_25

    .line 1252
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setItem bad pile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_24
    return-void

    .line 1254
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_35

    .line 1255
    if-eqz p5, :cond_31

    .line 1256
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setReceived()V

    .line 1257
    iput-object p5, v0, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_24

    .line 1259
    :cond_31
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_24

    .line 1262
    :cond_35
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_24
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 1540
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v3, v2, p2

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p2

    .line 1541
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1542
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_38

    .line 1543
    const-string v2, "Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItemTexture unknown item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_2a
    :goto_2a
    if-eqz p4, :cond_37

    .line 1564
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v3, Lcom/google/android/music/albumwall/Model$8;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model$8;-><init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1571
    :cond_37
    return-void

    .line 1545
    :cond_38
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, p2

    .line 1546
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v2, :cond_57

    .line 1547
    if-eqz p4, :cond_53

    .line 1548
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1549
    invoke-direct {p0, v1, p4}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1551
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2a

    .line 1552
    new-instance v2, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v2, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_2a

    .line 1556
    :cond_53
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a

    .line 1559
    :cond_57
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a
.end method

.method public final setManageAlbumMode(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 1841
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model;->mManageAlbumMode:Z

    .line 1842
    return-void
.end method

.method public setOwnerThread()V
    .registers 2

    .prologue
    .line 1879
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOwner:Ljava/lang/Thread;

    .line 1880
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 8
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 1071
    if-eqz p1, :cond_8

    .line 1072
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1074
    :cond_8
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1075
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v0, :cond_27

    .line 1076
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPile bad pile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :goto_26
    return-void

    .line 1078
    :cond_27
    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_33

    .line 1079
    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setReceived()V

    .line 1080
    iput-object p3, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    goto :goto_26

    .line 1082
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setRequestFailed()V

    goto :goto_26
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 1021
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_10

    .line 1022
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 1023
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iput p2, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1027
    :goto_f
    return-void

    .line 1025
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setRequestFailed()V

    goto :goto_f
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .registers 15
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    .line 1367
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1368
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_3d

    .line 1369
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPileLabelTexture bad pile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_2a
    :goto_2a
    if-eqz p5, :cond_3c

    .line 1392
    iget-object v8, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v0, Lcom/google/android/music/albumwall/Model$6;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$6;-><init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1398
    :cond_3c
    return-void

    .line 1371
    :cond_3d
    invoke-virtual {v7, p4}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v6, v0, p2

    .line 1372
    .local v6, label:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_60

    .line 1373
    if-eqz p5, :cond_5c

    .line 1374
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1375
    invoke-direct {p0, v6, p5}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1377
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2a

    .line 1378
    new-instance v0, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v0, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_2a

    .line 1381
    :cond_5c
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a

    .line 1384
    :cond_60
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a
.end method

.method public updateLoadingTexture()V
    .registers 3

    .prologue
    .line 906
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 907
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 909
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getAlbumLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 910
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c

    .line 911
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 912
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 914
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_2e

    .line 916
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 917
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 919
    :cond_2e
    return-void
.end method

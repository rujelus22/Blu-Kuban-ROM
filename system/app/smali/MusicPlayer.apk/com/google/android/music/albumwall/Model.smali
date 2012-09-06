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

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 692
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 695
    new-instance v0, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    .line 699
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    .line 703
    new-instance v0, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    .line 707
    new-instance v0, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;-><init>(Lcom/google/android/music/albumwall/Model;I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    .line 722
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    .line 736
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    .line 739
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    .line 742
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    .line 744
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 745
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 814
    new-instance v0, Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    .line 823
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 829
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 830
    iput-object p2, p0, Lcom/google/android/music/albumwall/Model;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 831
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
    .line 1719
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 1720
    .local v2, pileCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 1722
    .local v3, pileMembersCount:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1723
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1729
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v1, v4, 0x2

    .line 1730
    .local v1, pileCacheSize:I
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v0, v4, 0x2

    .line 1732
    .local v0, itemCacheSize:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->ensureCapacity(I)V

    .line 1733
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, v1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->ensureCapacity(I)V

    .line 1734
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->ensureCapacity(I)V

    .line 1735
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v4, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->ensureCapacity(I)V

    .line 1736
    return-void
.end method

.method private endCollectingViewState()V
    .registers 6

    .prologue
    .line 1750
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->endCollectingViewState()V

    .line 1752
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v3

    .line 1753
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    .line 1754
    .local v1, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iget v2, v2, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1755
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1756
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1757
    iget v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mPileIndex:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1758
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1759
    iget v2, v0, Lcom/google/android/music/albumwall/Model$Focusable;->mItemIndex:I

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1760
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v2, :cond_40

    iget v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    if-ltz v2, :cond_40

    .line 1761
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 1762
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 1764
    :cond_40
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_56

    .line 1765
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 1766
    iget-object v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v2

    iput v2, v1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    .line 1768
    :cond_56
    monitor-exit v3

    .line 1769
    return-void

    .line 1768
    .end local v0           #center:Lcom/google/android/music/albumwall/Model$Focusable;
    .end local v1           #state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :catchall_58
    move-exception v2

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method private getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;
    .registers 5
    .parameter "pileIndex"

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1094
    .local v0, key:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .line 1095
    .local v1, p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v1, :cond_1a

    .line 1096
    new-instance v1, Lcom/google/android/music/albumwall/Model$RequestablePile;

    .end local v1           #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/Model$RequestablePile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1097
    .restart local v1       #p:Lcom/google/android/music/albumwall/Model$RequestablePile;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_1a
    return-object v1
.end method

.method private getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;
    .registers 11
    .parameter "type"
    .parameter "item"

    .prologue
    .line 1490
    if-nez p2, :cond_a

    .line 1491
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1493
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1494
    .local v6, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v6, :cond_24

    .line 1495
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1496
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;

    move-result-object v6

    .line 1501
    :cond_24
    iget-object v0, v6, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v7, v0, p1

    .line 1502
    .local v7, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1503
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOutstandingAlbumTextureRequests()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 1504
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1509
    iget-object v5, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1510
    .local v5, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1511
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$7;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$7;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v7, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1527
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v5           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v7           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_51
    :goto_51
    return-object v7

    .line 1498
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
    .line 1481
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1482
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1483
    const/4 v1, 0x0

    .line 1486
    :goto_7
    return v1

    .line 1485
    :cond_8
    #setter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z
    invoke-static {v0, p3}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1202(Lcom/google/android/music/albumwall/Model$RequestableTexture;Z)Z

    .line 1486
    #getter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_7
.end method

.method private getOrCreateAlbum(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$ModelItem;
    .registers 4
    .parameter "item"

    .prologue
    .line 1531
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1532
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_14

    .line 1533
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .end local v0           #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelItem;-><init>()V

    .line 1534
    .restart local v0       #album:Lcom/google/android/music/albumwall/Model$ModelItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    :cond_14
    return-object v0
.end method

.method private getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;
    .registers 4
    .parameter "pile"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1149
    .local v0, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v0, :cond_15

    .line 1150
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .end local v0           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/Model$ModelPile;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1151
    .restart local v0       #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    :cond_15
    return-object v0
.end method

.method private final getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I
    .registers 5
    .parameter "f"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1676
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$Focusable;->isPileList()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1677
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v1, :cond_12

    .line 1678
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/google/android/music/albumwall/Model;->getPileTextureId(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)I

    move-result v0

    .line 1686
    :cond_12
    :goto_12
    return v0

    .line 1682
    :cond_13
    iget-object v1, p1, Lcom/google/android/music/albumwall/Model$Focusable;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v1, :cond_12

    .line 1683
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
    .line 1194
    new-instance v2, Lcom/google/android/music/albumwall/Model$PileMemberHandle;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/music/albumwall/Model$PileMemberHandle;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1195
    .local v2, key:Lcom/google/android/music/albumwall/Model$PileMemberHandle;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMembersAccessed:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .line 1197
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_3a

    .line 1198
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v4, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1199
    .local v3, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v3, :cond_3a

    .line 1200
    invoke-virtual {v3, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v4

    iget-object v1, v4, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1201
    .local v1, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget v4, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 1203
    new-instance v0, Lcom/google/android/music/albumwall/Model$RequestableItem;

    .end local v0           #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/music/albumwall/Model$RequestableItem;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    .line 1204
    .restart local v0       #albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    iget-object v4, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    .end local v1           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    .end local v3           #p:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_3a
    return-object v0
.end method

.method private handleItemRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/Model$ModelItem;)V
    .registers 9
    .parameter "item"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 1625
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_23

    .line 1626
    iget-object v3, p2, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v3, v0

    .line 1627
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isRegisteredForChangeNotification()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1628
    invoke-virtual {v1, v5}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRegisteredForChangeNotification(Z)V

    .line 1629
    move v2, v0

    .line 1630
    .local v2, type:I
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v4, Lcom/google/android/music/albumwall/Model$10;

    invoke-direct {v4, p0, p1, v2}, Lcom/google/android/music/albumwall/Model$10;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1635
    .end local v2           #type:I
    :cond_1d
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1625
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1637
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_23
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/Model$ModelPile;)V
    .registers 5
    .parameter "pileKey"
    .parameter "p"

    .prologue
    .line 1608
    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1609
    const/4 v0, 0x1

    iget-object v1, p2, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/albumwall/Model;->handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1610
    return-void
.end method

.method private handleRemoval(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .registers 4
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1613
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V

    .line 1614
    return-void
.end method

.method private handleRemovalofTextures(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$ModelPilePart;)V
    .registers 7
    .parameter "pileKey"
    .parameter "expanded"
    .parameter "part"

    .prologue
    .line 1618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 1619
    iget-object v2, p3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, v0

    .line 1620
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 1618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1622
    .end local v1           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_e
    return-void
.end method

.method private request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "requestable"
    .parameter "runnable"

    .prologue
    .line 1012
    invoke-virtual {p1, p2}, Lcom/google/android/music/albumwall/Model$Requestable;->setRequest(Ljava/lang/Runnable;)V

    .line 1015
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1016
    return-void
.end method

.method private setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V
    .registers 8
    .parameter "epoch"
    .parameter "p"
    .parameter "expanded"
    .parameter "count"

    .prologue
    .line 1180
    invoke-virtual {p2, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1181
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v2, :cond_16

    .line 1182
    :cond_c
    iget v1, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1183
    .local v1, oldCount:I
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 1184
    iput p4, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1185
    if-le v1, p4, :cond_15

    .line 1191
    .end local v1           #oldCount:I
    :cond_15
    :goto_15
    return-void

    .line 1189
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setRequestFailed()V

    goto :goto_15
.end method

.method private startCollectingViewState()V
    .registers 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->startCollectingViewState()V

    .line 1740
    return-void
.end method

.method private timeToFadeInFactor(JJ)F
    .registers 10
    .parameter "time"
    .parameter "fadeTimeMs"

    .prologue
    const/high16 v2, 0x3f80

    .line 1467
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_a

    .line 1468
    const/4 v2, 0x0

    .line 1476
    :cond_9
    :goto_9
    return v2

    .line 1469
    :cond_a
    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_9

    .line 1472
    iget-wide v3, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    sub-long v0, v3, p1

    .line 1473
    .local v0, delta:J
    cmp-long v3, v0, p3

    if-gtz v3, :cond_9

    .line 1476
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
    .line 1640
    if-nez p2, :cond_3

    .line 1660
    :goto_2
    return-void

    .line 1643
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 1651
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->deleteTextureId()V

    .line 1655
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->genTextureId()V

    .line 1656
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setExtent(II)V

    .line 1657
    const/16 v0, 0xde1

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->getTextureId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1658
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 1659
    invoke-static {p2}, Lcom/google/android/opengl/glview/GLCanvas;->loadBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1653
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
    .line 1709
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->startCollectingViewState()V

    .line 1710
    return-void
.end method

.method public eglContextCleared()V
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->eglContextCleared()V

    .line 937
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->eglContextCleared()V

    .line 938
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 939
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 943
    return-void
.end method

.method public final endFrame()V
    .registers 1

    .prologue
    .line 1714
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingViewState()V

    .line 1715
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model;->endCollectingCacheStats()V

    .line 1716
    return-void
.end method

.method public final getAlbumLoadingTextureId()I
    .registers 2

    .prologue
    .line 1808
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

    .line 1104
    if-nez p1, :cond_b

    .line 1105
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "pile is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1107
    :cond_b
    iget-object v3, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v3, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1109
    .local v2, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v2, :cond_1d

    .line 1110
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_40

    .line 1111
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v2

    .line 1116
    :cond_1d
    invoke-virtual {v2, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 1117
    .local v0, childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    if-ge v3, v4, :cond_3d

    .line 1119
    iget v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1124
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1125
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v3, Lcom/google/android/music/albumwall/Model$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/music/albumwall/Model$3;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1144
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_3d
    iget v3, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .end local v0           #childCount:Lcom/google/android/music/albumwall/Model$RequestableCount;
    :goto_3f
    return v3

    .line 1113
    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getExpandedPileIndex()I
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    return v0
.end method

.method public final getFrameTime()J
    .registers 3

    .prologue
    .line 1798
    iget-wide v0, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    return-wide v0
.end method

.method public getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .registers 11
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 1214
    if-gez p3, :cond_1b

    .line 1215
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

    .line 1217
    :cond_1b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v6

    .line 1218
    .local v6, requestableItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v6, :cond_23

    .line 1219
    const/4 v0, 0x0

    .line 1244
    :goto_22
    return-object v0

    .line 1221
    :cond_23
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableItem;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_42

    .line 1223
    iget v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1228
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1229
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$4;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model$4;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    invoke-direct {p0, v6, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1244
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
    .line 1594
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

    .line 1604
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
    .line 1463
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
    .line 1453
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1454
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1455
    const/4 v1, 0x0

    .line 1457
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
    .line 1414
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
    .line 1435
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1436
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_9

    .line 1437
    const-wide/16 v1, 0x0

    .line 1439
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
    .line 1444
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1445
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1446
    const/4 v1, 0x0

    .line 1448
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
    .line 1813
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

    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_10

    .line 1422
    check-cast p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .end local p1
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1427
    :goto_d
    if-nez v0, :cond_15

    .line 1430
    :goto_f
    return v1

    .line 1425
    .restart local p1
    :cond_10
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/albumwall/Model;->getItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    goto :goto_d

    .line 1430
    .end local p1
    :cond_15
    #getter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mTextureId:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1300(Lcom/google/android/music/albumwall/Model$RequestableTexture;)I

    move-result v1

    goto :goto_f
.end method

.method public getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .registers 7
    .parameter "pileIndex"

    .prologue
    .line 1036
    if-gez p1, :cond_1b

    .line 1037
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

    .line 1039
    :cond_1b
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mPilesAccessed:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1041
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->peekNeedsRequest()Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_43

    .line 1043
    iget v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1048
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1049
    .local v1, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v2, Lcom/google/android/music/albumwall/Model$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/music/albumwall/Model$2;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;I)V

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1064
    .end local v1           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    :cond_43
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v2
.end method

.method public getPileCount()I
    .registers 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->peekNeedsRequest()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 987
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 988
    .local v0, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    new-instance v2, Lcom/google/android/music/albumwall/Model$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/albumwall/Model$1;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1003
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

    .line 1326
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1328
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_15

    .line 1329
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_42

    .line 1330
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getOrCreatePile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)Lcom/google/android/music/albumwall/Model$ModelPile;

    move-result-object v7

    .line 1335
    :cond_15
    invoke-virtual {v7, p3}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v8, v0, p1

    .line 1336
    .local v8, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    invoke-virtual {v8}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->peekNeedsRequest()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v0, v0, p1

    if-ge v0, v1, :cond_41

    .line 1339
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1344
    iget-object v6, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 1346
    .local v6, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 1347
    .local v2, epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    new-instance v0, Lcom/google/android/music/albumwall/Model$5;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$5;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/music/albumwall/Model;->request(Lcom/google/android/music/albumwall/Model$Requestable;Ljava/lang/Runnable;)V

    .line 1362
    .end local v2           #epoch:Lcom/google/android/music/albumwall/Model$Epoch;
    .end local v6           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v8           #texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    :cond_41
    :goto_41
    return-object v8

    .line 1332
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
    .line 1320
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
    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1302
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1303
    const/4 v1, 0x0

    .line 1305
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
    .line 1282
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1283
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1284
    const/4 v1, 0x0

    .line 1287
    :goto_7
    return v1

    .line 1286
    :cond_8
    #setter for: Lcom/google/android/music/albumwall/Model$RequestableTexture;->mCurrentlyVisible:Z
    invoke-static {v0, p4}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->access$1202(Lcom/google/android/music/albumwall/Model$RequestableTexture;Z)Z

    .line 1287
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
    .line 1310
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1311
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_9

    .line 1312
    const-wide/16 v1, 0x0

    .line 1314
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
    .line 1292
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->getPileTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)Lcom/google/android/music/albumwall/Model$RequestableTexture;

    move-result-object v0

    .line 1293
    .local v0, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    if-nez v0, :cond_8

    .line 1294
    const/4 v1, 0x0

    .line 1296
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
    .line 1818
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .registers 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getThumbOverlayTextureId()I
    .registers 4

    .prologue
    .line 1664
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->getCurrent()Lcom/google/android/music/albumwall/Model$Focusable;

    move-result-object v0

    .line 1665
    .local v0, center:Lcom/google/android/music/albumwall/Model$Focusable;
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1666
    .local v1, id:I
    if-nez v1, :cond_16

    .line 1668
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    if-eqz v2, :cond_16

    .line 1669
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {p0, v2}, Lcom/google/android/music/albumwall/Model;->getOvelayTextureId(Lcom/google/android/music/albumwall/Model$Focusable;)I

    move-result v1

    .line 1672
    :cond_16
    return v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .registers 4

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 1788
    :try_start_3
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    monitor-exit v1

    return-object v0

    .line 1789
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 6
    .parameter "item"
    .parameter "type"

    .prologue
    .line 1861
    instance-of v2, p1, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v2, :cond_12

    .line 1862
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1863
    .local v1, pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-eqz v1, :cond_11

    .line 1864
    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ModelPile;->invalidate(I)V

    .line 1872
    .end local v1           #pile:Lcom/google/android/music/albumwall/Model$ModelPile;
    :cond_11
    :goto_11
    return-void

    .line 1867
    :cond_12
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1868
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-eqz v0, :cond_11

    .line 1869
    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    goto :goto_11
.end method

.method public invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 4
    .parameter "viewState"

    .prologue
    .line 858
    new-instance v0, Lcom/google/android/music/albumwall/Model$Epoch;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$Epoch;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    .line 859
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->invalidate()V

    .line 860
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOrdinalToRequestablePileMap:Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$OrdinalToRequestablePileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 861
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 862
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileMemberHandleToRequestableItemMap:Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$PileMemberToRequestableItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 863
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 865
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 866
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 867
    monitor-exit v1

    .line 868
    return-void

    .line 867
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final invalidateTexture(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V

    .line 1850
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->invalidate(Lcom/google/android/music/utils/MusicCallbackHelper;I)V

    .line 1851
    return-void
.end method

.method public final isManageAlbumMode()Z
    .registers 2

    .prologue
    .line 1828
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
    .line 1746
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mCenterFocus:Lcom/google/android/music/albumwall/Model$FocusAccumulator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/albumwall/Model$FocusAccumulator;->reportFocusableDistance(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;IIZ)V

    .line 1747
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 6
    .parameter "viewState"

    .prologue
    const/4 v3, 0x0

    .line 877
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 879
    if-eqz p1, :cond_57

    .line 880
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    if-ltz v0, :cond_f

    .line 881
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 883
    :cond_f
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_1e

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    if-ltz v0, :cond_1e

    .line 884
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 886
    :cond_1e
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_2d

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    if-ltz v0, :cond_2d

    .line 887
    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 889
    :cond_2d
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_42

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    if-ltz v0, :cond_42

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    if-ltz v0, :cond_42

    .line 892
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 896
    :cond_42
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v0, :cond_57

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    if-ltz v0, :cond_57

    iget v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    if-ltz v0, :cond_57

    .line 899
    iget-object v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iget v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    iget v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 904
    :cond_57
    return-void
.end method

.method public setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 843
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 845
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 846
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 847
    return-void
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 4
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumWallView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 837
    iput-object p2, p0, Lcom/google/android/music/albumwall/Model;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 838
    iput-object p3, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 839
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 9
    .parameter "epoch"
    .parameter "pile"
    .parameter "unexpandedCount"
    .parameter "expandedCount"

    .prologue
    .line 1166
    if-eqz p1, :cond_8

    .line 1167
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingChildCountRequests:I

    .line 1169
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v1, p2}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1170
    .local v0, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v0, :cond_2b

    .line 1172
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

    .line 1177
    :goto_2a
    return-void

    .line 1174
    :cond_2b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/music/albumwall/Model;->setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V

    .line 1175
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/google/android/music/albumwall/Model;->setChildCountHelper(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/Model$ModelPile;ZI)V

    goto :goto_2a
.end method

.method public setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V
    .registers 5
    .parameter "pile"
    .parameter "pileIndex"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eq v0, p1, :cond_2b

    .line 958
    if-nez p1, :cond_13

    const/4 v0, -0x1

    if-eq p2, v0, :cond_13

    .line 959
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile == null but pileIndex != -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_13
    if-eqz p1, :cond_1f

    if-gez p2, :cond_1f

    .line 962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pile != null but pileIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1f
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    monitor-enter v1

    .line 965
    :try_start_22
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput-object p1, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 966
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mViewState:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p2, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 967
    monitor-exit v1

    .line 969
    :cond_2b
    return-void

    .line 967
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
    .line 1803
    iput-wide p1, p0, Lcom/google/android/music/albumwall/Model;->mFrameTime:J

    .line 1804
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
    .line 1254
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemRequests:I

    .line 1255
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->getRequestableItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/Model$RequestableItem;

    move-result-object v0

    .line 1256
    .local v0, albumItem:Lcom/google/android/music/albumwall/Model$RequestableItem;
    if-nez v0, :cond_25

    .line 1257
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

    .line 1270
    :goto_24
    return-void

    .line 1259
    :cond_25
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_35

    .line 1260
    if-eqz p5, :cond_31

    .line 1261
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setReceived()V

    .line 1262
    iput-object p5, v0, Lcom/google/android/music/albumwall/Model$RequestableItem;->mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_24

    .line 1264
    :cond_31
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_24

    .line 1267
    :cond_35
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableItem;->setRequestFailed()V

    goto :goto_24
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1545
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingItemTextureRequests:[I

    aget v3, v2, p2

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p2

    .line 1546
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mClientItemToModelItemMap:Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;

    invoke-virtual {v2, p3}, Lcom/google/android/music/albumwall/Model$ClientItemToModelItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/albumwall/Model$ModelItem;

    .line 1547
    .local v0, album:Lcom/google/android/music/albumwall/Model$ModelItem;
    if-nez v0, :cond_39

    .line 1548
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

    .line 1575
    :cond_2c
    :goto_2c
    if-eqz p4, :cond_38

    .line 1576
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v3, Lcom/google/android/music/albumwall/Model$9;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/google/android/music/albumwall/Model$9;-><init>(Lcom/google/android/music/albumwall/Model;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v5}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1583
    :cond_38
    return-void

    .line 1550
    :cond_39
    iget-object v2, v0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v2, p2

    .line 1551
    .local v1, texture:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v2, :cond_6a

    .line 1552
    if-eqz p4, :cond_66

    .line 1553
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1554
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->isRegisteredForChangeNotification()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1555
    invoke-virtual {v1, v4}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRegisteredForChangeNotification(Z)V

    .line 1556
    iget-object v2, p0, Lcom/google/android/music/albumwall/Model;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v3, Lcom/google/android/music/albumwall/Model$8;

    invoke-direct {v3, p0, p3, p2}, Lcom/google/android/music/albumwall/Model$8;-><init>(Lcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    invoke-virtual {v2, v3, v5}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 1561
    :cond_59
    invoke-direct {p0, v1, p4}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1563
    if-ne p2, v4, :cond_2c

    .line 1564
    new-instance v2, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v2, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_2c

    .line 1568
    :cond_66
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2c

    .line 1571
    :cond_6a
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2c
.end method

.method public final setManageAlbumMode(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 1837
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/Model;->mManageAlbumMode:Z

    .line 1838
    return-void
.end method

.method public setOwnerThread()V
    .registers 2

    .prologue
    .line 1875
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOwner:Ljava/lang/Thread;

    .line 1876
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 8
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 1076
    if-eqz p1, :cond_8

    .line 1077
    iget v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileRequests:I

    .line 1079
    :cond_8
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/Model;->getAlbumPile(I)Lcom/google/android/music/albumwall/Model$RequestablePile;

    move-result-object v0

    .line 1080
    .local v0, albumPile:Lcom/google/android/music/albumwall/Model$RequestablePile;
    if-nez v0, :cond_27

    .line 1081
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

    .line 1090
    :goto_26
    return-void

    .line 1083
    :cond_27
    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v1, :cond_33

    .line 1084
    :cond_2d
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setReceived()V

    .line 1085
    iput-object p3, v0, Lcom/google/android/music/albumwall/Model$RequestablePile;->mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    goto :goto_26

    .line 1087
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestablePile;->setRequestFailed()V

    goto :goto_26
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 1026
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_10

    .line 1027
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableCount;->setReceived()V

    .line 1028
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mPileCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    iput p2, v0, Lcom/google/android/music/albumwall/Model$RequestableCount;->mCount:I

    .line 1032
    :goto_f
    return-void

    .line 1030
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
    .line 1371
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mOutstandingPileTextureRequests:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    .line 1372
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mClientPileToModelPileMap:Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/Model$ClientPileToModelPileMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/albumwall/Model$ModelPile;

    .line 1373
    .local v7, p:Lcom/google/android/music/albumwall/Model$ModelPile;
    if-nez v7, :cond_3d

    .line 1374
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

    .line 1396
    :cond_2a
    :goto_2a
    if-eqz p5, :cond_3c

    .line 1397
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

    .line 1403
    :cond_3c
    return-void

    .line 1376
    :cond_3d
    invoke-virtual {v7, p4}, Lcom/google/android/music/albumwall/Model$ModelPile;->getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v6, v0, p2

    .line 1377
    .local v6, label:Lcom/google/android/music/albumwall/Model$RequestableTexture;
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model;->mEpoch:Lcom/google/android/music/albumwall/Model$Epoch;

    if-ne p1, v0, :cond_60

    .line 1378
    if-eqz p5, :cond_5c

    .line 1379
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 1380
    invoke-direct {p0, v6, p5}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 1382
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2a

    .line 1383
    new-instance v0, Lcom/google/android/music/albumwall/Model$Focusable;

    invoke-direct {v0, p3}, Lcom/google/android/music/albumwall/Model$Focusable;-><init>(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model;->mMostRecentOverlayTextureFocusable:Lcom/google/android/music/albumwall/Model$Focusable;

    goto :goto_2a

    .line 1386
    :cond_5c
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a

    .line 1389
    :cond_60
    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setRequestFailed()V

    goto :goto_2a
.end method

.method public updateLoadingTexture()V
    .registers 3

    .prologue
    .line 911
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 912
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->release()V

    .line 914
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getAlbumLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c

    .line 916
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 917
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mAlbumLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 919
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelLoading()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_2e

    .line 921
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/Model;->updateTexture(Lcom/google/android/music/albumwall/Model$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 922
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model;->mLabelLoadingTexture:Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->setReceived()V

    .line 924
    :cond_2e
    return-void
.end method

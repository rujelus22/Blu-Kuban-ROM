.class public Lcom/google/android/music/albumwall/AlbumWallRenderer;
.super Lcom/google/android/opengl/glview/GLViewRenderer;
.source "AlbumWallRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    }
.end annotation


# static fields
.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

.field private mAnimateToPosition:Z

.field private mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

.field private mBottomBarHeight:F

.field protected mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field protected mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

.field private mFocusOnFirstExpandedItem:Z

.field private mFocusOnPileIndex:I

.field private mFullLayoutRequested:Z

.field protected mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field protected mModel:Lcom/google/android/music/albumwall/Model;

.field private mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mQueuedDrawFrameRunnables:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mShowScrollBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .registers 7
    .parameter "context"
    .parameter "preferences"
    .parameter "albumWallView"
    .parameter "config"

    .prologue
    .line 95
    invoke-direct {p0, p1, p3}, Lcom/google/android/opengl/glview/GLViewRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/glview/GLSurfaceView;)V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 88
    new-instance v0, Lcom/google/android/music/albumwall/AlbumPoseCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBottomBarHeight:F

    .line 96
    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 97
    new-instance v0, Lcom/google/android/music/albumwall/Model;

    invoke-direct {v0, p4, p2}, Lcom/google/android/music/albumwall/Model;-><init>(Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 98
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/opengl/glview/TexturedQuad;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/opengl/glview/TopLevelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/music/albumwall/AlbumWallRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    return-object v0
.end method

.method private createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
    .registers 25
    .parameter "id"
    .parameter "isExpanded"
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "defaultPose"

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v4

    .line 406
    .local v4, isExpandLabelExpandSize:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandedLabelVertical()Z

    move-result v6

    .line 407
    .local v6, isExpandedLabelVertical:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 408
    .local v10, isHorizontalScrolling:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v2

    if-nez v2, :cond_6a

    const/16 v18, 0x1

    .line 409
    .local v18, isTopLevel:Z
    :goto_24
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move/from16 v5, p2

    move-object/from16 v7, p5

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZZLcom/google/android/opengl/glview/TexturedQuad$Pose;I)V

    .line 598
    .local v1, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    new-instance v7, Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingWidth()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getMinorAxisLength(Z)F

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v17, v0

    move/from16 v8, p1

    move-object v9, v1

    invoke-direct/range {v7 .. v17}, Lcom/google/android/music/albumwall/AlbumWallGridView;-><init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V

    return-object v7

    .line 408
    .end local v1           #adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    .end local v18           #isTopLevel:Z
    :cond_6a
    const/16 v18, 0x0

    goto :goto_24
.end method

.method private createArtistList(III)Lcom/google/android/opengl/glview/GLView;
    .registers 22
    .parameter "id"
    .parameter "baseIndex"
    .parameter "maxIndex"

    .prologue
    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v6

    .line 699
    .local v6, isExpandLabelExpandSize:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusterExpandedLabelVertical()Z

    move-result v5

    .line 700
    .local v5, isClusterExpandedLabelVertical:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 701
    .local v10, isHorizontalScrolling:Z
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;IIZZ)V

    .line 906
    .local v1, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    new-instance v7, Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterGridPaddingWidth()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterGridPaddingHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getMinorAxisLength(Z)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v17, v0

    move/from16 v8, p1

    move-object v9, v1

    move/from16 v16, p2

    invoke-direct/range {v7 .. v17}, Lcom/google/android/music/albumwall/AlbumWallGridView;-><init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V

    return-object v7
.end method

.method private createBackgroundView()Lcom/google/android/music/albumwall/BackgroundView;
    .registers 5

    .prologue
    const v3, 0x3dcccccd

    .line 185
    new-instance v0, Lcom/google/android/music/albumwall/BackgroundView;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getDefaultBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/BackgroundView;-><init>(Lcom/google/android/music/albumwall/Model;Landroid/graphics/Bitmap;)V

    .line 187
    .local v0, backgroundView:Lcom/google/android/music/albumwall/BackgroundView;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getUseAlbumArtBackgrounds()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/BackgroundView;->setUseAlbumArt(Z)V

    .line 188
    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/music/albumwall/BackgroundView;->setColor(FFFF)V

    .line 189
    return-object v0
.end method

.method private createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .registers 16
    .parameter "pile"
    .parameter "expandedPileIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 920
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBetweenGridPadding()F

    move-result v3

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v1

    .line 922
    .local v1, list:Lcom/google/android/opengl/glview/GLLinearLayout;
    const/4 v10, 0x0

    .line 923
    .local v10, defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v3, p1, v2, v2}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v11

    .line 924
    .local v11, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/Model;->isManageAlbumMode()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 927
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v5, 0x2

    invoke-virtual {v3, v11, v5}, Lcom/google/android/music/albumwall/Model;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 930
    :cond_29
    if-eqz v11, :cond_31

    .line 931
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v3, v11}, Lcom/google/android/music/albumwall/AlbumPoseCache;->getPose(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    move-result-object v10

    .line 935
    :cond_31
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;

    invoke-direct {p0, v2, v2, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v12

    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedBanner(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    const/16 v6, 0xa

    move-object v5, p0

    move v7, v4

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    const/4 v7, -0x1

    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v6

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;-><init>(Lcom/google/android/opengl/glview/GLLinearLayout;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V

    .line 942
    .local v0, group:Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->setId(I)V

    .line 943
    return-object v0
.end method

.method private createListFromModel()V
    .registers 21

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 343
    .local v13, focusOnFirstExpandedItem:Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 344
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 345
    .local v14, focusOnPileIndex:I
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 346
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 347
    .local v7, animate:Z
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    if-nez v1, :cond_28

    .line 350
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 400
    :cond_27
    :goto_27
    return-void

    .line 353
    :cond_28
    const/4 v10, 0x0

    .line 354
    .local v10, expandedArtistList:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v11

    .line 356
    .local v11, expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v12

    .line 357
    .local v12, expandedPileIndex:I
    if-eqz v11, :cond_c8

    const/4 v1, -0x1

    if-eq v12, v1, :cond_c8

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v10

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 373
    .end local v11           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v12           #expandedPileIndex:I
    :goto_53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v18

    .line 374
    .local v18, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v19

    .line 375
    .local v19, transformer:Lcom/google/android/opengl/glview/Transformer;
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v17

    .line 377
    .local v17, ourList:Lcom/google/android/opengl/glview/GLView;
    if-eqz v17, :cond_a1

    if-eqz v10, :cond_a1

    .line 378
    const/16 v1, 0x9

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    .line 379
    .local v8, banner:Lcom/google/android/opengl/glview/GLView;
    if-eqz v8, :cond_93

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v15

    .line 381
    .local v15, horizontal:Z
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/Transformer;->visibleMarginOrigin(Z)F

    move-result v16

    .line 382
    .local v16, margin:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 384
    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v1

    neg-float v1, v1

    add-float v1, v1, v16

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FFZ)V

    .line 389
    .end local v15           #horizontal:Z
    .end local v16           #margin:F
    :cond_93
    :goto_93
    if-eqz v13, :cond_a1

    .line 390
    const/16 v1, 0xa

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v9

    check-cast v9, Lcom/google/android/opengl/glview/GridView;

    .line 391
    .local v9, content:Lcom/google/android/opengl/glview/GridView;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/google/android/opengl/glview/GridView;->focusOnChild(I)V

    .line 394
    .end local v8           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v9           #content:Lcom/google/android/opengl/glview/GridView;
    :cond_a1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    const/4 v1, -0x1

    if-eq v14, v1, :cond_27

    .line 396
    const/16 v1, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v9

    check-cast v9, Lcom/google/android/opengl/glview/GridView;

    .line 397
    .restart local v9       #content:Lcom/google/android/opengl/glview/GridView;
    invoke-virtual {v9, v14}, Lcom/google/android/opengl/glview/GridView;->focusOnChild(I)V

    goto/16 :goto_27

    .line 361
    .end local v9           #content:Lcom/google/android/opengl/glview/GridView;
    .end local v17           #ourList:Lcom/google/android/opengl/glview/GLView;
    .end local v18           #root:Lcom/google/android/opengl/glview/TopLevelView;
    .end local v19           #transformer:Lcom/google/android/opengl/glview/Transformer;
    .restart local v11       #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v12       #expandedPileIndex:I
    :cond_c8
    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_53

    .line 365
    .end local v11           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v12           #expandedPileIndex:I
    :cond_d9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 366
    .local v4, pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-nez v4, :cond_ec

    .line 367
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_53

    .line 369
    :cond_ec
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_53

    .line 386
    .end local v4           #pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v8       #banner:Lcom/google/android/opengl/glview/GLView;
    .restart local v15       #horizontal:Z
    .restart local v16       #margin:F
    .restart local v17       #ourList:Lcom/google/android/opengl/glview/GLView;
    .restart local v18       #root:Lcom/google/android/opengl/glview/TopLevelView;
    .restart local v19       #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_fd
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v2

    neg-float v2, v2

    add-float v2, v2, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FFZ)V

    goto :goto_93
.end method

.method private createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;
    .registers 8
    .parameter "item"

    .prologue
    .line 1353
    new-instance v0, Lcom/google/android/music/albumwall/MarkView;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkHeight()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/MarkView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1355
    .local v0, mark:Lcom/google/android/music/albumwall/MarkView;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkOffsetX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkOffsetY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MarkView;->setOffset(FFF)V

    .line 1356
    return-object v0
.end method

.method private focusDirToExitMask(I)I
    .registers 3
    .parameter "focusDir"

    .prologue
    .line 1537
    sparse-switch p1, :sswitch_data_14

    .line 1551
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1539
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 1541
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 1543
    :sswitch_a
    const/4 v0, 0x1

    goto :goto_4

    .line 1545
    :sswitch_c
    const/4 v0, 0x4

    goto :goto_4

    .line 1547
    :sswitch_e
    const/16 v0, 0x10

    goto :goto_4

    .line 1549
    :sswitch_11
    const/16 v0, 0x20

    goto :goto_4

    .line 1537
    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_e
        0x11 -> :sswitch_5
        0x21 -> :sswitch_a
        0x42 -> :sswitch_7
        0x82 -> :sswitch_c
    .end sparse-switch
.end method

.method private genCloseButton()Lcom/google/android/opengl/glview/GLView;
    .registers 3

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCloseButtonResourceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v0

    .line 1092
    .local v0, button:Lcom/google/android/opengl/glview/DrawableView;
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/DrawableView;->setFlags(I)V

    .line 1093
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/DrawableView;->setId(I)V

    .line 1094
    return-object v0
.end method

.method private getMinorAxisLength(Z)F
    .registers 4
    .parameter "isHorizontalScrolling"

    .prologue
    .line 914
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v1

    sub-float/2addr v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasWidth()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLeftMargin()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_d
.end method

.method private installList(Lcom/google/android/opengl/glview/GLView;)V
    .registers 13
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v3

    .line 291
    .local v3, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v3}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    .line 293
    .local v6, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {v6, v9}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 294
    .local v2, oldChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v2, :cond_16

    .line 295
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 296
    invoke-virtual {v6, v2}, Lcom/google/android/opengl/glview/Transformer;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 300
    :cond_16
    if-eqz p1, :cond_5a

    .line 302
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v5

    .line 303
    .local v5, topMargin:F
    cmpl-float v8, v5, v10

    if-lez v8, :cond_32

    .line 304
    invoke-static {v9, v10, v9, v9}, Lcom/google/android/opengl/glview/GLLinearLayout;->createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v7

    .line 305
    .local v7, vbox:Lcom/google/android/opengl/glview/GLView;
    new-instance v4, Lcom/google/android/opengl/glview/Spacer;

    invoke-direct {v4, v10, v5}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    .line 306
    .local v4, spacer:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, v4}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 307
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 308
    move-object p1, v7

    .line 310
    .end local v4           #spacer:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #vbox:Lcom/google/android/opengl/glview/GLView;
    :cond_32
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLeftMargin()F

    move-result v1

    .line 311
    .local v1, leftMargin:F
    cmpl-float v8, v1, v10

    if-lez v8, :cond_4c

    .line 312
    invoke-static {v9, v10, v9, v9}, Lcom/google/android/opengl/glview/GLLinearLayout;->createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    .line 313
    .local v0, hbox:Lcom/google/android/opengl/glview/GLView;
    new-instance v4, Lcom/google/android/opengl/glview/Spacer;

    invoke-direct {v4, v1, v10}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    .line 314
    .restart local v4       #spacer:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 316
    move-object p1, v0

    .line 320
    .end local v0           #hbox:Lcom/google/android/opengl/glview/GLView;
    .end local v4           #spacer:Lcom/google/android/opengl/glview/GLView;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v9

    invoke-virtual {p1, v10, v10, v8, v9}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 321
    invoke-virtual {v6, p1}, Lcom/google/android/opengl/glview/Transformer;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 324
    .end local v1           #leftMargin:F
    .end local v5           #topMargin:F
    :cond_5a
    return-void
.end method

.method private isListEmpty()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 328
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v1, :cond_14

    .line 329
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v2

    .line 330
    .local v2, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v2, :cond_14

    .line 331
    invoke-virtual {v2, v3}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 332
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_14

    .line 337
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v2           #transformer:Lcom/google/android/opengl/glview/Transformer;
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x1

    goto :goto_13
.end method

.method private longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "item"
    .parameter "view"

    .prologue
    .line 617
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 619
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 625
    return-void
.end method

.method private longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 656
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 657
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$8;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 663
    return-void
.end method

.method private pinExpandedBanner()V
    .registers 7

    .prologue
    .line 261
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 262
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 263
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v3

    .line 264
    .local v3, transformer:Lcom/google/android/opengl/glview/Transformer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 265
    .local v2, topContent:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_27

    move-object v0, v2

    .line 266
    check-cast v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;

    .line 267
    .local v0, bannerGroup:Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->pinBanner(Lcom/google/android/opengl/glview/Transformer;)V

    .line 270
    .end local v0           #bannerGroup:Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    .end local v1           #root:Lcom/google/android/opengl/glview/TopLevelView;
    .end local v2           #topContent:Lcom/google/android/opengl/glview/GLView;
    .end local v3           #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_27
    return-void
.end method

.method private processQueuedRunnables()V
    .registers 4

    .prologue
    .line 1498
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1499
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1500
    .local v0, reply:Ljava/lang/Runnable;
    monitor-exit v2

    .line 1501
    if-nez v0, :cond_12

    .line 1502
    return-void

    .line 1500
    .end local v0           #reply:Ljava/lang/Runnable;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 1504
    .restart local v0       #reply:Ljava/lang/Runnable;
    :cond_12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 612
    return-void
.end method

.method private selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "item"
    .parameter "view"

    .prologue
    .line 630
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 632
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 638
    return-void
.end method

.method private selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "item"
    .parameter "view"

    .prologue
    .line 643
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 645
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 651
    return-void
.end method

.method private selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 668
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 670
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 676
    return-void
.end method

.method private selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 681
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 683
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$10;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 689
    return-void
.end method

.method private setOrganizedAlbumOffset(Lcom/google/android/music/albumwall/ItemView;II)V
    .registers 11
    .parameter "album"
    .parameter "idInPile"
    .parameter "maxItemInPile"

    .prologue
    .line 1214
    if-nez p2, :cond_3

    .line 1223
    :goto_2
    return-void

    .line 1217
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageWidth()F

    move-result v6

    sub-float v1, v5, v6

    .line 1218
    .local v1, diff:F
    int-to-float v5, p2

    add-int/lit8 v6, p3, -0x1

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 1219
    .local v0, deltaPos:F
    mul-float v2, v1, v0

    .line 1220
    .local v2, x:F
    neg-float v5, v1

    mul-float v3, v5, v0

    .line 1221
    .local v3, y:F
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterStackSpacing()F

    move-result v5

    mul-float v4, v0, v5

    .line 1222
    .local v4, z:F
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/music/albumwall/ItemView;->setOffset(FFF)V

    goto :goto_2
.end method

.method private setRandomAlbumOffset(Lcom/google/android/music/albumwall/ItemView;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x3f00

    .line 1271
    if-nez p2, :cond_6

    .line 1293
    :goto_5
    return-void

    .line 1276
    :cond_6
    sget-object v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, p2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 1279
    const/high16 v0, 0x41f0

    sget-object v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    .line 1280
    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/ItemView;->setRotationZ(F)V

    .line 1282
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_4a

    move v0, v1

    .line 1283
    :goto_28
    const/high16 v2, 0x41a8

    int-to-float v3, p2

    mul-float/2addr v2, v3

    sget-object v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float v3, v4, v3

    const/high16 v4, 0x4100

    mul-float/2addr v3, v4

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1284
    const/4 v2, 0x0

    .line 1285
    if-ne v0, v1, :cond_4c

    move v0, v2

    .line 1290
    :goto_3e
    int-to-float v1, p2

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterStackSpacing()F

    move-result v2

    mul-float/2addr v1, v2

    .line 1292
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/music/albumwall/ItemView;->setOffset(FFF)V

    goto :goto_5

    .line 1282
    :cond_4a
    const/4 v0, -0x1

    goto :goto_28

    .line 1288
    :cond_4c
    const/high16 v0, -0x3f40

    sget-object v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x4140

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_3e
.end method

.method private setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V
    .registers 19
    .parameter "item"
    .parameter "isExpanded"

    .prologue
    .line 1226
    if-nez p2, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1227
    :cond_c
    const/high16 v15, 0x420c

    .line 1228
    .local v15, transitionHeightOrWidth:F
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/TexturedQuad;->setIsRezzing(Z)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v13

    .line 1231
    .local v13, sideBarWidth:F
    add-float v2, v13, v15

    .line 1232
    .local v2, xMix0:F
    move v3, v13

    .line 1233
    .local v3, xMix1:F
    move v4, v13

    .line 1234
    .local v4, xFade0:F
    const/high16 v1, 0x4000

    div-float v5, v13, v1

    .line 1235
    .local v5, xFade1:F
    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/opengl/glview/TexturedQuad;->setMixAndFadeLimits(FFFFZ)V

    .line 1257
    .end local v2           #xMix0:F
    .end local v3           #xMix1:F
    .end local v4           #xFade0:F
    .end local v5           #xFade1:F
    .end local v13           #sideBarWidth:F
    .end local v15           #transitionHeightOrWidth:F
    :cond_34
    :goto_34
    return-void

    .line 1237
    .restart local v15       #transitionHeightOrWidth:F
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v14

    .line 1238
    .local v14, topBarHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v1

    add-float v6, v14, v15

    sub-float v7, v1, v6

    .line 1239
    .local v7, yMix0:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v1

    sub-float v8, v1, v14

    .line 1240
    .local v8, yMix1:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v1

    sub-float v9, v1, v14

    .line 1241
    .local v9, yFade0:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v1

    const/high16 v6, 0x4000

    div-float v6, v14, v6

    sub-float v10, v1, v6

    .line 1242
    .local v10, yFade1:F
    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/opengl/glview/TexturedQuad;->setMixAndFadeLimits(FFFFZ)V

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getBottomBarHeight()F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_94

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v1

    if-nez v1, :cond_94

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v1

    if-nez v1, :cond_94

    .line 1246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBottomMargin()F

    move-result v12

    .line 1247
    .local v12, bottomBarHeight:F
    add-float v7, v12, v15

    .line 1248
    move v8, v12

    .line 1249
    move v9, v12

    .line 1250
    const/high16 v1, 0x4000

    div-float v10, v12, v1

    .line 1251
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/google/android/opengl/glview/TexturedQuad;->setSecondMixAndFadeLimits(FFFF)V

    goto :goto_34

    .line 1253
    .end local v12           #bottomBarHeight:F
    :cond_94
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->disableSecondMixAndFadeLimits()V

    goto :goto_34
.end method


# virtual methods
.method public collapseExpandedPile(Z)V
    .registers 6
    .parameter "fromKeyboard"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v0

    .line 274
    .local v0, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v0, :cond_2c

    .line 275
    const/4 v0, 0x0

    .line 276
    if-eqz p1, :cond_13

    .line 277
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 280
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 287
    :cond_2c
    return-void
.end method

.method protected createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;
    .registers 5
    .parameter "resourceId"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 195
    .local v1, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v1
.end method

.method protected createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;
    .registers 10
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 200
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V

    .line 201
    .local v0, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v0
.end method

.method protected drawFrame()V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setFrameTime(J)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->processQueuedRunnables()V

    .line 179
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->beginFrame()V

    .line 180
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->drawFrame()V

    .line 181
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->endFrame()V

    .line 182
    return-void
.end method

.method protected genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;Z)Lcom/google/android/opengl/glview/GLView;
    .registers 23
    .parameter "horizontal"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "labelMargin"
    .parameter "item"
    .parameter "defaultPose"
    .parameter "isExpanded"

    .prologue
    .line 1305
    const/4 v14, 0x1

    .line 1306
    .local v14, wantLabel:Z
    const/high16 v9, 0x3f80

    .line 1308
    .local v9, alpha:F
    new-instance v1, Lcom/google/android/music/albumwall/ItemView;

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1309
    .local v1, album:Lcom/google/android/music/albumwall/ItemView;
    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1310
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    move-result v12

    .line 1311
    .local v12, restored:Z
    if-nez v12, :cond_38

    if-eqz p6, :cond_38

    .line 1313
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v3

    move-object/from16 v0, p6

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/music/albumwall/ItemView;->setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V

    .line 1314
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object/from16 v0, p6

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/albumwall/AlbumPoseCache;->setPose(Lcom/google/android/music/albumwall/ItemView;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)V

    .line 1316
    :cond_38
    const/16 v3, 0x320

    invoke-virtual {v1, v3}, Lcom/google/android/music/albumwall/ItemView;->setFlags(I)V

    .line 1319
    if-eqz v14, :cond_9e

    .line 1320
    new-instance v13, Lcom/google/android/opengl/glview/Stack;

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-direct {v13, v3, v4}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 1321
    .local v13, stack:Lcom/google/android/opengl/glview/Stack;
    new-instance v2, Lcom/google/android/music/albumwall/ItemLabel;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/ItemLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1323
    .local v2, label:Lcom/google/android/music/albumwall/ItemLabel;
    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/ItemLabel;->setFlags(I)V

    .line 1325
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v4, p1

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v10

    .line 1326
    .local v10, list:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1328
    invoke-virtual {v2, v9}, Lcom/google/android/music/albumwall/ItemLabel;->setAlpha(F)V

    .line 1329
    move/from16 v0, p7

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1330
    invoke-virtual {v10, v2}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1331
    invoke-virtual {v13, v10}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1332
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1336
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v11

    .line 1337
    .local v11, mark:Lcom/google/android/music/albumwall/MarkView;
    const/16 v3, 0x122

    invoke-virtual {v11, v3}, Lcom/google/android/music/albumwall/MarkView;->setFlags(I)V

    .line 1339
    invoke-virtual {v11, v9}, Lcom/google/android/music/albumwall/MarkView;->setAlpha(F)V

    .line 1340
    move/from16 v0, p7

    invoke-direct {p0, v11, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1341
    invoke-virtual {v13, v11}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1345
    .end local v2           #label:Lcom/google/android/music/albumwall/ItemLabel;
    .end local v10           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v11           #mark:Lcom/google/android/music/albumwall/MarkView;
    .end local v13           #stack:Lcom/google/android/opengl/glview/Stack;
    :cond_9d
    :goto_9d
    return-object v13

    :cond_9e
    move-object v13, v1

    goto :goto_9d
.end method

.method protected genAlbumGroup(ZFLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .registers 32
    .parameter "horizontal"
    .parameter "labelMargin"
    .parameter "pile"
    .parameter "wantLabel"
    .parameter "pileIndex"

    .prologue
    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPileView(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v23

    .line 1143
    .local v23, pileView:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v7}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxClosedPileCount()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1144
    .local v22, numAlbums:I
    if-nez v22, :cond_42

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v24

    .line 1149
    .local v24, placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1199
    .end local v24           #placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :goto_41
    return-object v24

    .line 1152
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v16

    .line 1154
    .local v16, frameTime:J
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_b3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v5

    .line 1156
    .local v5, imageW:F
    :goto_57
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v6

    .line 1160
    .local v6, imageH:F
    :goto_64
    add-int/lit8 v18, v22, -0x1

    .local v18, i:I
    :goto_66
    if-ltz v18, :cond_e1

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v4, v0, v7, v1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v8

    .line 1162
    .local v8, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v8, :cond_cf

    .line 1163
    new-instance v3, Lcom/google/android/music/albumwall/ItemView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1164
    .local v3, album:Lcom/google/android/music/albumwall/ItemView;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v3, v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v4

    if-eqz v4, :cond_c5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v4

    if-nez v4, :cond_c5

    .line 1167
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRandomAlbumOffset(Lcom/google/android/music/albumwall/ItemView;I)V

    .line 1171
    :goto_ab
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1160
    .end local v3           #album:Lcom/google/android/music/albumwall/ItemView;
    :goto_b0
    add-int/lit8 v18, v18, -0x1

    goto :goto_66

    .line 1154
    .end local v5           #imageW:F
    .end local v6           #imageH:F
    .end local v8           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v18           #i:I
    :cond_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageWidth()F

    move-result v5

    goto :goto_57

    .line 1156
    .restart local v5       #imageW:F
    :cond_bc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageHeight()F

    move-result v6

    goto :goto_64

    .line 1169
    .restart local v3       #album:Lcom/google/android/music/albumwall/ItemView;
    .restart local v6       #imageH:F
    .restart local v8       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .restart local v18       #i:I
    :cond_c5
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setOrganizedAlbumOffset(Lcom/google/android/music/albumwall/ItemView;II)V

    goto :goto_ab

    .line 1174
    .end local v3           #album:Lcom/google/android/music/albumwall/ItemView;
    :cond_cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v15

    .line 1175
    .local v15, defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1176
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_b0

    .line 1180
    .end local v8           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v15           #defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :cond_e1
    if-eqz p4, :cond_146

    .line 1181
    new-instance v25, Lcom/google/android/opengl/glview/Stack;

    const/4 v4, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v7}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 1183
    .local v25, stack:Lcom/google/android/opengl/glview/Stack;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v20

    .line 1184
    .local v20, list:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1185
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v19

    .line 1187
    .local v19, label:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1188
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v4

    if-eqz v4, :cond_142

    .line 1190
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v21

    .line 1191
    .local v21, mark:Lcom/google/android/music/albumwall/MarkView;
    const/16 v4, 0x122

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/MarkView;->setFlags(I)V

    .line 1193
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1194
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .end local v21           #mark:Lcom/google/android/music/albumwall/MarkView;
    :cond_142
    move-object/from16 v24, v25

    .line 1197
    goto/16 :goto_41

    .end local v19           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v20           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v25           #stack:Lcom/google/android/opengl/glview/Stack;
    :cond_146
    move-object/from16 v24, v23

    .line 1199
    goto/16 :goto_41
.end method

.method protected genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .registers 12
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v2

    .line 1117
    .local v2, w:F
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v3

    .line 1118
    .local v3, h:F
    if-eqz p2, :cond_22

    .line 1119
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1120
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelWidth()F

    move-result v3

    .line 1121
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelHeight()F

    move-result v2

    .line 1127
    :cond_22
    :goto_22
    new-instance v0, Lcom/google/android/music/albumwall/PileLabel;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/albumwall/PileLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1130
    .local v0, label:Lcom/google/android/music/albumwall/PileLabel;
    if-nez p2, :cond_46

    .line 1131
    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    .line 1135
    :goto_34
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1137
    return-object v0

    .line 1123
    .end local v0           #label:Lcom/google/android/music/albumwall/PileLabel;
    :cond_39
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelWidth()F

    move-result v2

    .line 1124
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelHeight()F

    move-result v3

    goto :goto_22

    .line 1133
    .restart local v0       #label:Lcom/google/android/music/albumwall/PileLabel;
    :cond_46
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    goto :goto_34
.end method

.method protected genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;
    .registers 7
    .parameter "horizontal"
    .parameter "id"
    .parameter "gap"
    .parameter "center"
    .parameter "expansion"

    .prologue
    const/4 v0, 0x0

    .line 1360
    if-eqz p1, :cond_c

    if-eqz p4, :cond_7

    const/16 v0, 0x8

    :cond_7
    invoke-static {p2, p3, v0, p5}, Lcom/google/android/opengl/glview/GLLinearLayout;->createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    if-eqz p4, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-static {p2, p3, v0, p5}, Lcom/google/android/opengl/glview/GLLinearLayout;->createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    goto :goto_b
.end method

.method protected genExpandedBanner(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .registers 28
    .parameter "pile"
    .parameter "expandedPileIndex"

    .prologue
    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getStyle()I

    move-result v18

    .line 1031
    .local v18, elementStyle:I
    packed-switch v18, :pswitch_data_136

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 1069
    .local v10, hScroll:Z
    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v23

    .line 1071
    .local v23, list:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v21

    .line 1072
    .local v21, label:Lcom/google/android/opengl/glview/GLView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genCloseButton()Lcom/google/android/opengl/glview/GLView;

    move-result-object v16

    .line 1073
    .local v16, button:Lcom/google/android/opengl/glview/GLView;
    const/4 v8, 0x4

    .line 1074
    .local v8, labelAndButtonExpand:I
    if-nez v10, :cond_12f

    const/4 v4, 0x1

    :goto_31
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v22

    .line 1075
    .local v22, labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v10, :cond_132

    const/4 v3, 0x1

    :goto_3d
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 1077
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1078
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1080
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1082
    const/16 v3, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 1087
    :goto_6b
    return-object v23

    .line 1034
    .end local v8           #labelAndButtonExpand:I
    .end local v10           #hScroll:Z
    .end local v16           #button:Lcom/google/android/opengl/glview/GLView;
    .end local v21           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v23           #list:Lcom/google/android/opengl/glview/GLView;
    :pswitch_6c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 1035
    .restart local v10       #hScroll:Z
    new-instance v23, Lcom/google/android/opengl/glview/Stack;

    const/16 v3, 0x8

    const/16 v4, 0x9

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 1037
    .restart local v23       #list:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_13c

    .line 1040
    .local v17, color:[F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v21

    .line 1041
    .restart local v21       #label:Lcom/google/android/opengl/glview/GLView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genCloseButton()Lcom/google/android/opengl/glview/GLView;

    move-result-object v16

    .line 1042
    .restart local v16       #button:Lcom/google/android/opengl/glview/GLView;
    const/4 v8, 0x4

    .line 1043
    .restart local v8       #labelAndButtonExpand:I
    if-nez v10, :cond_10a

    const/4 v4, 0x1

    :goto_9a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v22

    .line 1044
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v10, :cond_10c

    const/4 v3, 0x1

    :goto_a6
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v19

    .line 1046
    .local v19, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v10, :cond_10e

    .line 1047
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 1048
    .local v24, w:F
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v4

    sub-float v20, v3, v4

    .line 1054
    .local v20, h:F
    :goto_d6
    new-instance v15, Lcom/google/android/opengl/glview/FlatColorView;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v3, v0}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 1055
    .local v15, banner:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 1057
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1058
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1060
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1061
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1062
    const/16 v3, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    goto/16 :goto_6b

    .line 1043
    .end local v15           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v19           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v20           #h:F
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v24           #w:F
    :cond_10a
    const/4 v4, 0x0

    goto :goto_9a

    .line 1044
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_10c
    const/4 v3, 0x0

    goto :goto_a6

    .line 1050
    .restart local v19       #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_10e
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/glview/GLSurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLeftMargin()F

    move-result v4

    sub-float v24, v3, v4

    .line 1051
    .restart local v24       #w:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v20

    .restart local v20       #h:F
    goto :goto_d6

    .line 1074
    .end local v17           #color:[F
    .end local v19           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v20           #h:F
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v24           #w:F
    :cond_12f
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 1075
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_132
    const/4 v3, 0x0

    goto/16 :goto_3d

    .line 1031
    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_6c
    .end packed-switch

    .line 1037
    :array_13c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
    .end array-data
.end method

.method protected genExpandedSeparator(I)Lcom/google/android/opengl/glview/GLView;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 1098
    const/4 v5, 0x4

    new-array v0, v5, [F

    fill-array-data v0, :array_4e

    .line 1099
    .local v0, color:[F
    const/4 v4, 0x0

    .line 1100
    .local v4, w:F
    const/4 v2, 0x0

    .line 1101
    .local v2, h:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v1

    .line 1102
    .local v1, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1103
    const/high16 v4, 0x3fc0

    .line 1104
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v6

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v6

    sub-float v2, v5, v6

    .line 1110
    :goto_2e
    new-instance v3, Lcom/google/android/opengl/glview/FlatColorView;

    invoke-direct {v3, p1, v0}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 1111
    .local v3, separator:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, v8, v8, v4, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 1112
    return-object v3

    .line 1106
    .end local v3           #separator:Lcom/google/android/opengl/glview/GLView;
    :cond_37
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLeftMargin()F

    move-result v6

    sub-float v4, v5, v6

    .line 1107
    const/high16 v2, 0x3fc0

    goto :goto_2e

    .line 1098
    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method protected genPileView(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .registers 10
    .parameter "pile"
    .parameter "pileIndex"

    .prologue
    .line 1366
    new-instance v0, Lcom/google/android/music/albumwall/PileView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v4

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v5

    const/16 v6, 0x10

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/PileView;-><init>(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;IFFI)V

    .line 1369
    .local v0, pileView:Lcom/google/android/opengl/glview/GLView;
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 1372
    return-object v0
.end method

.method protected genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1296
    new-instance v5, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct {v5}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 1297
    .local v5, item:Lcom/google/android/music/albumwall/MusicItem;
    new-instance v0, Lcom/google/android/music/albumwall/PlaceHolderItem;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/PlaceHolderItem;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1298
    .local v0, defaultView:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PlaceHolderItem;->setFlags(I)V

    .line 1300
    return-object v0
.end method

.method public getAlbumWallConfig()Lcom/google/android/music/albumwall/AlbumWallConfig;
    .registers 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    return-object v0
.end method

.method public declared-synchronized getBottomBarHeight()F
    .registers 2

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBottomBarHeight:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .registers 3

    .prologue
    .line 1404
    const/4 v1, 0x0

    .line 1405
    .local v1, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    .line 1406
    .local v0, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v0, :cond_b

    .line 1407
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v1

    .line 1410
    :cond_b
    return-object v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method public invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 4
    .parameter "item"
    .parameter "type"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 1510
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1511
    return-void
.end method

.method public invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1387
    return-void
.end method

.method public invalidateTexture(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateTexture(I)V

    .line 1515
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1516
    return-void
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 213
    packed-switch p1, :pswitch_data_54

    .line 253
    :cond_5
    :goto_5
    :pswitch_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLViewRenderer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_9
    return v4

    .line 215
    :pswitch_a
    const/4 v5, 0x3

    if-eq p2, v5, :cond_14

    const/4 v5, 0x6

    if-eq p2, v5, :cond_14

    const/16 v5, 0x8

    if-ne p2, v5, :cond_5

    .line 218
    :cond_14
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p3, v5, :cond_19

    move v1, v4

    .line 219
    .local v1, fromDpad:Z
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->collapseExpandedPile(Z)V

    goto :goto_9

    .line 224
    .end local v1           #fromDpad:Z
    :pswitch_1d
    instance-of v5, p3, Lcom/google/android/music/albumwall/PileView;

    if-eqz v5, :cond_5

    move-object v3, p3

    .line 225
    check-cast v3, Lcom/google/android/music/albumwall/PileView;

    .line 226
    .local v3, pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v2

    .line 227
    .local v2, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v6, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;

    invoke-direct {v6, p0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    invoke-virtual {v5, v6, v4}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_9

    .line 237
    .end local v2           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #pileView:Lcom/google/android/music/albumwall/PileView;
    :pswitch_33
    const/4 v5, 0x4

    if-ne p1, v5, :cond_4d

    move v0, v4

    .line 238
    .local v0, entered:Z
    :goto_37
    instance-of v5, p3, Lcom/google/android/music/albumwall/PileView;

    if-eqz v5, :cond_5

    move-object v3, p3

    .line 239
    check-cast v3, Lcom/google/android/music/albumwall/PileView;

    .line 240
    .restart local v3       #pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v2

    .line 241
    .restart local v2       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v6, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;

    invoke-direct {v6, p0, v2, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V

    invoke-virtual {v5, v6, v4}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_9

    .end local v0           #entered:Z
    .end local v2           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #pileView:Lcom/google/android/music/albumwall/PileView;
    :cond_4d
    move v0, v1

    .line 237
    goto :goto_37

    .line 250
    :pswitch_4f
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->pinExpandedBanner()V

    goto :goto_5

    .line 213
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_1d
        :pswitch_33
        :pswitch_33
        :pswitch_4f
    .end packed-switch
.end method

.method protected onLayout()V
    .registers 4

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1478
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 1479
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createListFromModel()V

    .line 1481
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 1482
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->onLayout()V

    .line 1483
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 31
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    invoke-super/range {p0 .. p3}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->setOwnerThread()V

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateAlbumWallConfig(II)V

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setCanvasConfiguration(Ljava/lang/Object;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v19

    .line 111
    .local v19, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createBackgroundView()Lcom/google/android/music/albumwall/BackgroundView;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/TopLevelView;->setBackgroundView(Lcom/google/android/opengl/glview/GLView;)V

    .line 113
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOverScrollX()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    move/from16 v0, p3

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOverScrollY()F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/opengl/glview/TopLevelView;->setMaximumOverScroll(FF)V

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getVisibilityMarginLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getVisibilityMarginTop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getVisibilityMarginRight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getVisibilityMarginBottom()F

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/google/android/opengl/glview/TopLevelView;->setVisibilityMargin(FFFF)V

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarAutoFade()Z

    move-result v13

    .line 120
    .local v13, autoFade:Z
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/google/android/opengl/glview/TopLevelView;->setAutoFade(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollerVisibility(Z)V

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarMode()I

    move-result v14

    .line 124
    .local v14, mode:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getHideThumbIfContentFits()Z

    move-result v12

    .line 125
    .local v12, hideThumbIfContentFits:Z
    packed-switch v14, :pswitch_data_19c

    .line 162
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scrollBarMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :pswitch_c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarThumbId()I

    move-result v22

    .line 130
    .local v22, scrollBarThumbId:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v21

    .line 131
    .local v21, scrollBarThumb:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarTrackId()I

    move-result v24

    .line 132
    .local v24, scrollBarTrackId:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v23

    .line 133
    .local v23, scrollBarTrack:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v20

    .line 134
    .local v20, scrollBarOverlayW:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v25

    .line 135
    .local v25, scrollOverlayH:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayId()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v17

    .line 137
    .local v17, overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v18, padding:Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/glview/DrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 139
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v15, v4, 0x2

    .line 140
    .local v15, offsetX:I
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v16, v4, 0x2

    .line 141
    .local v16, offsetY:I
    new-instance v3, Lcom/google/android/music/albumwall/ThumbOverlay;

    const/4 v4, 0x0

    int-to-float v5, v15

    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v26, 0x3f00

    mul-float v7, v20, v26

    const/high16 v26, 0x3f00

    mul-float v8, v25, v26

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/music/albumwall/ThumbOverlay;-><init>(IFFFFLcom/google/android/music/albumwall/Model;)V

    .line 144
    .local v3, overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    new-instance v7, Lcom/google/android/opengl/glview/Stack;

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-direct {v7, v4, v5}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 145
    .local v7, overlayPile:Lcom/google/android/opengl/glview/Stack;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 146
    invoke-virtual {v7, v3}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v8

    .line 148
    .local v8, horizontal:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollOverlayFollowsThumb()Z

    move-result v9

    .line 149
    .local v9, overlayFollowsThumb:Z
    const/4 v10, 0x0

    .line 150
    .local v10, startMargin:F
    const/4 v11, 0x0

    .line 151
    .local v11, stopMargin:F
    if-nez v8, :cond_16d

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v10

    .line 154
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBottomBarHeight:F

    :cond_16d
    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object/from16 v6, v23

    .line 156
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZFFZ)V

    .line 165
    .end local v3           #overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    .end local v7           #overlayPile:Lcom/google/android/opengl/glview/Stack;
    .end local v8           #horizontal:Z
    .end local v9           #overlayFollowsThumb:Z
    .end local v10           #startMargin:F
    .end local v11           #stopMargin:F
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    .end local v17           #overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    .end local v18           #padding:Landroid/graphics/Rect;
    .end local v20           #scrollBarOverlayW:F
    .end local v21           #scrollBarThumb:Lcom/google/android/opengl/glview/DrawableView;
    .end local v22           #scrollBarThumbId:I
    .end local v23           #scrollBarTrack:Lcom/google/android/opengl/glview/DrawableView;
    .end local v24           #scrollBarTrackId:I
    .end local v25           #scrollOverlayH:F
    :pswitch_176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/Model;->setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->updateLoadingTexture()V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 172
    return-void

    .line 125
    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_176
        :pswitch_c1
    .end packed-switch
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->eglContextCleared()V

    .line 208
    return-void
.end method

.method protected requestFullLayout()V
    .registers 2

    .prologue
    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1473
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1391
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1392
    return-void
.end method

.method public routeKey(III)Z
    .registers 9
    .parameter "tag"
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 1520
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLViewRenderer;->routeKey(III)Z

    move-result v3

    .line 1521
    .local v3, handled:Z
    if-nez v3, :cond_1b

    .line 1522
    invoke-static {p2, p3}, Lcom/google/android/opengl/glview/GLView;->keyCodeToFocusDir(II)I

    move-result v1

    .line 1523
    .local v1, focusDir:I
    if-ltz v1, :cond_1b

    .line 1524
    invoke-direct {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->focusDirToExitMask(I)I

    move-result v2

    .line 1525
    .local v2, focusExitMask:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getAllowedFocusExitMask()I

    move-result v0

    .line 1526
    .local v0, allowedFocusExitMask:I
    and-int v4, v2, v0

    if-nez v4, :cond_1b

    .line 1529
    const/4 v3, 0x1

    .line 1533
    .end local v0           #allowedFocusExitMask:I
    .end local v1           #focusDir:I
    .end local v2           #focusExitMask:I
    :cond_1b
    return v3
.end method

.method public runInDrawFrame(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1491
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1492
    monitor-exit v1

    .line 1493
    return-void

    .line 1492
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized setBottomBarHeight(F)V
    .registers 3
    .parameter "height"

    .prologue
    .line 1264
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBottomBarHeight:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1265
    monitor-exit p0

    return-void

    .line 1264
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 1451
    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 1452
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 1453
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 1454
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1455
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 6
    .parameter "epoch"
    .parameter "pile"
    .parameter "unexpandedCount"
    .parameter "expandedCount"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 1431
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1432
    return-void
.end method

.method public setExpandAlbumForIndex(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;IZZ)V
    .registers 6
    .parameter "pile"
    .parameter "index"
    .parameter "animate"
    .parameter "focusOnFirstExpandedItem"

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 1465
    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 1466
    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 1467
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1468
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 12
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1436
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1437
    return-void
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 1446
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1447
    return-void
.end method

.method public setManageAlbumMode(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->setManageAlbumMode(Z)V

    .line 1459
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1460
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 5
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 1425
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1426
    return-void
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1421
    return-void
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .registers 12
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1442
    return-void
.end method

.method public setShowScrollBar(Z)V
    .registers 3
    .parameter "showScrollBar"

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    .line 1397
    .local v0, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v0, :cond_9

    .line 1398
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollerVisibility(Z)V

    .line 1400
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    .line 1401
    return-void
.end method

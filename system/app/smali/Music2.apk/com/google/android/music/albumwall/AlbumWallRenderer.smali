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
    .line 78
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
    .line 90
    invoke-direct {p0, p1, p3}, Lcom/google/android/opengl/glview/GLViewRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/glview/GLSurfaceView;)V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 85
    new-instance v0, Lcom/google/android/music/albumwall/AlbumPoseCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    .line 91
    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 92
    new-instance v0, Lcom/google/android/music/albumwall/Model;

    invoke-direct {v0, p4, p2}, Lcom/google/android/music/albumwall/Model;-><init>(Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 93
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 94
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

.method static synthetic access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/BackgroundView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/albumwall/AlbumWallRenderer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    return-void
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

.method static synthetic access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

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

.method static synthetic access$502(Lcom/google/android/music/albumwall/AlbumWallRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/opengl/glview/TopLevelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method private createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
    .registers 25
    .parameter "id"
    .parameter "isExpanded"
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "defaultPose"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v5

    .line 399
    .local v5, isExpandLabelExpandSize:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandedLabelVertical()Z

    move-result v7

    .line 400
    .local v7, isExpandedLabelVertical:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v11

    .line 401
    .local v11, isHorizontalScrolling:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v2

    if-nez v2, :cond_69

    const/4 v4, 0x1

    .line 402
    .local v4, isTopLevel:Z
    :goto_23
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZZZLcom/google/android/opengl/glview/TexturedQuad$Pose;I)V

    .line 548
    .local v1, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    new-instance v8, Lcom/google/android/music/albumwall/AlbumWallGridView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingHeight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getMinorAxisLength(Z)F

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v18, v0

    move/from16 v9, p1

    move-object v10, v1

    invoke-direct/range {v8 .. v18}, Lcom/google/android/music/albumwall/AlbumWallGridView;-><init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V

    return-object v8

    .line 401
    .end local v1           #adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    .end local v4           #isTopLevel:Z
    :cond_69
    const/4 v4, 0x0

    goto :goto_23
.end method

.method private createArtistList(III)Lcom/google/android/opengl/glview/GLView;
    .registers 22
    .parameter "id"
    .parameter "baseIndex"
    .parameter "maxIndex"

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v6

    .line 649
    .local v6, isExpandLabelExpandSize:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusterExpandedLabelVertical()Z

    move-result v5

    .line 650
    .local v5, isClusterExpandedLabelVertical:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 651
    .local v10, isHorizontalScrolling:Z
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer$11;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;IIZZ)V

    .line 801
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

    .line 178
    new-instance v0, Lcom/google/android/music/albumwall/BackgroundView;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getDefaultBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/BackgroundView;-><init>(Lcom/google/android/music/albumwall/Model;Landroid/graphics/Bitmap;)V

    .line 180
    .local v0, backgroundView:Lcom/google/android/music/albumwall/BackgroundView;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getUseAlbumArtBackgrounds()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/BackgroundView;->setUseAlbumArt(Z)V

    .line 181
    const v1, 0x3e99999a

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/music/albumwall/BackgroundView;->setColor(FFFF)V

    .line 182
    return-object v0
.end method

.method private createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .registers 16
    .parameter "pile"
    .parameter "expandedPileIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 815
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

    .line 817
    .local v1, list:Lcom/google/android/opengl/glview/GLLinearLayout;
    const/4 v10, 0x0

    .line 818
    .local v10, defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v3, p1, v2, v2}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v11

    .line 819
    .local v11, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/Model;->isManageAlbumMode()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 822
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v5, 0x2

    invoke-virtual {v3, v11, v5}, Lcom/google/android/music/albumwall/Model;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 825
    :cond_29
    if-eqz v11, :cond_31

    .line 826
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v3, v11}, Lcom/google/android/music/albumwall/AlbumPoseCache;->getPose(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    move-result-object v10

    .line 830
    :cond_31
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;

    invoke-direct {p0, v2, v2, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v12

    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedBanner(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    const/16 v6, 0x8

    move-object v5, p0

    move v7, v4

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(IZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    const/4 v7, -0x1

    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v6

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;-><init>(Lcom/google/android/opengl/glview/GLLinearLayout;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V

    .line 837
    .local v0, group:Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->setId(I)V

    .line 838
    return-object v0
.end method

.method private createListFromModel()V
    .registers 21

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 336
    .local v13, focusOnFirstExpandedItem:Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 337
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 338
    .local v14, focusOnPileIndex:I
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 339
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 340
    .local v7, animate:Z
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    if-nez v1, :cond_28

    .line 343
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 393
    :cond_27
    :goto_27
    return-void

    .line 346
    :cond_28
    const/4 v10, 0x0

    .line 347
    .local v10, expandedArtistList:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v11

    .line 349
    .local v11, expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v12

    .line 350
    .local v12, expandedPileIndex:I
    if-eqz v11, :cond_c7

    const/4 v1, -0x1

    if-eq v12, v1, :cond_c7

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v10

    .line 352
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 366
    .end local v11           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v12           #expandedPileIndex:I
    :goto_53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v18

    .line 367
    .local v18, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v19

    .line 368
    .local v19, transformer:Lcom/google/android/opengl/glview/Transformer;
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v17

    .line 370
    .local v17, ourList:Lcom/google/android/opengl/glview/GLView;
    if-eqz v17, :cond_a0

    if-eqz v10, :cond_a0

    .line 371
    const/4 v1, 0x7

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    .line 372
    .local v8, banner:Lcom/google/android/opengl/glview/GLView;
    if-eqz v8, :cond_92

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v15

    .line 374
    .local v15, horizontal:Z
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/Transformer;->visibleMarginOrigin(Z)F

    move-result v16

    .line 375
    .local v16, margin:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 377
    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v1

    neg-float v1, v1

    add-float v1, v1, v16

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FFZ)V

    .line 382
    .end local v15           #horizontal:Z
    .end local v16           #margin:F
    :cond_92
    :goto_92
    if-eqz v13, :cond_a0

    .line 383
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v9

    check-cast v9, Lcom/google/android/opengl/glview/GridView;

    .line 384
    .local v9, content:Lcom/google/android/opengl/glview/GridView;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/google/android/opengl/glview/GridView;->focusOnChild(I)V

    .line 387
    .end local v8           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v9           #content:Lcom/google/android/opengl/glview/GridView;
    :cond_a0
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

    .line 389
    const/16 v1, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v9

    check-cast v9, Lcom/google/android/opengl/glview/GridView;

    .line 390
    .restart local v9       #content:Lcom/google/android/opengl/glview/GridView;
    invoke-virtual {v9, v14}, Lcom/google/android/opengl/glview/GridView;->focusOnChild(I)V

    goto/16 :goto_27

    .line 354
    .end local v9           #content:Lcom/google/android/opengl/glview/GridView;
    .end local v17           #ourList:Lcom/google/android/opengl/glview/GLView;
    .end local v18           #root:Lcom/google/android/opengl/glview/TopLevelView;
    .end local v19           #transformer:Lcom/google/android/opengl/glview/Transformer;
    .restart local v11       #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v12       #expandedPileIndex:I
    :cond_c7
    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(III)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_53

    .line 358
    .end local v11           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v12           #expandedPileIndex:I
    :cond_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 359
    .local v4, pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-nez v4, :cond_eb

    .line 360
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto/16 :goto_53

    .line 362
    :cond_eb
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

    .line 379
    .end local v4           #pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v8       #banner:Lcom/google/android/opengl/glview/GLView;
    .restart local v15       #horizontal:Z
    .restart local v16       #margin:F
    .restart local v17       #ourList:Lcom/google/android/opengl/glview/GLView;
    .restart local v18       #root:Lcom/google/android/opengl/glview/TopLevelView;
    .restart local v19       #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_fc
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v2

    neg-float v2, v2

    add-float v2, v2, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FFZ)V

    goto :goto_92
.end method

.method private createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;
    .registers 8
    .parameter "item"

    .prologue
    .line 1236
    new-instance v0, Lcom/google/android/music/albumwall/MarkView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkHeight()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/MarkView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1237
    .local v0, mark:Lcom/google/android/music/albumwall/MarkView;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkOffsetX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMenuMarkOffsetY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MarkView;->setOffset(FFF)V

    .line 1238
    return-object v0
.end method

.method private focusDirToExitMask(I)I
    .registers 3
    .parameter "focusDir"

    .prologue
    .line 1441
    sparse-switch p1, :sswitch_data_14

    .line 1455
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1443
    :sswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 1445
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 1447
    :sswitch_a
    const/4 v0, 0x1

    goto :goto_4

    .line 1449
    :sswitch_c
    const/4 v0, 0x4

    goto :goto_4

    .line 1451
    :sswitch_e
    const/16 v0, 0x10

    goto :goto_4

    .line 1453
    :sswitch_11
    const/16 v0, 0x20

    goto :goto_4

    .line 1441
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
    .line 986
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCloseButtonResourceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v0

    .line 987
    .local v0, button:Lcom/google/android/opengl/glview/DrawableView;
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/DrawableView;->setFlags(I)V

    .line 988
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/DrawableView;->setId(I)V

    .line 989
    return-object v0
.end method

.method private getMinorAxisLength(Z)F
    .registers 4
    .parameter "isHorizontalScrolling"

    .prologue
    .line 809
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

    .line 283
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v3

    .line 284
    .local v3, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v3}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v6

    .line 286
    .local v6, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {v6, v9}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 287
    .local v2, oldChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v2, :cond_16

    .line 288
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 289
    invoke-virtual {v6, v2}, Lcom/google/android/opengl/glview/Transformer;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 293
    :cond_16
    if-eqz p1, :cond_5a

    .line 295
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v5

    .line 296
    .local v5, topMargin:F
    cmpl-float v8, v5, v10

    if-lez v8, :cond_32

    .line 297
    invoke-static {v9, v10, v9, v9}, Lcom/google/android/opengl/glview/GLLinearLayout;->createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v7

    .line 298
    .local v7, vbox:Lcom/google/android/opengl/glview/GLView;
    new-instance v4, Lcom/google/android/opengl/glview/Spacer;

    invoke-direct {v4, v10, v5}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    .line 299
    .local v4, spacer:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v7, v4}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 300
    invoke-virtual {v7, p1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 301
    move-object p1, v7

    .line 303
    .end local v4           #spacer:Lcom/google/android/opengl/glview/GLView;
    .end local v7           #vbox:Lcom/google/android/opengl/glview/GLView;
    :cond_32
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLeftMargin()F

    move-result v1

    .line 304
    .local v1, leftMargin:F
    cmpl-float v8, v1, v10

    if-lez v8, :cond_4c

    .line 305
    invoke-static {v9, v10, v9, v9}, Lcom/google/android/opengl/glview/GLLinearLayout;->createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    .line 306
    .local v0, hbox:Lcom/google/android/opengl/glview/GLView;
    new-instance v4, Lcom/google/android/opengl/glview/Spacer;

    invoke-direct {v4, v1, v10}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    .line 307
    .restart local v4       #spacer:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 308
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 309
    move-object p1, v0

    .line 313
    .end local v0           #hbox:Lcom/google/android/opengl/glview/GLView;
    .end local v4           #spacer:Lcom/google/android/opengl/glview/GLView;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v9

    invoke-virtual {p1, v10, v10, v8, v9}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 314
    invoke-virtual {v6, p1}, Lcom/google/android/opengl/glview/Transformer;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 317
    .end local v1           #leftMargin:F
    .end local v5           #topMargin:F
    :cond_5a
    return-void
.end method

.method private isListEmpty()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 321
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v1, :cond_14

    .line 322
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v2

    .line 323
    .local v2, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v2, :cond_14

    .line 324
    invoke-virtual {v2, v3}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 325
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_14

    .line 330
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
    .line 567
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 569
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 575
    return-void
.end method

.method private longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 606
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 607
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$8;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 613
    return-void
.end method

.method private pinExpandedBanner()V
    .registers 7

    .prologue
    .line 254
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 255
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 256
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v3

    .line 257
    .local v3, transformer:Lcom/google/android/opengl/glview/Transformer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 258
    .local v2, topContent:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->getId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_27

    move-object v0, v2

    .line 259
    check-cast v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;

    .line 260
    .local v0, bannerGroup:Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->pinBanner(Lcom/google/android/opengl/glview/Transformer;)V

    .line 263
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
    .line 1402
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1403
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1404
    .local v0, reply:Ljava/lang/Runnable;
    monitor-exit v2

    .line 1405
    if-nez v0, :cond_12

    .line 1406
    return-void

    .line 1404
    .end local v0           #reply:Ljava/lang/Runnable;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 1408
    .restart local v0       #reply:Ljava/lang/Runnable;
    :cond_12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 5
    .parameter "item"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 562
    return-void
.end method

.method private selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "item"
    .parameter "view"

    .prologue
    .line 580
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 582
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 588
    return-void
.end method

.method private selectItemMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "item"
    .parameter "view"

    .prologue
    .line 593
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 595
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 601
    return-void
.end method

.method private selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 618
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 620
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$9;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 626
    return-void
.end method

.method private selectPileMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .registers 7
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 631
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 633
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$10;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 639
    return-void
.end method

.method private setOrganizedAlbumOffset(Lcom/google/android/music/albumwall/ItemView;II)V
    .registers 11
    .parameter "album"
    .parameter "idInPile"
    .parameter "maxItemInPile"

    .prologue
    .line 1107
    if-nez p2, :cond_3

    .line 1116
    :goto_2
    return-void

    .line 1110
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageWidth()F

    move-result v6

    sub-float v1, v5, v6

    .line 1111
    .local v1, diff:F
    int-to-float v5, p2

    add-int/lit8 v6, p3, -0x1

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 1112
    .local v0, deltaPos:F
    mul-float v2, v1, v0

    .line 1113
    .local v2, x:F
    neg-float v5, v1

    mul-float v3, v5, v0

    .line 1114
    .local v3, y:F
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterStackSpacing()F

    move-result v5

    mul-float v4, v0, v5

    .line 1115
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

    .line 1144
    if-nez p2, :cond_6

    .line 1166
    :goto_5
    return-void

    .line 1149
    :cond_6
    sget-object v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, p2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 1152
    const/high16 v0, 0x41f0

    sget-object v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    .line 1153
    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/ItemView;->setRotationZ(F)V

    .line 1155
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_4a

    move v0, v1

    .line 1156
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

    .line 1157
    const/4 v2, 0x0

    .line 1158
    if-ne v0, v1, :cond_4c

    move v0, v2

    .line 1163
    :goto_3e
    int-to-float v1, p2

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterStackSpacing()F

    move-result v2

    mul-float/2addr v1, v2

    .line 1165
    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/music/albumwall/ItemView;->setOffset(FFF)V

    goto :goto_5

    .line 1155
    :cond_4a
    const/4 v0, -0x1

    goto :goto_28

    .line 1161
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
    .registers 17
    .parameter "item"
    .parameter "isExpanded"

    .prologue
    .line 1119
    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1120
    :cond_a
    const/high16 v13, 0x420c

    .line 1121
    .local v13, transitionHeightOrWidth:F
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->setIsRezzing(Z)V

    .line 1122
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1123
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v11

    .line 1124
    .local v11, sideBarWidth:F
    add-float v1, v11, v13

    .line 1125
    .local v1, xMix0:F
    move v2, v11

    .line 1126
    .local v2, xMix1:F
    move v3, v11

    .line 1127
    .local v3, xFade0:F
    const/high16 v0, 0x4000

    div-float v4, v11, v0

    .line 1128
    .local v4, xFade1:F
    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/TexturedQuad;->setMixAndFadeLimits(FFFFZ)V

    .line 1138
    .end local v1           #xMix0:F
    .end local v2           #xMix1:F
    .end local v3           #xFade0:F
    .end local v4           #xFade1:F
    .end local v11           #sideBarWidth:F
    .end local v13           #transitionHeightOrWidth:F
    :cond_2b
    :goto_2b
    return-void

    .line 1130
    .restart local v13       #transitionHeightOrWidth:F
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v12

    .line 1131
    .local v12, topBarHeight:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    add-float v5, v12, v13

    sub-float v6, v0, v5

    .line 1132
    .local v6, yMix0:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    sub-float v7, v0, v12

    .line 1133
    .local v7, yMix1:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    sub-float v8, v0, v12

    .line 1134
    .local v8, yFade0:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    const/high16 v5, 0x4000

    div-float v5, v12, v5

    sub-float v9, v0, v5

    .line 1135
    .local v9, yFade1:F
    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/TexturedQuad;->setMixAndFadeLimits(FFFFZ)V

    goto :goto_2b
.end method


# virtual methods
.method public collapseExpandedPile(Z)V
    .registers 6
    .parameter "fromKeyboard"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v0

    .line 267
    .local v0, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v0, :cond_2c

    .line 268
    const/4 v0, 0x0

    .line 269
    if-eqz p1, :cond_13

    .line 270
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnPileIndex:I

    .line 273
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 280
    :cond_2c
    return-void
.end method

.method protected createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;
    .registers 5
    .parameter "resourceId"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 188
    .local v1, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v1
.end method

.method protected createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;
    .registers 10
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V

    .line 194
    .local v0, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v0
.end method

.method protected drawFrame()V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setFrameTime(J)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->processQueuedRunnables()V

    .line 172
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->beginFrame()V

    .line 173
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->drawFrame()V

    .line 174
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->endFrame()V

    .line 175
    return-void
.end method

.method protected genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;Z)Lcom/google/android/opengl/glview/GLView;
    .registers 26
    .parameter "horizontal"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "labelMargin"
    .parameter "item"
    .parameter "defaultPose"
    .parameter "isExpanded"

    .prologue
    .line 1177
    const/16 v17, 0x1

    .line 1178
    .local v17, wantLabel:Z
    const/high16 v11, 0x3f80

    .line 1179
    .local v11, expandFactor:F
    const/high16 v14, 0x3f00

    .line 1180
    .local v14, minExpand:F
    const/high16 v10, 0x3f80

    .line 1181
    .local v10, alpha:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v11

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandLabelExpandCell()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 1186
    const/high16 v4, 0x3f00

    cmpl-float v4, v11, v4

    if-lez v4, :cond_f0

    const/16 v17, 0x1

    .line 1187
    :goto_2c
    const/high16 v4, 0x3f00

    sub-float v4, v11, v4

    const/high16 v5, 0x4000

    mul-float v10, v4, v5

    .line 1194
    :cond_34
    :goto_34
    new-instance v2, Lcom/google/android/music/albumwall/ItemView;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1195
    .local v2, album:Lcom/google/android/music/albumwall/ItemView;
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v2, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    move-result v15

    .line 1197
    .local v15, restored:Z
    if-nez v15, :cond_75

    if-eqz p6, :cond_75

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v4

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/music/albumwall/ItemView;->setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object/from16 v0, p6

    invoke-virtual {v4, v2, v0}, Lcom/google/android/music/albumwall/AlbumPoseCache;->setPose(Lcom/google/android/music/albumwall/ItemView;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)V

    .line 1202
    :cond_75
    const/16 v4, 0xa0

    invoke-virtual {v2, v4}, Lcom/google/android/music/albumwall/ItemView;->setFlags(I)V

    .line 1204
    if-eqz v17, :cond_108

    .line 1205
    new-instance v16, Lcom/google/android/opengl/glview/Stack;

    const/4 v4, 0x0

    const/16 v5, 0x12

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 1206
    .local v16, stack:Lcom/google/android/opengl/glview/Stack;
    new-instance v3, Lcom/google/android/music/albumwall/ItemLabel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/albumwall/ItemLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1208
    .local v3, label:Lcom/google/android/music/albumwall/ItemLabel;
    const/16 v4, 0x82

    invoke-virtual {v3, v4}, Lcom/google/android/music/albumwall/ItemLabel;->setFlags(I)V

    .line 1210
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v12

    .line 1211
    .local v12, list:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v12, v2}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1213
    invoke-virtual {v3, v10}, Lcom/google/android/music/albumwall/ItemLabel;->setAlpha(F)V

    .line 1214
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v3, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1215
    invoke-virtual {v12, v3}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1216
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 1221
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v13

    .line 1222
    .local v13, mark:Lcom/google/android/music/albumwall/MarkView;
    const/16 v4, 0xa2

    invoke-virtual {v13, v4}, Lcom/google/android/music/albumwall/MarkView;->setFlags(I)V

    .line 1223
    invoke-virtual {v13, v10}, Lcom/google/android/music/albumwall/MarkView;->setAlpha(F)V

    .line 1224
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1225
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1229
    .end local v3           #label:Lcom/google/android/music/albumwall/ItemLabel;
    .end local v12           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v13           #mark:Lcom/google/android/music/albumwall/MarkView;
    .end local v16           #stack:Lcom/google/android/opengl/glview/Stack;
    :cond_ef
    :goto_ef
    return-object v16

    .line 1186
    .end local v2           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v15           #restored:Z
    :cond_f0
    const/16 v17, 0x0

    goto/16 :goto_2c

    .line 1189
    :cond_f4
    const/high16 v4, 0x3f00

    cmpg-float v4, v11, v4

    if-gez v4, :cond_105

    const/16 v17, 0x1

    .line 1190
    :goto_fc
    const/high16 v4, 0x3f80

    const/high16 v5, 0x4000

    mul-float/2addr v5, v11

    sub-float v10, v4, v5

    goto/16 :goto_34

    .line 1189
    :cond_105
    const/16 v17, 0x0

    goto :goto_fc

    .restart local v2       #album:Lcom/google/android/music/albumwall/ItemView;
    .restart local v15       #restored:Z
    :cond_108
    move-object/from16 v16, v2

    .line 1229
    goto :goto_ef
.end method

.method protected genAlbumGroup(ZFLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .registers 32
    .parameter "horizontal"
    .parameter "labelMargin"
    .parameter "pile"
    .parameter "wantLabel"
    .parameter "pileIndex"

    .prologue
    .line 1036
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPileView(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v23

    .line 1037
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

    .line 1038
    .local v22, numAlbums:I
    if-nez v22, :cond_42

    .line 1041
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

    .line 1043
    .local v24, placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1092
    .end local v24           #placeHolder:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :goto_41
    return-object v24

    .line 1046
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v16

    .line 1048
    .local v16, frameTime:J
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_b3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v5

    .line 1050
    .local v5, imageW:F
    :goto_57
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v6

    .line 1054
    .local v6, imageH:F
    :goto_64
    add-int/lit8 v18, v22, -0x1

    .local v18, i:I
    :goto_66
    if-ltz v18, :cond_e1

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v4, v0, v7, v1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v8

    .line 1056
    .local v8, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v8, :cond_cf

    .line 1057
    new-instance v3, Lcom/google/android/music/albumwall/ItemView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1058
    .local v3, album:Lcom/google/android/music/albumwall/ItemView;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v3, v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-eqz v4, :cond_c5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v4

    if-nez v4, :cond_c5

    .line 1061
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRandomAlbumOffset(Lcom/google/android/music/albumwall/ItemView;I)V

    .line 1065
    :goto_ab
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1054
    .end local v3           #album:Lcom/google/android/music/albumwall/ItemView;
    :goto_b0
    add-int/lit8 v18, v18, -0x1

    goto :goto_66

    .line 1048
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

    .line 1050
    .restart local v5       #imageW:F
    :cond_bc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageHeight()F

    move-result v6

    goto :goto_64

    .line 1063
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

    .line 1068
    .end local v3           #album:Lcom/google/android/music/albumwall/ItemView;
    :cond_cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;

    move-result-object v15

    .line 1069
    .local v15, defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1070
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_b0

    .line 1074
    .end local v8           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v15           #defaultItem:Lcom/google/android/music/albumwall/PlaceHolderItem;
    :cond_e1
    if-eqz p4, :cond_146

    .line 1075
    new-instance v25, Lcom/google/android/opengl/glview/Stack;

    const/4 v4, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v7}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 1077
    .local v25, stack:Lcom/google/android/opengl/glview/Stack;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v20

    .line 1078
    .local v20, list:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1079
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v19

    .line 1081
    .local v19, label:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1082
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v4

    if-eqz v4, :cond_142

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v21

    .line 1085
    .local v21, mark:Lcom/google/android/music/albumwall/MarkView;
    const/16 v4, 0xa2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/MarkView;->setFlags(I)V

    .line 1086
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1087
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .end local v21           #mark:Lcom/google/android/music/albumwall/MarkView;
    :cond_142
    move-object/from16 v24, v25

    .line 1090
    goto/16 :goto_41

    .end local v19           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v20           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v25           #stack:Lcom/google/android/opengl/glview/Stack;
    :cond_146
    move-object/from16 v24, v23

    .line 1092
    goto/16 :goto_41
.end method

.method protected genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .registers 12
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v2

    .line 1012
    .local v2, w:F
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v3

    .line 1013
    .local v3, h:F
    if-eqz p2, :cond_22

    .line 1014
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1015
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelWidth()F

    move-result v3

    .line 1016
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelHeight()F

    move-result v2

    .line 1022
    :cond_22
    :goto_22
    new-instance v0, Lcom/google/android/music/albumwall/PileLabel;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/albumwall/PileLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 1025
    .local v0, label:Lcom/google/android/music/albumwall/PileLabel;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    .line 1026
    if-nez p2, :cond_38

    .line 1027
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    .line 1029
    :cond_38
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setRezzingHelper(Lcom/google/android/opengl/glview/TexturedQuad;Z)V

    .line 1031
    return-object v0

    .line 1018
    .end local v0           #label:Lcom/google/android/music/albumwall/PileLabel;
    :cond_3d
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelWidth()F

    move-result v2

    .line 1019
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelHeight()F

    move-result v3

    goto :goto_22
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

    .line 1242
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
    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getStyle()I

    move-result v18

    .line 926
    .local v18, elementStyle:I
    packed-switch v18, :pswitch_data_134

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 964
    .local v10, hScroll:Z
    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v23

    .line 966
    .local v23, list:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v21

    .line 967
    .local v21, label:Lcom/google/android/opengl/glview/GLView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genCloseButton()Lcom/google/android/opengl/glview/GLView;

    move-result-object v16

    .line 968
    .local v16, button:Lcom/google/android/opengl/glview/GLView;
    const/4 v8, 0x4

    .line 969
    .local v8, labelAndButtonExpand:I
    if-nez v10, :cond_12d

    const/4 v4, 0x1

    :goto_30
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v22

    .line 970
    .local v22, labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v10, :cond_130

    const/4 v3, 0x1

    :goto_3c
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 972
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 973
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 975
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 976
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 977
    const/16 v3, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 982
    :goto_6a
    return-object v23

    .line 929
    .end local v8           #labelAndButtonExpand:I
    .end local v10           #hScroll:Z
    .end local v16           #button:Lcom/google/android/opengl/glview/GLView;
    .end local v21           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v23           #list:Lcom/google/android/opengl/glview/GLView;
    :pswitch_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v10

    .line 930
    .restart local v10       #hScroll:Z
    new-instance v23, Lcom/google/android/opengl/glview/Stack;

    const/4 v3, 0x6

    const/16 v4, 0x9

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 932
    .restart local v23       #list:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_13a

    .line 935
    .local v17, color:[F
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v21

    .line 936
    .restart local v21       #label:Lcom/google/android/opengl/glview/GLView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genCloseButton()Lcom/google/android/opengl/glview/GLView;

    move-result-object v16

    .line 937
    .restart local v16       #button:Lcom/google/android/opengl/glview/GLView;
    const/4 v8, 0x4

    .line 938
    .restart local v8       #labelAndButtonExpand:I
    if-nez v10, :cond_108

    const/4 v4, 0x1

    :goto_98
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v22

    .line 939
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v10, :cond_10a

    const/4 v3, 0x1

    :goto_a4
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v19

    .line 941
    .local v19, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v10, :cond_10c

    .line 942
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 943
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

    .line 949
    .local v20, h:F
    :goto_d4
    new-instance v15, Lcom/google/android/opengl/glview/FlatColorView;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v3, v0}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 950
    .local v15, banner:Lcom/google/android/opengl/glview/GLView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 952
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 953
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 955
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 956
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 957
    const/16 v3, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    goto/16 :goto_6a

    .line 938
    .end local v15           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v19           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v20           #h:F
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v24           #w:F
    :cond_108
    const/4 v4, 0x0

    goto :goto_98

    .line 939
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_10a
    const/4 v3, 0x0

    goto :goto_a4

    .line 945
    .restart local v19       #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_10c
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

    .line 946
    .restart local v24       #w:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v20

    .restart local v20       #h:F
    goto :goto_d4

    .line 969
    .end local v17           #color:[F
    .end local v19           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v20           #h:F
    .end local v22           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v24           #w:F
    :cond_12d
    const/4 v4, 0x0

    goto/16 :goto_30

    .line 970
    .restart local v22       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_130
    const/4 v3, 0x0

    goto/16 :goto_3c

    .line 926
    nop

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch

    .line 932
    :array_13a
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

    .line 993
    const/4 v5, 0x4

    new-array v0, v5, [F

    fill-array-data v0, :array_4e

    .line 994
    .local v0, color:[F
    const/4 v4, 0x0

    .line 995
    .local v4, w:F
    const/4 v2, 0x0

    .line 996
    .local v2, h:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v1

    .line 997
    .local v1, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 998
    const/high16 v4, 0x3fc0

    .line 999
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

    .line 1005
    :goto_2e
    new-instance v3, Lcom/google/android/opengl/glview/FlatColorView;

    invoke-direct {v3, p1, v0}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 1006
    .local v3, separator:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, v8, v8, v4, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 1007
    return-object v3

    .line 1001
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

    .line 1002
    const/high16 v2, 0x3fc0

    goto :goto_2e

    .line 993
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
    .line 1248
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

    .line 1251
    .local v0, pileView:Lcom/google/android/opengl/glview/GLView;
    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 1253
    return-object v0
.end method

.method protected genPlaceHolderItem(FF)Lcom/google/android/music/albumwall/PlaceHolderItem;
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1169
    new-instance v5, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct {v5}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 1170
    .local v5, item:Lcom/google/android/music/albumwall/MusicItem;
    new-instance v0, Lcom/google/android/music/albumwall/PlaceHolderItem;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/PlaceHolderItem;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1171
    .local v0, defaultView:Lcom/google/android/music/albumwall/PlaceHolderItem;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PlaceHolderItem;->setFlags(I)V

    .line 1172
    return-object v0
.end method

.method public getAlbumWallConfig()Lcom/google/android/music/albumwall/AlbumWallConfig;
    .registers 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    return-object v0
.end method

.method public getLabelsVisible()Z
    .registers 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getLabelsVisible()Z

    move-result v0

    return v0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .registers 3

    .prologue
    .line 1303
    const/4 v1, 0x0

    .line 1304
    .local v1, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    .line 1305
    .local v0, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v0, :cond_b

    .line 1306
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v1

    .line 1309
    :cond_b
    return-object v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .registers 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method public invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1268
    return-void
.end method

.method public invalidateTexture(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateTexture(I)V

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1420
    return-void
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 206
    packed-switch p1, :pswitch_data_52

    .line 246
    :cond_6
    :goto_6
    :pswitch_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLViewRenderer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_a
    return v4

    .line 208
    :pswitch_b
    const/4 v5, 0x3

    if-eq p2, v5, :cond_13

    if-eq p2, v6, :cond_13

    const/4 v5, 0x6

    if-ne p2, v5, :cond_6

    .line 211
    :cond_13
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p3, v5, :cond_18

    move v1, v4

    .line 212
    .local v1, fromDpad:Z
    :cond_18
    invoke-virtual {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->collapseExpandedPile(Z)V

    goto :goto_a

    .line 217
    .end local v1           #fromDpad:Z
    :pswitch_1c
    instance-of v5, p3, Lcom/google/android/music/albumwall/PileView;

    if-eqz v5, :cond_6

    move-object v3, p3

    .line 218
    check-cast v3, Lcom/google/android/music/albumwall/PileView;

    .line 219
    .local v3, pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v2

    .line 220
    .local v2, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v6, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;

    invoke-direct {v6, p0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    invoke-virtual {v5, v6, v4}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_a

    .line 230
    .end local v2           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #pileView:Lcom/google/android/music/albumwall/PileView;
    :pswitch_32
    if-ne p1, v6, :cond_4b

    move v0, v4

    .line 231
    .local v0, entered:Z
    :goto_35
    instance-of v5, p3, Lcom/google/android/music/albumwall/PileView;

    if-eqz v5, :cond_6

    move-object v3, p3

    .line 232
    check-cast v3, Lcom/google/android/music/albumwall/PileView;

    .line 233
    .restart local v3       #pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v2

    .line 234
    .restart local v2       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v6, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;

    invoke-direct {v6, p0, v2, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V

    invoke-virtual {v5, v6, v4}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    goto :goto_a

    .end local v0           #entered:Z
    .end local v2           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #pileView:Lcom/google/android/music/albumwall/PileView;
    :cond_4b
    move v0, v1

    .line 230
    goto :goto_35

    .line 243
    :pswitch_4d
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->pinExpandedBanner()V

    goto :goto_6

    .line 206
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_1c
        :pswitch_32
        :pswitch_32
        :pswitch_4d
    .end packed-switch
.end method

.method protected onLayout()V
    .registers 4

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1382
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 1383
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createListFromModel()V

    .line 1385
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 1386
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->onLayout()V

    .line 1387
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 30
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    invoke-super/range {p0 .. p3}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->setOwnerThread()V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateAlbumWallConfig(II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setCanvasConfiguration(Ljava/lang/Object;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v18

    .line 106
    .local v18, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createBackgroundView()Lcom/google/android/music/albumwall/BackgroundView;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/TopLevelView;->setBackgroundView(Lcom/google/android/opengl/glview/GLView;)V

    .line 108
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

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/google/android/opengl/glview/TopLevelView;->setMaximumOverScroll(FF)V

    .line 110
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

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getVisibilityMarginBottom()F

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/google/android/opengl/glview/TopLevelView;->setVisibilityMargin(FFFF)V

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarAutoFade()Z

    move-result v12

    .line 115
    .local v12, autoFade:Z
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/android/opengl/glview/TopLevelView;->setAutoFade(Z)V

    .line 116
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollerVisibility(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarMode()I

    move-result v13

    .line 119
    .local v13, mode:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getHideThumbIfContentFits()Z

    move-result v11

    .line 120
    .local v11, hideThumbIfContentFits:Z
    packed-switch v13, :pswitch_data_196

    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scrollBarMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :pswitch_c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarThumbId()I

    move-result v21

    .line 125
    .local v21, scrollBarThumbId:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v20

    .line 126
    .local v20, scrollBarThumb:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarTrackId()I

    move-result v23

    .line 127
    .local v23, scrollBarTrackId:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v22

    .line 128
    .local v22, scrollBarTrack:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v19

    .line 129
    .local v19, scrollBarOverlayW:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v24

    .line 130
    .local v24, scrollOverlayH:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayId()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v16

    .line 132
    .local v16, overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v17, padding:Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/DrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 134
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    .line 135
    .local v14, offsetX:I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v15, v4, 0x2

    .line 136
    .local v15, offsetY:I
    new-instance v3, Lcom/google/android/music/albumwall/ThumbOverlay;

    const/4 v4, 0x0

    int-to-float v5, v14

    int-to-float v6, v15

    const/high16 v25, 0x3f00

    mul-float v7, v19, v25

    const/high16 v25, 0x3f00

    mul-float v8, v24, v25

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/music/albumwall/ThumbOverlay;-><init>(IFFFFLcom/google/android/music/albumwall/Model;)V

    .line 139
    .local v3, overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    new-instance v7, Lcom/google/android/opengl/glview/Stack;

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-direct {v7, v4, v5}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 140
    .local v7, overlayPile:Lcom/google/android/opengl/glview/Stack;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 141
    invoke-virtual {v7, v3}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v8

    .line 143
    .local v8, horizontal:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollOverlayFollowsThumb()Z

    move-result v9

    .line 144
    .local v9, overlayFollowsThumb:Z
    const/4 v10, 0x0

    .line 145
    .local v10, startMargin:F
    if-nez v8, :cond_166

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v10

    :cond_166
    move-object/from16 v4, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v22

    .line 149
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZFZ)V

    .line 158
    .end local v3           #overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    .end local v7           #overlayPile:Lcom/google/android/opengl/glview/Stack;
    .end local v8           #horizontal:Z
    .end local v9           #overlayFollowsThumb:Z
    .end local v10           #startMargin:F
    .end local v14           #offsetX:I
    .end local v15           #offsetY:I
    .end local v16           #overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    .end local v17           #padding:Landroid/graphics/Rect;
    .end local v19           #scrollBarOverlayW:F
    .end local v20           #scrollBarThumb:Lcom/google/android/opengl/glview/DrawableView;
    .end local v21           #scrollBarThumbId:I
    .end local v22           #scrollBarTrack:Lcom/google/android/opengl/glview/DrawableView;
    .end local v23           #scrollBarTrackId:I
    .end local v24           #scrollOverlayH:F
    :pswitch_16f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/music/albumwall/Model;->setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/Model;->updateLoadingTexture()V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->invalidateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 165
    return-void

    .line 120
    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_c1
    .end packed-switch
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->eglContextCleared()V

    .line 201
    return-void
.end method

.method protected requestFullLayout()V
    .registers 2

    .prologue
    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 1376
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1377
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter "newViewState"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1273
    return-void
.end method

.method public routeKey(III)Z
    .registers 9
    .parameter "tag"
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 1424
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLViewRenderer;->routeKey(III)Z

    move-result v3

    .line 1425
    .local v3, handled:Z
    if-nez v3, :cond_1b

    .line 1426
    invoke-static {p2, p3}, Lcom/google/android/opengl/glview/GLView;->keyCodeToFocusDir(II)I

    move-result v1

    .line 1427
    .local v1, focusDir:I
    if-ltz v1, :cond_1b

    .line 1428
    invoke-direct {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->focusDirToExitMask(I)I

    move-result v2

    .line 1429
    .local v2, focusExitMask:I
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getAllowedFocusExitMask()I

    move-result v0

    .line 1430
    .local v0, allowedFocusExitMask:I
    and-int v4, v2, v0

    if-nez v4, :cond_1b

    .line 1433
    const/4 v3, 0x1

    .line 1437
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
    .line 1394
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1395
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1396
    monitor-exit v1

    .line 1397
    return-void

    .line 1396
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setBackgroundRepresentativeAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;

    if-eqz v0, :cond_10

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1104
    :cond_10
    return-void
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 5
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 1355
    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 1356
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 1357
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1359
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V
    .registers 6
    .parameter "epoch"
    .parameter "pile"
    .parameter "unexpandedCount"
    .parameter "expandedCount"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;II)V

    .line 1335
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1336
    return-void
.end method

.method public setExpandAlbumForIndex(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;IZZ)V
    .registers 6
    .parameter "pile"
    .parameter "index"
    .parameter "animate"
    .parameter "focusOnFirstExpandedItem"

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 1369
    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAnimateToPosition:Z

    .line 1370
    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFocusOnFirstExpandedItem:Z

    .line 1371
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 1372
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
    .line 1339
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1340
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1341
    return-void
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 1350
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1351
    return-void
.end method

.method public setLabelsVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(ZZ)V

    .line 1277
    return-void
.end method

.method public setLabelsVisible(ZZ)V
    .registers 5
    .parameter "visible"
    .parameter "forceSetting"

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v0

    .line 1281
    .local v0, view:Lcom/google/android/opengl/glview/GLSurfaceView;
    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer$13;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;ZZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1291
    return-void
.end method

.method public setManageAlbumMode(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->setManageAlbumMode(Z)V

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1364
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 5
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 1329
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1330
    return-void
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 1324
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 1325
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
    .line 1344
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 1345
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 1346
    return-void
.end method

.method public setShowScrollBar(Z)V
    .registers 3
    .parameter "showScrollBar"

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    .line 1296
    .local v0, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v0, :cond_9

    .line 1297
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollerVisibility(Z)V

    .line 1299
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mShowScrollBar:Z

    .line 1300
    return-void
.end method

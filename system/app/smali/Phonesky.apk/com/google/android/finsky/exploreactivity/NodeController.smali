.class public Lcom/google/android/finsky/exploreactivity/NodeController;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;,
        Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;
    }
.end annotation


# static fields
.field private static final ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

.field public static final FIXED_CHILD_ANGLES:[F

.field private static final FIXED_GRANDCHILD_ANGLES:[F


# instance fields
.field private mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

.field private final mCenter:Lcom/jme3/math/Vector2f;

.field private mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field private final mCenterNodeCenter:Lcom/jme3/math/Vector2f;

.field private mCurrentNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

.field private final mFadeOutNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mFadingIn:Z

.field private mFrameNum:I

.field private final mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

.field private final mNodeVector:Lcom/jme3/math/Vector2f;

.field private mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field private mPlaybackShouldStartTime:J

.field private mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

.field private mPreviousNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mRequestsToCancel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mReturnNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:F

.field private mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field private final mSize:Lcom/jme3/math/Vector2f;

.field private mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

.field private mSongPlayingNow:Ljava/lang/String;

.field mStarHalf:Landroid/graphics/Bitmap;

.field mStarOff:Landroid/graphics/Bitmap;

.field mStarOn:Landroid/graphics/Bitmap;

.field final mUiComponents:Landroid/view/ViewGroup;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    .line 116
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$1;

    invoke-direct {v0}, Lcom/google/android/finsky/exploreactivity/NodeController$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    return-void

    .line 77
    :array_18
    .array-data 0x4
        0x19t 0x3ct 0x3dt 0xbft
        0xc3t 0xb8t 0xb2t 0xbft
        0xa6t 0xb7t 0x1t 0xc0t
    .end array-data

    .line 85
    :array_22
    .array-data 0x4
        0xat 0x23t 0xb5t 0xbft
        0x7at 0xf2t 0xdct 0xbft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/android/volley/RequestQueue;)V
    .registers 12
    .parameter "activity"
    .parameter "dfeApi"
    .parameter "musicPreviewManager"
    .parameter "requestQueue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 127
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 130
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    .line 133
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    .line 139
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    .line 145
    new-instance v2, Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    new-instance v3, Lcom/google/android/finsky/exploreactivity/NodeController$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$2;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    .line 192
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    .line 195
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 198
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    .line 215
    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 218
    iput-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 224
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    .line 234
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    .line 244
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    .line 245
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    .line 257
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 258
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    .line 260
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 262
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0200ac

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    .line 264
    const v2, 0x7f0200ab

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    .line 265
    const v2, 0x7f0200aa

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarHalf:Landroid/graphics/Bitmap;

    .line 267
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 269
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040072

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    .line 270
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 272
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/NodeController;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->convertDocList(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/exploreactivity/NodeController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/android/volley/RequestQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    return-object v0
.end method

.method private animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V
    .registers 16
    .parameter "centerNode"
    .parameter "childAngles"
    .parameter "deltaTime"

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v4

    .line 637
    .local v4, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 638
    .local v5, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v5, :cond_80

    .line 643
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v2

    .line 645
    .local v2, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    array-length v8, p2

    if-ge v1, v8, :cond_5b

    .line 646
    aget v8, p2, v1

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float v7, v8, v9

    .line 656
    .local v7, targetAngle:F
    :goto_18
    invoke-direct {p0, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v7

    .line 658
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getAngle()F

    move-result v3

    .line 659
    .local v3, nodeAngle:F
    sub-float v0, v7, v3

    .line 662
    .local v0, delta:F
    const v8, 0x40490fdb

    cmpl-float v8, v0, v8

    if-lez v8, :cond_6c

    .line 663
    const v8, 0x40490fdb

    sub-float v0, v8, v0

    .line 669
    :cond_2e
    :goto_2e
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_79

    const/4 v6, 0x0

    .line 670
    .local v6, sign:F
    :goto_34
    mul-float v8, v0, v6

    float-to-double v8, v8

    const-wide v10, 0x3ff3333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x4080

    mul-float v0, v8, v9

    .line 671
    const v8, 0x41490fdb

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 672
    mul-float v8, p3, v6

    mul-float/2addr v0, v8

    .line 674
    add-float v8, v3, v0

    invoke-direct {p0, v8}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setAngle(F)V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 647
    .end local v0           #delta:F
    .end local v3           #nodeAngle:F
    .end local v6           #sign:F
    .end local v7           #targetAngle:F
    :cond_5b
    sget-object v8, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v8, v8

    if-ge v1, v8, :cond_64

    .line 650
    const v7, 0x4034f4ab

    .restart local v7       #targetAngle:F
    goto :goto_18

    .line 652
    .end local v7           #targetAngle:F
    :cond_64
    const v8, 0x3fc90fdb

    iget v9, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float v7, v8, v9

    .restart local v7       #targetAngle:F
    goto :goto_18

    .line 664
    .restart local v0       #delta:F
    .restart local v3       #nodeAngle:F
    :cond_6c
    const v8, -0x3fb6f025

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2e

    .line 665
    const v8, -0x3fb6f025

    sub-float v0, v8, v0

    goto :goto_2e

    .line 669
    :cond_79
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v6, v0, v8

    goto :goto_34

    .line 676
    .end local v0           #delta:F
    .end local v2           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v3           #nodeAngle:F
    .end local v7           #targetAngle:F
    :cond_80
    return-void
.end method

.method private animateNodes(F)V
    .registers 10
    .parameter "deltaTime"

    .prologue
    const/4 v7, 0x0

    .line 600
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V

    .line 601
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v1

    .line 602
    .local v1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 603
    .local v2, numNodes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v2, :cond_28

    .line 604
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v4, v4

    if-ge v0, v4, :cond_25

    .line 605
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;[FF)V

    .line 603
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 610
    :cond_28
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 611
    iget v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 612
    .local v3, oldVolume:F
    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    if-eqz v4, :cond_9e

    .line 613
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    const/high16 v6, 0x3f00

    div-float v6, p1, v6

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    .line 617
    :goto_45
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_63

    .line 618
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setVolume(FF)V

    .line 619
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_63

    iget-boolean v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    if-nez v4, :cond_63

    .line 620
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    .line 627
    .end local v3           #oldVolume:F
    :cond_63
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v5, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v4, v5, :cond_9d

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_9d

    .line 630
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 632
    :cond_9d
    return-void

    .line 615
    .restart local v3       #oldVolume:F
    :cond_9e
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    const v5, 0x3dcccccd

    div-float v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    goto :goto_45
.end method

.method private calculateCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V
    .registers 5
    .parameter "node"
    .parameter "halfDiagonal"

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v0

    .line 919
    .local v0, center:Lcom/jme3/math/Vector2f;
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->distance(Lcom/jme3/math/Vector2f;)F

    move-result v1

    div-float/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setDistanceToCenter(F)V

    .line 920
    return-void
.end method

.method private clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 6
    .parameter "node"

    .prologue
    const/high16 v3, 0x7fc0

    .line 575
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 576
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 577
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 578
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 580
    :cond_20
    return-void
.end method

.method private convertDocList(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .registers 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1076
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v2, outList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v3

    if-lez v3, :cond_37

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v3

    if-lez v3, :cond_37

    .line 1078
    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v1

    .line 1079
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_37

    .line 1080
    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1083
    .end local v0           #i:I
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    :cond_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1084
    return-object v2
.end method

.method private disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 5
    .parameter "node"

    .prologue
    .line 904
    if-nez p1, :cond_3

    .line 914
    :goto_2
    return-void

    .line 907
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->disposeObjects()V

    .line 909
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 910
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 911
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 913
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->removeFromParent()Z

    goto :goto_2
.end method

.method private dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 1147
    :goto_9
    if-ge v0, p2, :cond_13

    .line 1148
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1150
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1151
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelations()Ljava/util/List;

    move-result-object v4

    .line 1154
    if-eqz v4, :cond_5b

    move v1, v2

    .line 1155
    :goto_31
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    .line 1156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1157
    const-string v0, "  - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 1162
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v1

    .line 1163
    :goto_5f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_73

    .line 1164
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1166
    :cond_73
    return-void
.end method

.method private normalizeAngle(F)F
    .registers 4
    .parameter "angle"

    .prologue
    const v1, 0x40c90fdb

    .line 680
    :goto_3
    cmpl-float v0, p1, v1

    if-lez v0, :cond_9

    .line 681
    sub-float/2addr p1, v1

    goto :goto_3

    .line 683
    :cond_9
    :goto_9
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 684
    add-float/2addr p1, v1

    goto :goto_9

    .line 686
    :cond_10
    return p1
.end method

.method private prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V
    .registers 11
    .parameter "node"
    .parameter "halfDiagonal"

    .prologue
    const/16 v7, 0xf

    .line 813
    const/4 v4, 0x0

    .line 814
    .local v4, onscreenNode:Z
    const/4 v2, 0x0

    .line 816
    .local v2, keepLoaded:Z
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne p1, v6, :cond_5a

    .line 818
    sget-object v6, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v7, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 819
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createChildren(I)V

    .line 820
    const/4 v4, 0x1

    .line 851
    :cond_15
    :goto_15
    if-eqz v4, :cond_1f

    .line 852
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->calculateCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 856
    :cond_1f
    if-nez v4, :cond_e3

    if-nez v2, :cond_e3

    .line 857
    iget-object v6, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getInProgressState()I

    move-result v6

    if-eqz v6, :cond_32

    .line 858
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_32
    iget-object v6, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelations()Ljava/util/List;

    move-result-object v5

    .line 863
    .local v5, relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    if-eqz v5, :cond_e0

    .line 864
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 865
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 866
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_e0

    .line 867
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v6, v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 821
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    .end local v1           #i:I
    .end local v5           #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_5a
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    if-ne v6, p1, :cond_71

    .line 823
    sget-object v6, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v7, v6}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 824
    const/4 v2, 0x1

    goto :goto_15

    .line 825
    :cond_71
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne v6, v7, :cond_a3

    .line 831
    const/16 v6, 0xb

    sget-object v7, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 832
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_a0

    .line 833
    const/4 v6, 0x4

    sget-object v7, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 834
    sget-object v6, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v6, v6

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createChildren(I)V

    .line 835
    const/4 v4, 0x1

    goto/16 :goto_15

    .line 837
    :cond_a0
    const/4 v2, 0x1

    goto/16 :goto_15

    .line 839
    :cond_a3
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-ne v6, v7, :cond_15

    .line 843
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    .line 844
    .local v3, l1Child:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_15

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I

    move-result v6

    sget-object v7, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_GRANDCHILD_ANGLES:[F

    array-length v7, v7

    if-ge v6, v7, :cond_15

    .line 846
    const/4 v6, 0x3

    sget-object v7, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V

    .line 847
    const/4 v4, 0x1

    goto/16 :goto_15

    .line 871
    .end local v3           #l1Child:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .restart local v5       #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_e0
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->disposeObjects()V

    .line 874
    .end local v5           #relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    :cond_e3
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 875
    .restart local v0       #children:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_fa

    .line 876
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v6, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 878
    :cond_fa
    return-void
.end method

.method private processFadeOutNodes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 1103
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1105
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1106
    add-int/lit8 v0, v0, -0x1

    .line 1100
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1110
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    return-object v1
.end method

.method private queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
    .registers 14
    .parameter "url"
    .parameter "doc"
    .parameter "priority"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/volley/Response$Listener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p4, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<*>;"
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$9;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v3

    sget-object v6, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/exploreactivity/NodeController$9;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Request$Priority;)V

    .line 1064
    .local v0, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    invoke-virtual {v0, p2}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    .line 1065
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1066
    return-void
.end method

.method private raise(Lcom/android/volley/Request$Priority;)Lcom/android/volley/Request$Priority;
    .registers 5
    .parameter "priority"

    .prologue
    .line 1070
    invoke-static {}, Lcom/android/volley/Request$Priority;->values()[Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 1071
    .local v0, values:[Lcom/android/volley/Request$Priority;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .registers 5
    .parameter "playState"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 330
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    if-eqz v1, :cond_27

    .line 331
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, title:Ljava/lang/String;
    :goto_20
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-interface {v1, v2, v0}, Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;->onPlayStateChanged(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;Ljava/lang/String;)V

    .line 335
    .end local v0           #title:Ljava/lang/String;
    :cond_27
    return-void

    .line 331
    :cond_28
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public chooseCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 8
    .parameter "originalCenter"

    .prologue
    .line 504
    move-object v1, p1

    .line 506
    .local v1, newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_40

    .line 508
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_40

    .line 509
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 510
    .local v2, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDistanceToCenter()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDistanceToCenter()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_78

    .line 512
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 518
    .end local v0           #i:I
    .end local v2           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .restart local v1       #newCenter:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_40
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 521
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_70

    .line 523
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    .line 527
    :cond_70
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-eq v3, v1, :cond_77

    .line 528
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 530
    :cond_77
    return-void

    .line 508
    .restart local v0       #i:I
    .restart local v2       #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public createDocumentNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .registers 10
    .parameter "parent"
    .parameter "doc"
    .parameter "drawingUtils"

    .prologue
    .line 345
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown backend type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :pswitch_2c
    new-instance v0, Lcom/google/android/finsky/exploreactivity/AppNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/AppNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    .line 362
    :goto_37
    return-object v0

    .line 349
    :pswitch_38
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 357
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_37

    .line 351
    :pswitch_4f
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicArtistNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_37

    .line 353
    :pswitch_5b
    new-instance v0, Lcom/google/android/finsky/exploreactivity/MusicAlbumNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/MusicAlbumNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_37

    .line 360
    :pswitch_67
    new-instance v0, Lcom/google/android/finsky/exploreactivity/BookNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/BookNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_37

    .line 362
    :pswitch_73
    new-instance v0, Lcom/google/android/finsky/exploreactivity/VideoNode;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mUiComponents:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/VideoNode;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V

    goto :goto_37

    .line 345
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_67
        :pswitch_38
        :pswitch_2c
        :pswitch_73
    .end packed-switch

    .line 349
    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_4f
    .end packed-switch
.end method

.method public declared-synchronized createRoot(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)V
    .registers 6
    .parameter "doc"
    .parameter "drawingUtils"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$3;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->createDocumentNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 289
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->shouldShowPlaybackControls()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 291
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 293
    :cond_20
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    const/16 v1, 0xf

    sget-object v2, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 294
    monitor-exit p0

    return-void

    .line 282
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disposeObjects()V
    .registers 2

    .prologue
    .line 886
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$5;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public dumpControllerState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1137
    const-string v0, "NodeController state:"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    const-string v0, "Center node: %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    const-string v0, "Center %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector2f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    const-string v0, "Node tree:"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpNodeLeaf(Lcom/google/android/finsky/exploreactivity/DocumentNode;I)V

    .line 1142
    return-void
.end method

.method public fileReady(Lcom/google/android/finsky/exploreactivity/DocWrapper;Ljava/io/File;)V
    .registers 12
    .parameter "wrapper"
    .parameter "file"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1115
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 1116
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v3, v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    if-ne v3, p1, :cond_59

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 1118
    :try_start_18
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-eq v3, v4, :cond_24

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v3, v4, :cond_54

    .line 1119
    :cond_24
    const-string v3, "Starting playback of song %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->reset()V

    .line 1121
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1122
    .local v2, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1123
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1124
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->prepareAsync()V

    .line 1125
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 1128
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_54
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_59} :catch_5a

    .line 1133
    :cond_59
    :goto_59
    return-void

    .line 1129
    :catch_5a
    move-exception v1

    .line 1130
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Exception trying to get sample: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_59
.end method

.method getCenterNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method public getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;
    .registers 7
    .parameter "node"

    .prologue
    .line 744
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v0

    .line 745
    .local v0, center:Lcom/jme3/math/Vector2f;
    iget v3, v0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_15

    iget v3, v0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_15

    .line 781
    :cond_14
    :goto_14
    return-object v0

    .line 759
    :cond_15
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 761
    :cond_31
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 762
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 764
    .local v1, currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :goto_3e
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v2

    .line 765
    .local v2, parent:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    if-eqz v2, :cond_59

    .line 766
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getRelativePosition()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->subtractLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 768
    move-object v1, v2

    .line 772
    goto :goto_3e

    .line 777
    .end local v1           #currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v2           #parent:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 778
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getRelativePosition()Lcom/jme3/math/Vector2f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 779
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mNodeVector:Lcom/jme3/math/Vector2f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector2f;->addLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    goto :goto_14
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 695
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    return v0
.end method

.method public isSwipable()Z
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v1, v1

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 971
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v1

    .line 973
    xor-int/lit8 v0, v1, -0x1

    and-int/2addr v0, p2

    .line 974
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getInProgressState()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 975
    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_94

    .line 976
    and-int/lit8 v0, v0, -0xd

    move v6, v0

    .line 978
    :goto_15
    invoke-virtual {p1, v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->markInProgress(I)V

    .line 980
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_2c

    .line 981
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController;->ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getThumbnailRequest(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    .line 983
    invoke-virtual {v0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)V

    .line 984
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 987
    :cond_2c
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_41

    .line 988
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$6;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/google/android/finsky/exploreactivity/NodeController$6;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    .line 1003
    :cond_41
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_72

    .line 1004
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 1048
    :cond_50
    :goto_50
    return-void

    .line 1007
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1010
    :goto_5f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 1011
    const-class v4, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$7;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$7;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    .line 1028
    :cond_72
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_50

    .line 1031
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelatedItemUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/google/android/finsky/exploreactivity/NodeController;->raise(Lcom/android/volley/Request$Priority;)Lcom/android/volley/Request$Priority;

    move-result-object v3

    const-class v4, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$8;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$8;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    goto :goto_50

    .line 1008
    :cond_8b
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_94
    move v6, v0

    goto :goto_15
.end method

.method public loadData(Lcom/google/android/finsky/exploreactivity/DocumentNode;ILcom/android/volley/Request$Priority;)V
    .registers 5
    .parameter "node"
    .parameter "state"
    .parameter "priority"

    .prologue
    .line 931
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 932
    and-int/lit8 p2, p2, -0x2

    .line 933
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_15

    .line 934
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->recycleThumbnail()V

    .line 942
    :cond_15
    :goto_15
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    .line 943
    return-void

    .line 936
    :cond_1b
    iget-object v0, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v0

    if-nez v0, :cond_15

    .line 938
    and-int/lit8 p2, p2, -0x2

    .line 940
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setNodeThumbnail()Z

    goto :goto_15
.end method

.method public processOnscreenNodes([Lcom/jme3/math/Vector2f;F)Ljava/util/List;
    .registers 12
    .parameter "boundsPolygon"
    .parameter "deltaTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/math/Vector2f;",
            "F)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->clearNodePositions(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 393
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 394
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    iput-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    .line 395
    iput-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    .line 396
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 398
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-static {p1, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolyCenter([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 399
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    invoke-static {p1, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getPolySize([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V

    .line 400
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->y:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/jme3/math/Vector2f;->y:F

    .line 401
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenter:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->x:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    const v8, 0x3e2e147b

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/jme3/math/Vector2f;->x:F

    .line 403
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSize:Lcom/jme3/math/Vector2f;

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    const/high16 v6, 0x4000

    div-float v1, v5, v6

    .line 410
    .local v1, halfDiagonal:F
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    monitor-enter v6

    .line 411
    :try_start_58
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0, v5, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->prepareOnscreenNodes(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)V

    .line 412
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_a6

    .line 413
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6e

    .line 414
    new-instance v5, Lcom/google/android/finsky/exploreactivity/NodeController$4;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$4;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_6e
    invoke-direct {p0, p2}, Lcom/google/android/finsky/exploreactivity/NodeController;->animateNodes(F)V

    .line 431
    const/4 v2, 0x0

    .local v2, i:I
    :goto_72
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_a9

    .line 432
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 433
    .local v3, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 435
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 436
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 439
    :cond_97
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->fade(Z)V

    .line 431
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 412
    .end local v2           #i:I
    .end local v3           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v5

    .line 445
    .restart local v2       #i:I
    :cond_a9
    const/4 v2, 0x0

    :goto_aa
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_da

    .line 446
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d7

    .line 448
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadeOutNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->fade(Z)V

    .line 445
    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 454
    :cond_da
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 457
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->processFadeOutNodes()Ljava/util/List;

    move-result-object v0

    .line 458
    .local v0, fadeOutNodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    const/4 v2, 0x0

    :goto_e4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_f6

    .line 459
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 462
    :cond_f6
    const/4 v2, 0x0

    :goto_f7
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_10d

    .line 463
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCurrentNodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 467
    :cond_10d
    const/4 v2, 0x0

    :goto_10e
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_124

    .line 468
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    .line 471
    :cond_124
    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_135

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFrameNum:I

    rem-int/lit16 v5, v5, 0x1f4

    if-nez v5, :cond_135

    .line 472
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpControllerState()V

    .line 476
    :cond_135
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mReturnNodes:Ljava/util/List;

    return-object v5
.end method

.method public resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V
    .registers 3
    .parameter "newPlayState"

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->pause()V

    .line 322
    invoke-direct {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 323
    return-void
.end method

.method public rotate(F)V
    .registers 10
    .parameter "delta"

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f060a92

    .line 705
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float/2addr v4, p1

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 707
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v2

    .line 708
    .local v2, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocumentNode;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 709
    .local v3, size:I
    if-nez v3, :cond_1a

    .line 732
    :cond_19
    :goto_19
    return-void

    .line 715
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v4, v4

    if-ge v0, v4, :cond_35

    .line 716
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    .line 717
    .local v1, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getAngle()F

    move-result v4

    add-float/2addr v4, p1

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setAngle(F)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 721
    .end local v1           #node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_35
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_19

    const v4, 0x40c90fdb

    iget v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_19

    .line 722
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    const v5, 0x40490fdb

    cmpg-float v4, v4, v5

    if-gez v4, :cond_65

    .line 723
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    sub-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 724
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->rotateChildren(I)V

    .line 725
    const-string v4, "Applied child rotation of +1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 727
    :cond_65
    iget v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    add-float/2addr v4, v6

    invoke-direct {p0, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->normalizeAngle(F)F

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 728
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->rotateChildren(I)V

    .line 729
    const-string v4, "Applied child rotation of -1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public runOnGlThread(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 1176
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mActivity:Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1171
    return-void
.end method

.method public setCenterNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 9
    .parameter "newCenter"

    .prologue
    .line 538
    const-string v2, "New center: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNodeCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->getNodeCenter(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 540
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 541
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mRotation:F

    .line 542
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exploreNavigateTo?doc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-eq v2, v3, :cond_5c

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v2, v3, :cond_77

    .line 545
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->startPlayback()V

    .line 553
    :goto_5f
    const/4 v1, 0x1

    .line 554
    .local v1, depth:I
    move-object v0, p1

    .line 555
    .local v0, currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_61
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasParentNode()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 556
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    .line 557
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-le v1, v2, :cond_61

    .line 558
    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 559
    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->clearParentNode()V

    .line 563
    :cond_76
    return-void

    .line 549
    .end local v0           #currentNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .end local v1           #depth:I
    :cond_77
    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->resetPlayback(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    goto :goto_5f
.end method

.method public setSongListener(Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;)V
    .registers 2
    .parameter "songListener"

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongListener:Lcom/google/android/finsky/exploreactivity/NodeController$SongListener;

    .line 1090
    return-void
.end method

.method public shouldShowPlaybackControls()Z
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public startPlayback()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 301
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v1, v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getSong()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 302
    .local v0, song:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_32

    .line 303
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v2, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v1, v2, :cond_1b

    .line 306
    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlaybackShouldStartTime:J

    .line 309
    :cond_1b
    const-string v1, "Fetching preview of %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v2, v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v1, v2, p0, v5}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchPreview(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;Z)V

    .line 312
    :cond_32
    return-void
.end method

.method public togglePlayback()V
    .registers 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayState:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    if-ne v0, v1, :cond_c

    .line 787
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->updatePlayState(Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;)V

    .line 801
    :goto_b
    return-void

    .line 788
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    goto :goto_b

    .line 791
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mSongPlayingNow:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 793
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setVolume(FF)V

    .line 794
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->start()V

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController;->mFadingIn:Z

    goto :goto_b

    .line 798
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/NodeController;->startPlayback()V

    goto :goto_b
.end method

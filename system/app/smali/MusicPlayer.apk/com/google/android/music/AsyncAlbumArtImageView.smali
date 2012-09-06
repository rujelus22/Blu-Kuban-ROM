.class public Lcom/google/android/music/AsyncAlbumArtImageView;
.super Landroid/widget/ImageView;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncAlbumArtImageView$2;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;,
        Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$Mode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

.field private static final sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;


# instance fields
.field private mActualArtworkSet:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mAllowAnimation:Z

.field private final mArtChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

.field private mArtChangeListenerRegistered:Z

.field private mAvailable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

.field private mLayoutAsSquare:Z

.field private mLoadingArtworkSet:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mRequestedHeight:I

.field private mRequestedWidth:I

.field private mStretchToFill:Z

.field private mVirtualHeight:I

.field private mVirtualWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "AsyncAlbumArtImageView"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncAlbumArtImageView;->LOGV:Z

    .line 52
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    invoke-direct {v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 125
    sget-object v1, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->BACKGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    iput-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 127
    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 130
    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 133
    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    .line 136
    iput v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 139
    iput v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 142
    iput v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 145
    iput v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 152
    iput-boolean v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    .line 154
    iput-boolean v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAvailable:Z

    .line 446
    new-instance v1, Lcom/google/android/music/AsyncAlbumArtImageView$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncAlbumArtImageView$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    iput-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    .line 164
    sget-object v1, Lcom/google/android/music/R$styleable;->AlbumArt:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayoutAsSquare:Z

    .line 166
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mStretchToFill:Z

    .line 167
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 168
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 172
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    return p1
.end method

.method private getAlbumHeight()I
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getHeight()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    goto :goto_8
.end method

.method private static getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J
    .registers 4
    .parameter "mode"

    .prologue
    .line 282
    instance-of v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v0, :cond_9

    .line 283
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .end local p0
    iget-wide v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 285
    :goto_8
    return-wide v0

    .line 284
    .restart local p0
    :cond_9
    instance-of v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v0, :cond_12

    .line 285
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    .end local p0
    iget-wide v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->albumId:J

    goto :goto_8

    .line 287
    .restart local p0
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode does not have album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlbumWidth()I
    .registers 2

    .prologue
    .line 488
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getWidth()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    goto :goto_8
.end method

.method private declared-synchronized makeDrawable()V
    .registers 19

    .prologue
    .line 496
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v7

    .line 497
    .local v7, width:I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    move-result v8

    .line 498
    .local v8, height:I
    if-lez v7, :cond_d

    if-gtz v8, :cond_f

    .line 591
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 504
    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    if-nez v2, :cond_d

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    if-ne v7, v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    if-eq v8, v2, :cond_d

    .line 512
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    if-nez v2, :cond_38

    .line 515
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 588
    :goto_2c
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 589
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_35

    goto :goto_d

    .line 496
    .end local v7           #width:I
    .end local v8           #height:I
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2

    .line 516
    .restart local v7       #width:I
    .restart local v8       #height:I
    :cond_38
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v2, :cond_70

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    .line 518
    .local v16, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 521
    .local v13, bitmap:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v15, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    .local v15, drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto :goto_2c

    .line 524
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v16           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v2, :cond_bd

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    .line 529
    .local v16, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    invoke-static/range {v3 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedFauxAlbumArt(Landroid/content/Context;IJII)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 531
    .local v14, cachedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_9d

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto :goto_2c

    .line 535
    :cond_9d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 538
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 540
    .local v17, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 543
    .end local v14           #cachedDrawable:Landroid/graphics/drawable/Drawable;
    .end local v16           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    .end local v17           #msg:Landroid/os/Message;
    :cond_bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_111

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 547
    .local v16, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v4 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 549
    .restart local v14       #cachedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_f1

    .line 550
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_2c

    .line 553
    :cond_f1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 556
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 557
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 558
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 561
    .end local v14           #cachedDrawable:Landroid/graphics/drawable/Drawable;
    .end local v16           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    .end local v17           #msg:Landroid/os/Message;
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-eqz v2, :cond_139

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 565
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 566
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 567
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 569
    .end local v17           #msg:Landroid/os/Message;
    :cond_139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;

    if-eqz v2, :cond_169

    .line 570
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1ae

    .line 578
    :goto_150
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_2c

    .line 572
    :pswitch_157
    const v2, 0x7f02000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundResource(I)V

    goto :goto_150

    .line 575
    :pswitch_160
    const v2, 0x7f02000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageResource(I)V

    goto :goto_150

    .line 579
    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v2, :cond_191

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 581
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 582
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 583
    .restart local v17       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 586
    .end local v17           #msg:Landroid/os/Message;
    :cond_191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1ae
    .catchall {:try_start_38 .. :try_end_1ae} :catchall_35

    .line 570
    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_157
        :pswitch_160
    .end packed-switch
.end method

.method private declared-synchronized registerArtChangeListener()V
    .registers 5

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v2, :cond_2b

    .line 271
    :cond_d
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    invoke-static {v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J

    move-result-wide v0

    .line 272
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-nez v2, :cond_2b

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2b

    .line 273
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    if-eqz v2, :cond_28

    .line 274
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    iget-object v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->registerAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 276
    :cond_28
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 279
    .end local v0           #albumId:J
    :cond_2b
    monitor-exit p0

    return-void

    .line 270
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 630
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-ne v2, v4, :cond_34

    const/4 v1, 0x1

    .line 633
    .local v1, extractBitmap:Z
    :goto_8
    if-eqz v1, :cond_44

    .line 635
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_36

    move-object v2, p1

    .line 636
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 646
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_15
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v4}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_54

    .line 660
    :goto_22
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_33

    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    if-eqz v2, :cond_33

    .line 661
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 662
    iput-boolean v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    .line 664
    :cond_33
    return-void

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #extractBitmap:Z
    :cond_34
    move v1, v3

    .line 630
    goto :goto_8

    .line 637
    .restart local v1       #extractBitmap:Z
    :cond_36
    instance-of v2, p1, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    if-eqz v2, :cond_42

    move-object v2, p1

    .line 638
    check-cast v2, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    invoke-virtual {v2}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_15

    .line 640
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_42
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_15

    .line 643
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_44
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_15

    .line 648
    :pswitch_46
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 653
    :pswitch_4a
    if-nez v0, :cond_50

    .line 654
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    .line 656
    :cond_50
    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_22

    .line 646
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4a
    .end packed-switch
.end method

.method public static setArtDownloadServiceConnection(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;)V
    .registers 1
    .parameter "artDownloadServiceConnection"

    .prologue
    .line 183
    sput-object p0, Lcom/google/android/music/AsyncAlbumArtImageView;->sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    .line 184
    return-void
.end method

.method private setLoadingArtwork()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 594
    iget-boolean v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    if-nez v4, :cond_12

    .line 595
    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v5, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v5}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_48

    .line 623
    :cond_12
    :goto_12
    return-void

    .line 599
    :pswitch_13
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v3

    .line 600
    .local v3, w:I
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v2

    .line 602
    .local v2, h:I
    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    .line 608
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    .local v0, defaultArtwork:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 612
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_12

    .line 617
    .end local v0           #defaultArtwork:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #h:I
    .end local v3           #w:I
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 618
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_12

    .line 595
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3a
    .end packed-switch
.end method

.method private declared-synchronized unregisterArtChangeListener()V
    .registers 5

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v2, :cond_2b

    .line 293
    :cond_d
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    invoke-static {v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J

    move-result-wide v0

    .line 294
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-eqz v2, :cond_2b

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2b

    .line 295
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    if-eqz v2, :cond_28

    .line 296
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    iget-object v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 298
    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 301
    .end local v0           #albumId:J
    :cond_2b
    monitor-exit p0

    return-void

    .line 292
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public clearArtwork()V
    .registers 2

    .prologue
    .line 330
    monitor-enter p0

    .line 332
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 334
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 335
    monitor-exit p0

    .line 336
    return-void

    .line 335
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 189
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    .line 191
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 196
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    .line 198
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 670
    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-nez v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    .line 671
    .local v0, isViewSizeRelevantForAlbumArt:Z
    :cond_d
    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1c

    .line 672
    monitor-enter p0

    .line 673
    const/4 v1, 0x0

    :try_start_13
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 674
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 675
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 676
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 678
    :cond_1c
    return-void

    .line 675
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v6, -0x8000

    .line 210
    iget-boolean v7, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayoutAsSquare:Z

    if-eqz v7, :cond_1c

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 212
    .local v3, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 213
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 214
    .local v4, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 216
    .local v1, heightSize:I
    if-nez v3, :cond_20

    if-nez v0, :cond_20

    .line 255
    .end local v0           #heightMode:I
    .end local v1           #heightSize:I
    .end local v3           #widthMode:I
    .end local v4           #widthSize:I
    :cond_1c
    :goto_1c
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 256
    return-void

    .line 218
    .restart local v0       #heightMode:I
    .restart local v1       #heightSize:I
    .restart local v3       #widthMode:I
    .restart local v4       #widthSize:I
    :cond_20
    if-ne v3, v5, :cond_24

    if-eq v0, v5, :cond_1c

    .line 220
    :cond_24
    if-eq v3, v5, :cond_28

    if-ne v0, v5, :cond_36

    .line 221
    :cond_28
    if-ne v3, v5, :cond_30

    .line 223
    if-ne v0, v6, :cond_2e

    if-lt v1, v4, :cond_1c

    .line 228
    :cond_2e
    move p2, p1

    goto :goto_1c

    .line 232
    :cond_30
    if-ne v3, v6, :cond_34

    if-lt v4, v1, :cond_1c

    .line 237
    :cond_34
    move p1, p2

    goto :goto_1c

    .line 240
    :cond_36
    if-ne v3, v6, :cond_4a

    if-ne v0, v6, :cond_4a

    .line 241
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 242
    .local v2, size:I
    iget-boolean v7, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mStretchToFill:Z

    if-eqz v7, :cond_48

    :goto_42
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move p1, p2

    .line 245
    goto :goto_1c

    :cond_48
    move v5, v6

    .line 242
    goto :goto_42

    .line 245
    .end local v2           #size:I
    :cond_4a
    if-eq v3, v6, :cond_4e

    if-ne v0, v6, :cond_5f

    .line 246
    :cond_4e
    if-ne v3, v6, :cond_5b

    move v2, v4

    .line 247
    .restart local v2       #size:I
    :goto_51
    iget-boolean v7, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mStretchToFill:Z

    if-eqz v7, :cond_5d

    :goto_55
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move p1, p2

    .line 250
    goto :goto_1c

    .end local v2           #size:I
    :cond_5b
    move v2, v1

    .line 246
    goto :goto_51

    .restart local v2       #size:I
    :cond_5d
    move v5, v6

    .line 247
    goto :goto_55

    .line 251
    .end local v2           #size:I
    :cond_5f
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown modes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 263
    iget-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayoutAsSquare:Z

    if-eqz v0, :cond_31

    if-eq p1, p2, :cond_31

    .line 264
    const-string v0, "AsyncAlbumArtImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "told to layout as square, but provided sizes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") were not square"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_31
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAllowAnimation:Z

    .line 204
    return-void
.end method

.method public setAlbumId(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    move-object v0, v1

    .line 312
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :goto_c
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 313
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2f

    .line 315
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 316
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 317
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 318
    iput-object p4, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 319
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 320
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 321
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 323
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 324
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 326
    :cond_2f
    monitor-exit p0

    .line 327
    return-void

    .line 310
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_31
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_c

    .line 326
    :catchall_38
    move-exception v1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public setAllSongs(Ljava/lang/String;)V
    .registers 4
    .parameter "parentName"

    .prologue
    .line 342
    monitor-enter p0

    .line 344
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 345
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    move-object v0, v1

    .line 347
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :goto_f
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 348
    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 349
    iput-object p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 354
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 356
    :cond_2a
    monitor-exit p0

    .line 357
    return-void

    .line 345
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_2c
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 356
    :catchall_33
    move-exception v1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public setAvailable(Z)V
    .registers 5
    .parameter "available"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v1, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-ne v0, v1, :cond_21

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvailable only available in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->BACKGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_21
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mAvailable:Z

    .line 439
    if-eqz p1, :cond_2a

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :goto_29
    return-void

    .line 442
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29
.end method

.method public setExternalAlbumArt(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 380
    monitor-enter p0

    .line 382
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 383
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    move-object v0, v1

    .line 385
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :goto_f
    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 386
    :cond_1b
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 387
    iput-object p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 391
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 392
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 394
    :cond_2e
    monitor-exit p0

    .line 395
    return-void

    .line 383
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_30
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 394
    :catchall_37
    move-exception v1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setLayerMode(Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 179
    return-void
.end method

.method public setPlaylistAlbumArt(JLjava/lang/String;I)V
    .registers 8
    .parameter "id"
    .parameter "mainLabel"
    .parameter "listType"

    .prologue
    .line 360
    monitor-enter p0

    .line 362
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 363
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    move-object v0, v1

    .line 365
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :goto_f
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 366
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_30

    .line 367
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    .line 368
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    .line 369
    invoke-static {p4}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistTypeToArtStyle(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    .line 370
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 371
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 372
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 373
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 374
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 376
    :cond_30
    monitor-exit p0

    .line 377
    return-void

    .line 363
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_32
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 376
    :catchall_39
    move-exception v1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V
    .registers 8
    .parameter "albumId"
    .parameter "artist"
    .parameter "album"
    .parameter "service"

    .prologue
    .line 414
    monitor-enter p0

    .line 416
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 417
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    iget-wide v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->albumId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_43

    .line 419
    :cond_14
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 420
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->albumId:J

    .line 421
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->artist:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    iput-object p4, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->album:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    iput-object p5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;->service:Lcom/google/android/music/IMusicPlaybackService;

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 428
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 430
    :cond_43
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public setVirtualSize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 472
    if-nez p1, :cond_4

    if-eqz p2, :cond_11

    :cond_4
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v1, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-eq v0, v1, :cond_11

    .line 473
    const-string v0, "AsyncAlbumArtImageView"

    const-string v1, "Can not set virtual size if Album-Art-Mode is not FOREGROUND"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_11
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-ne v0, p1, :cond_19

    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-eq v0, p2, :cond_28

    .line 477
    :cond_19
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 478
    iput p2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 479
    monitor-enter p0

    .line 480
    const/4 v0, 0x0

    :try_start_1f
    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 482
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    .line 483
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 485
    :cond_28
    return-void

    .line 482
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public showDefaultArtwork()V
    .registers 3

    .prologue
    .line 398
    monitor-enter p0

    .line 399
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;

    if-eqz v0, :cond_d

    .line 401
    monitor-exit p0

    .line 410
    :goto_c
    return-void

    .line 403
    :cond_d
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$DefaultArtworkMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 408
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 409
    monitor-exit p0

    goto :goto_c

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

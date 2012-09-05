.class public Lcom/google/android/music/AsyncAlbumArtImageView;
.super Landroid/widget/ImageView;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncAlbumArtImageView$2;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;,
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

.field private static final sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;


# instance fields
.field private mActualArtworkSet:Z

.field private final mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

.field private mArtChangeListenerRegistered:Z

.field private mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

.field private mLoadingArtworkSet:Z

.field private mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

.field private mRequestedHeight:I

.field private mRequestedWidth:I

.field private mVirtualHeight:I

.field private mVirtualWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "AsyncAlbumArtImageView"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncAlbumArtImageView;->LOGV:Z

    .line 42
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    invoke-direct {v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 73
    sget-object v0, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->BACKGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 75
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 76
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 77
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    .line 80
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 83
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 86
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 89
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 228
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AsyncAlbumArtImageView$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 93
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    return-void
.end method

.method private getAlbumHeight()I
    .registers 2

    .prologue
    .line 276
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

.method private getAlbumWidth()I
    .registers 2

    .prologue
    .line 272
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
    .registers 24

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v7

    .line 281
    .local v7, width:I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    move-result v8

    .line 282
    .local v8, height:I
    if-lez v7, :cond_d

    if-gtz v8, :cond_f

    .line 343
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 288
    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    if-nez v2, :cond_d

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    if-ne v7, v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    if-eq v8, v2, :cond_d

    .line 293
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    if-nez v2, :cond_38

    .line 296
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 340
    :cond_2c
    :goto_2c
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 341
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_35

    goto :goto_d

    .line 280
    .end local v7           #width:I
    .end local v8           #height:I
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2

    .line 297
    .restart local v7       #width:I
    .restart local v8       #height:I
    :cond_38
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v2, :cond_76

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    .line 299
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 302
    .local v18, bitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    .local v20, drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto :goto_2c

    .line 305
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v21           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v2, :cond_b8

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    .line 307
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v21

    iget v10, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    const/4 v11, 0x1

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 310
    .restart local v18       #bitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 311
    .restart local v20       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_2c

    .line 313
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v21           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_10d

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 317
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 319
    .local v19, cachedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_ed

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_2c

    .line 323
    :cond_ed
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 326
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 327
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 328
    .local v22, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 331
    .end local v19           #cachedDrawable:Landroid/graphics/drawable/Drawable;
    .end local v21           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    .end local v22           #msg:Landroid/os/Message;
    :cond_10d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-eqz v2, :cond_2c

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 335
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 337
    .restart local v22       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_133
    .catchall {:try_start_38 .. :try_end_133} :catchall_35

    goto/16 :goto_2c
.end method

.method private declared-synchronized registerArtChangeListener()V
    .registers 5

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_1f

    .line 116
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    iget-wide v0, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 117
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-nez v2, :cond_1f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1f

    .line 118
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 122
    .end local v0           #albumId:J
    :cond_1f
    monitor-exit p0

    return-void

    .line 115
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "value"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v3, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    .line 385
    .local v1, extractBitmap:Z
    :goto_7
    if-eqz v1, :cond_32

    .line 387
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_24

    move-object v2, p1

    .line 388
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_14
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    .line 412
    :goto_21
    return-void

    .line 382
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #extractBitmap:Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_7

    .line 389
    .restart local v1       #extractBitmap:Z
    :cond_24
    instance-of v2, p1, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    if-eqz v2, :cond_30

    move-object v2, p1

    .line 390
    check-cast v2, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    invoke-virtual {v2}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_14

    .line 392
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_14

    .line 395
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_14

    .line 400
    :pswitch_34
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 405
    :pswitch_38
    if-nez v0, :cond_3e

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    .line 408
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_21

    .line 398
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method

.method private setLoadingArtwork()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 346
    iget-boolean v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    if-nez v4, :cond_12

    .line 347
    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v5, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v5}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_48

    .line 375
    :cond_12
    :goto_12
    return-void

    .line 351
    :pswitch_13
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v3

    .line 352
    .local v3, w:I
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v2

    .line 354
    .local v2, h:I
    if-eqz v3, :cond_12

    if-eqz v2, :cond_12

    .line 360
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, defaultArtwork:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 364
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_12

    .line 369
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

    .line 370
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_12

    .line 347
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3a
    .end packed-switch
.end method

.method private declared-synchronized unregisterArtChangeListener()V
    .registers 5

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_1f

    .line 126
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    iget-wide v0, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 127
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-eqz v2, :cond_1f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1f

    .line 128
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 132
    .end local v0           #albumId:J
    :cond_1f
    monitor-exit p0

    return-void

    .line 125
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public clearArtwork()V
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    .line 163
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 165
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 105
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 106
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 111
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 112
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

    .line 416
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 418
    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-nez v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    .line 419
    .local v0, isViewSizeRelevantForAlbumArt:Z
    :cond_d
    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1c

    .line 420
    monitor-enter p0

    .line 421
    const/4 v1, 0x0

    :try_start_13
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 423
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 424
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 426
    :cond_1c
    return-void

    .line 423
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public setAlbumId(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    move-object v0, v1

    .line 143
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :goto_c
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 144
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2f

    .line 146
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 147
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 148
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 149
    iput-object p4, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 152
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 154
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 155
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 157
    :cond_2f
    monitor-exit p0

    .line 158
    return-void

    .line 141
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_31
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_c

    .line 157
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
    .line 173
    monitor-enter p0

    .line 175
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 176
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    move-object v0, v1

    .line 178
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :goto_f
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 179
    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 180
    iput-object p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->parentName:Ljava/lang/String;

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 184
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 185
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 187
    :cond_2a
    monitor-exit p0

    .line 188
    return-void

    .line 176
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_2c
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 187
    :catchall_33
    move-exception v1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public setExternalAlbumArt(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 211
    monitor-enter p0

    .line 213
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 214
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    move-object v0, v1

    .line 216
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :goto_f
    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 217
    :cond_1b
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 218
    iput-object p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;->mUrl:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 223
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 225
    :cond_2e
    monitor-exit p0

    .line 226
    return-void

    .line 214
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;
    :cond_30
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$ExternalAlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 225
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
    .line 99
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 100
    return-void
.end method

.method public setPlaylistAlbumArt(JLjava/lang/String;I)V
    .registers 8
    .parameter "id"
    .parameter "mainLabel"
    .parameter "listType"

    .prologue
    .line 191
    monitor-enter p0

    .line 193
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 194
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    move-object v0, v1

    .line 196
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :goto_f
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 197
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_30

    .line 198
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    .line 199
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    .line 200
    invoke-static {p4}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistTypeToArtStyle(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->style:I

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 203
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 204
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 205
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 207
    :cond_30
    monitor-exit p0

    .line 208
    return-void

    .line 194
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_32
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    goto :goto_f

    .line 207
    :catchall_39
    move-exception v1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setVirtualSize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 256
    if-nez p1, :cond_4

    if-eqz p2, :cond_11

    :cond_4
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v1, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-eq v0, v1, :cond_11

    .line 257
    const-string v0, "AsyncAlbumArtImageView"

    const-string v1, "Can not set virtual size if Album-Art-Mode is not FOREGROUND"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_11
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-ne v0, p1, :cond_19

    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-eq v0, p2, :cond_28

    .line 261
    :cond_19
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 262
    iput p2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 263
    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_1f
    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 266
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    .line 267
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 269
    :cond_28
    return-void

    .line 266
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

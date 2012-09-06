.class public Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
.implements Lcom/google/android/music/albumwall/AlbumWallCallback;
.implements Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$GenresQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PlaylistsQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$NewAndRecentQuery;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAlbumFrame:Landroid/graphics/drawable/Drawable;

.field private mAllowOpeningItem:Z

.field private mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

.field private mAutoPlaylists:[J

.field private mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

.field private mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field private mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorMode:I

.field private mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

.field private mIsClustered:Z

.field private mIsStreamingEnabled:Z

.field private mLabelPaint:Landroid/text/TextPaint;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mOfflinePaint:Landroid/graphics/Paint;

.field private mOpenedForShortcutCreation:Z

.field private mOverlayPaint:Landroid/text/TextPaint;

.field private mRegisteredItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/albumwall/MusicItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTopLevelCursor:Landroid/database/Cursor;

.field private mTopLevelCursorObserver:Landroid/database/ContentObserver;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private mUnknownPlaylistName:Ljava/lang/String;

.field private mView:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const-string v0, "MusicAlbumWallCallback"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->LOGV:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 95
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 11
    .parameter "context"
    .parameter "view"
    .parameter "stateController"
    .parameter "preferences"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    .line 105
    iput-boolean v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 292
    new-instance v1, Lcom/google/android/music/albumwall/BitmapPool;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/BitmapPool;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    .line 294
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    .line 295
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    .line 303
    iput-boolean v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    .line 1870
    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 313
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    .line 314
    iput-object p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 315
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    .line 317
    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 318
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->initTracker()V

    .line 319
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    .line 320
    iput-object p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 322
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0076

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 327
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 328
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 329
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 331
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 332
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 333
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x4220

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 334
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 336
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0x50505050

    invoke-direct {v0, v1, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 337
    .local v0, colorFilter:Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 339
    new-instance v1, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 342
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    .line 344
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->getArtDownloadServiceConnection()Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAutoPlaylist(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForShuffleAll()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/MusicPile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)Lcom/google/android/music/albumwall/MusicPile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->initTracker()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/utils/MusicCallbackHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;FF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->switchArtistKeepOnStatus(Lcom/google/android/music/albumwall/MusicPile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;FF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForArtist(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForGenre(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method private clearCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1700
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 1701
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 1702
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1703
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1705
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1707
    :cond_17
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1708
    return-void
.end method

.method private clearTopLevelCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1714
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 1715
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 1716
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1717
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1719
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1721
    :cond_17
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1722
    return-void
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V
    .registers 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1104
    const/4 v1, 0x2

    new-array v11, v1, [I

    const/4 v1, 0x0

    move/from16 v0, p2

    float-to-int v2, v0

    aput v2, v11, v1

    const/4 v1, 0x1

    move/from16 v0, p3

    float-to-int v2, v0

    aput v2, v11, v1

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v16

    .line 1107
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_da

    .line 1141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown item type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistSort()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v12, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasLocal()Z

    move-result v15

    invoke-virtual/range {v1 .. v16}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenuWithArtistSort(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/view/View;[IIZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 1143
    :goto_5a
    return-void

    .line 1116
    :pswitch_5b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v7, 0x3

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;J[ILandroid/view/View;I)V

    goto :goto_5a

    .line 1120
    :cond_77
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getPlaylistType()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v13, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v15

    move-object v5, v1

    invoke-virtual/range {v5 .. v16}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;I[ILandroid/view/View;IZZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_5a

    .line 1127
    :pswitch_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v8, 0x3

    move-object v6, v11

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;ILcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_5a

    .line 1132
    :pswitch_b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v8, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasLocal()Z

    move-result v9

    move-object v6, v11

    move-object/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_5a

    .line 1137
    :pswitch_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v11, v3, v4}, Lcom/google/android/music/utils/ContextMenuManager;->showShuffleAllContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;[ILandroid/view/View;I)V

    goto :goto_5a

    .line 1107
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_99
        :pswitch_b1
        :pswitch_5b
        :pswitch_cd
    .end packed-switch
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x3

    .line 1147
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1148
    new-array v5, v3, [I

    const/4 v1, 0x0

    float-to-int v2, p2

    aput v2, v5, v1

    const/4 v1, 0x1

    float-to-int v2, p3

    aput v2, v5, v1

    .line 1149
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v11

    .line 1150
    if-ne v0, v3, :cond_3c

    .line 1151
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getKeepOn()Z

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasLocal()Z

    move-result v10

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZZZLcom/google/android/music/dl/INetworkMonitor;)V

    .line 1163
    :goto_3b
    return-void

    .line 1154
    :cond_3c
    if-ne v0, v7, :cond_59

    .line 1155
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasLocal()Z

    move-result v8

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(Lcom/google/android/music/activitymanagement/MusicFragment;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/dl/INetworkMonitor;)V

    goto :goto_3b

    .line 1160
    :cond_59
    const-string v1, "MusicAlbumWallCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkown pile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method private createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "item"
    .parameter "w"
    .parameter "h"
    .parameter "antiAlias"

    .prologue
    .line 563
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;
    .registers 36
    .parameter "item"
    .parameter "w"
    .parameter "h"
    .parameter "antiAlias"
    .parameter "allowCache"

    .prologue
    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, mainLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v11

    .line 572
    .local v11, subLabel:Ljava/lang/String;
    if-eqz p5, :cond_97

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1, v6}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 577
    .local v22, bitmap:Landroid/graphics/Bitmap;
    :goto_18
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 581
    .local v4, canvas:Landroid/graphics/Canvas;
    const/16 v29, 0x2

    .line 582
    .local v29, textureBorder:I
    if-nez p4, :cond_25

    .line 583
    const/16 v29, 0x0

    .line 585
    :cond_25
    mul-int/lit8 v5, v29, 0x2

    sub-int v8, p2, v5

    .line 586
    .local v8, artWidth:I
    mul-int/lit8 v5, v29, 0x2

    sub-int v9, p3, v5

    .line 588
    .local v9, artHeight:I
    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v29

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v27

    .line 590
    .local v27, itemType:I
    packed-switch v27, :pswitch_data_b0

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->fauxArtTypeForMusicItem(Lcom/google/android/music/albumwall/MusicItem;)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v16

    move-object v12, v4

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-static/range {v12 .. v21}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_56
    if-eqz p4, :cond_96

    .line 603
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 604
    .local v28, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 605
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v5

    move/from16 v24, v0

    .line 606
    .local v24, frameLeft:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v5

    move/from16 v26, v0

    .line 607
    .local v26, frameTop:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int v25, v8, v5

    .line 608
    .local v25, frameRight:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int v23, v9, v5

    .line 609
    .local v23, frameBottom:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 612
    .end local v23           #frameBottom:I
    .end local v24           #frameLeft:I
    .end local v25           #frameRight:I
    .end local v26           #frameTop:I
    .end local v28           #padding:Landroid/graphics/Rect;
    :cond_96
    return-object v22

    .line 575
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v8           #artWidth:I
    .end local v9           #artHeight:I
    .end local v22           #bitmap:Landroid/graphics/Bitmap;
    .end local v27           #itemType:I
    .end local v29           #textureBorder:I
    :cond_97
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .restart local v22       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_18

    .line 592
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #artWidth:I
    .restart local v9       #artHeight:I
    .restart local v27       #itemType:I
    .restart local v29       #textureBorder:I
    :pswitch_a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v6

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 590
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a3
    .end packed-switch
.end method

.method private createItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/MusicItem;
    .registers 45
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"

    .prologue
    .line 643
    move-object/from16 v26, p1

    check-cast v26, Lcom/google/android/music/albumwall/MusicPile;

    .line 644
    .local v26, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    new-instance v20, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 645
    .local v20, item:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v14

    .line 646
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v25

    .line 649
    .local v25, mode:I
    if-eqz p2, :cond_cc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    move/from16 v37, v0

    if-eqz v37, :cond_cc

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_cc

    .line 650
    if-nez p3, :cond_ca

    .line 651
    const/16 v37, 0x2

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_b9

    const/16 v19, 0x1

    .line 652
    .local v19, isArtists:Z
    :goto_3d
    if-eqz v19, :cond_bc

    const/16 v37, 0x1

    :goto_41
    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 654
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v17

    .line 655
    .local v17, id:J
    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 656
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v22

    .line 657
    .local v22, label:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 660
    .local v28, overlay:Ljava/lang/String;
    if-eqz v19, :cond_aa

    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v37

    move-object/from16 v0, v20

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v37

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getArtistCursor(J)Landroid/database/Cursor;

    move-result-object v7

    .line 663
    .local v7, artistCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_aa

    .line 665
    :try_start_76
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v37

    if-lez v37, :cond_a7

    .line 666
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 667
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_bf

    const/16 v16, 0x1

    .line 668
    .local v16, hasRemote:Z
    :goto_91
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_c2

    const/16 v21, 0x1

    .line 669
    .local v21, keepOn:Z
    :goto_9d
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 670
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V
    :try_end_a7
    .catchall {:try_start_76 .. :try_end_a7} :catchall_c5

    .line 673
    .end local v16           #hasRemote:Z
    .end local v21           #keepOn:Z
    :cond_a7
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 678
    .end local v7           #artistCursor:Landroid/database/Cursor;
    :cond_aa
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 844
    .end local v17           #id:J
    .end local v19           #isArtists:Z
    .end local v20           #item:Lcom/google/android/music/albumwall/MusicItem;
    .end local v22           #label:Ljava/lang/String;
    .end local v28           #overlay:Ljava/lang/String;
    :goto_b8
    return-object v20

    .line 651
    .restart local v20       #item:Lcom/google/android/music/albumwall/MusicItem;
    :cond_b9
    const/16 v19, 0x0

    goto :goto_3d

    .line 652
    .restart local v19       #isArtists:Z
    :cond_bc
    const/16 v37, 0x2

    goto :goto_41

    .line 667
    .restart local v7       #artistCursor:Landroid/database/Cursor;
    .restart local v17       #id:J
    .restart local v22       #label:Ljava/lang/String;
    .restart local v28       #overlay:Ljava/lang/String;
    :cond_bf
    const/16 v16, 0x0

    goto :goto_91

    .line 668
    .restart local v16       #hasRemote:Z
    :cond_c2
    const/16 v21, 0x0

    goto :goto_9d

    .line 673
    .end local v16           #hasRemote:Z
    :catchall_c5
    move-exception v37

    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v37

    .line 682
    .end local v7           #artistCursor:Landroid/database/Cursor;
    .end local v17           #id:J
    .end local v19           #isArtists:Z
    .end local v22           #label:Ljava/lang/String;
    .end local v28           #overlay:Ljava/lang/String;
    :cond_ca
    add-int/lit8 p3, p3, -0x1

    .line 687
    :cond_cc
    if-eqz p2, :cond_137

    const/16 v37, 0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_137

    .line 688
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAutoPlaylists()[J

    move-result-object v13

    .line 689
    .local v13, autoPlaylists:[J
    array-length v0, v13

    move/from16 v37, v0

    move/from16 v0, p3

    move/from16 v1, v37

    if-ge v0, v1, :cond_132

    .line 690
    aget-wide v11, v13, p3

    .line 691
    .local v11, autoPlaylistId:J
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v38, v0

    move/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v11, v12, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v23

    .line 693
    .local v23, list:Lcom/google/android/music/medialist/AutoPlaylist;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 694
    .restart local v22       #label:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 695
    .restart local v28       #overlay:Ljava/lang/String;
    const/16 v37, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 696
    const/16 v37, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 697
    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 699
    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 700
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    goto :goto_b8

    .line 704
    .end local v11           #autoPlaylistId:J
    .end local v22           #label:Ljava/lang/String;
    .end local v23           #list:Lcom/google/android/music/medialist/AutoPlaylist;
    .end local v28           #overlay:Ljava/lang/String;
    :cond_132
    array-length v0, v13

    move/from16 v37, v0

    sub-int p3, p3, v37

    .line 709
    .end local v13           #autoPlaylists:[J
    :cond_137
    const/16 v37, 0x6

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_14c

    .line 710
    if-nez p3, :cond_14a

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setShuffleAllPlaylistItem(Lcom/google/android/music/albumwall/MusicItem;)V

    goto/16 :goto_b8

    .line 714
    :cond_14a
    add-int/lit8 p3, p3, -0x1

    .line 718
    :cond_14c
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v37

    move/from16 v0, p3

    move/from16 v1, v37

    if-lt v0, v1, :cond_15a

    .line 719
    const/16 v20, 0x0

    goto/16 :goto_b8

    .line 721
    :cond_15a
    move/from16 v0, p3

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 723
    packed-switch v25, :pswitch_data_47e

    .line 842
    :pswitch_162
    const-string v37, "MusicAlbumWallCallback"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unsupported mode: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    new-instance v39, Ljava/lang/RuntimeException;

    invoke-direct/range {v39 .. v39}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static/range {v37 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b8

    .line 725
    :pswitch_185
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_238

    const/16 v36, 0x0

    .line 731
    .local v36, type:I
    :goto_191
    if-nez v36, :cond_23c

    .line 732
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 733
    .local v4, albumId:J
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 734
    .local v24, mainLabel:Ljava/lang/String;
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 735
    .local v35, subLabel:Ljava/lang/String;
    const/16 v33, 0x0

    .line 742
    .local v33, playlistType:I
    :goto_1bd
    invoke-static/range {v24 .. v24}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 744
    .restart local v28       #overlay:Ljava/lang/String;
    const/16 v37, 0x7

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_260

    const/16 v16, 0x1

    .line 745
    .restart local v16       #hasRemote:Z
    :goto_1d3
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    if-eqz v37, :cond_264

    const/4 v15, 0x1

    .line 746
    .local v15, hasLocal:Z
    :goto_1de
    const/16 v37, 0x9

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_267

    const/16 v21, 0x1

    .line 750
    .restart local v21       #keepOn:Z
    :goto_1ea
    const v37, 0x3b9aca00

    add-int v37, v37, p3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 751
    .local v34, sortKey:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 752
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 753
    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 754
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 755
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 760
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 761
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_b8

    .line 725
    .end local v4           #albumId:J
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v21           #keepOn:Z
    .end local v24           #mainLabel:Ljava/lang/String;
    .end local v28           #overlay:Ljava/lang/String;
    .end local v33           #playlistType:I
    .end local v34           #sortKey:Ljava/lang/String;
    .end local v35           #subLabel:Ljava/lang/String;
    .end local v36           #type:I
    :cond_238
    const/16 v36, 0x3

    goto/16 :goto_191

    .line 737
    .restart local v36       #type:I
    :cond_23c
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 738
    .restart local v24       #mainLabel:Ljava/lang/String;
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 739
    .restart local v4       #albumId:J
    const-string v35, ""

    .line 740
    .restart local v35       #subLabel:Ljava/lang/String;
    const/16 v37, 0x6

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .restart local v33       #playlistType:I
    goto/16 :goto_1bd

    .line 744
    .restart local v28       #overlay:Ljava/lang/String;
    :cond_260
    const/16 v16, 0x0

    goto/16 :goto_1d3

    .line 745
    .restart local v16       #hasRemote:Z
    :cond_264
    const/4 v15, 0x0

    goto/16 :goto_1de

    .line 746
    .restart local v15       #hasLocal:Z
    :cond_267
    const/16 v21, 0x0

    goto :goto_1ea

    .line 765
    .end local v4           #albumId:J
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v24           #mainLabel:Ljava/lang/String;
    .end local v28           #overlay:Ljava/lang/String;
    .end local v33           #playlistType:I
    .end local v35           #subLabel:Ljava/lang/String;
    .end local v36           #type:I
    :pswitch_26a
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 766
    .restart local v4       #albumId:J
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 767
    .local v8, artistId:J
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, album:Ljava/lang/String;
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, artist:Ljava/lang/String;
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 770
    .restart local v34       #sortKey:Ljava/lang/String;
    const/16 v37, 0x6

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 771
    .local v10, artistSortKey:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 772
    .restart local v28       #overlay:Ljava/lang/String;
    const/16 v37, 0x7

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_31d

    const/16 v16, 0x1

    .line 773
    .restart local v16       #hasRemote:Z
    :goto_2c0
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    if-eqz v37, :cond_320

    const/4 v15, 0x1

    .line 774
    .restart local v15       #hasLocal:Z
    :goto_2cb
    const/16 v37, 0x9

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_322

    const/16 v21, 0x1

    .line 775
    .restart local v21       #keepOn:Z
    :goto_2d7
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 776
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 777
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 778
    const/16 v37, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 779
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/google/android/music/albumwall/MusicItem;->setArtistSort(Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 785
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 786
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_b8

    .line 772
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v21           #keepOn:Z
    :cond_31d
    const/16 v16, 0x0

    goto :goto_2c0

    .line 773
    .restart local v16       #hasRemote:Z
    :cond_320
    const/4 v15, 0x0

    goto :goto_2cb

    .line 774
    .restart local v15       #hasLocal:Z
    :cond_322
    const/16 v21, 0x0

    goto :goto_2d7

    .line 790
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #artist:Ljava/lang/String;
    .end local v8           #artistId:J
    .end local v10           #artistSortKey:Ljava/lang/String;
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v28           #overlay:Ljava/lang/String;
    .end local v34           #sortKey:Ljava/lang/String;
    :pswitch_325
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 791
    .local v31, playlistId:J
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 792
    .local v27, name:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 793
    .restart local v28       #overlay:Ljava/lang/String;
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3b6

    const/16 v16, 0x1

    .line 794
    .restart local v16       #hasRemote:Z
    :goto_353
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    if-eqz v37, :cond_3b9

    const/4 v15, 0x1

    .line 795
    .restart local v15       #hasLocal:Z
    :goto_35e
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_3bb

    const/16 v21, 0x1

    .line 796
    .restart local v21       #keepOn:Z
    :goto_36a
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 797
    .restart local v33       #playlistType:I
    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 798
    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 799
    const/16 v37, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 800
    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 801
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 805
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 806
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_b8

    .line 793
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v21           #keepOn:Z
    .end local v33           #playlistType:I
    :cond_3b6
    const/16 v16, 0x0

    goto :goto_353

    .line 794
    .restart local v16       #hasRemote:Z
    :cond_3b9
    const/4 v15, 0x0

    goto :goto_35e

    .line 795
    .restart local v15       #hasLocal:Z
    :cond_3bb
    const/16 v21, 0x0

    goto :goto_36a

    .line 811
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #overlay:Ljava/lang/String;
    .end local v31           #playlistId:J
    :pswitch_3be
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v37

    move-object/from16 v0, v20

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 816
    :pswitch_3c9
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 817
    .restart local v4       #albumId:J
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .restart local v3       #album:Ljava/lang/String;
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 819
    .restart local v6       #artist:Ljava/lang/String;
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 820
    .restart local v34       #sortKey:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 824
    .restart local v28       #overlay:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v29

    .line 825
    .local v29, pileId:J
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_475

    const/16 v16, 0x1

    .line 826
    .restart local v16       #hasRemote:Z
    :goto_413
    const/16 v37, 0x6

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    if-eqz v37, :cond_478

    const/4 v15, 0x1

    .line 827
    .restart local v15       #hasLocal:Z
    :goto_41e
    const/16 v37, 0x7

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-nez v37, :cond_47a

    const/16 v21, 0x1

    .line 828
    .restart local v21       #keepOn:Z
    :goto_42a
    const/16 v37, 0x20

    shl-long v37, v29, v37

    const-wide v39, 0xffffffffL

    and-long v39, v39, v4

    or-long v37, v37, v39

    move-object/from16 v0, v20

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 829
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 830
    const/16 v37, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 831
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 836
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 837
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_b8

    .line 825
    .end local v15           #hasLocal:Z
    .end local v16           #hasRemote:Z
    .end local v21           #keepOn:Z
    :cond_475
    const/16 v16, 0x0

    goto :goto_413

    .line 826
    .restart local v16       #hasRemote:Z
    :cond_478
    const/4 v15, 0x0

    goto :goto_41e

    .line 827
    .restart local v15       #hasLocal:Z
    :cond_47a
    const/16 v21, 0x0

    goto :goto_42a

    .line 723
    nop

    :pswitch_data_47e
    .packed-switch 0x0
        :pswitch_26a
        :pswitch_325
        :pswitch_3be
        :pswitch_3c9
        :pswitch_162
        :pswitch_162
        :pswitch_185
    .end packed-switch
.end method

.method private createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1167
    invoke-virtual {p5, p1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v3

    .line 1169
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4e

    move v2, v0

    .line 1171
    :goto_b
    if-eqz v2, :cond_50

    invoke-virtual {p5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getIsExpandedClusterLabelHorizontal()Z

    move-result v4

    if-nez v4, :cond_50

    .line 1173
    :goto_13
    if-nez p3, :cond_52

    .line 1175
    :goto_15
    new-instance v1, Lcom/google/android/music/utils/LabelMaker;

    invoke-direct {v1, p2, v3}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;)V

    .line 1179
    if-eqz v2, :cond_2a

    .line 1180
    invoke-virtual {v1}, Lcom/google/android/music/utils/LabelMaker;->measure()V

    .line 1181
    invoke-virtual {v1}, Lcom/google/android/music/utils/LabelMaker;->getTextRightClipped()I

    move-result v2

    .line 1182
    iput v2, v3, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1183
    iget v2, v3, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/utils/LabelMaker;->setWidth(I)V

    .line 1186
    :cond_2a
    invoke-virtual {v1}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1198
    if-eqz v0, :cond_6a

    .line 1200
    iget v0, v3, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 1201
    iget v2, v3, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1202
    iget-object v3, v3, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1203
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1204
    const/high16 v4, -0x3d4c

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1205
    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1206
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1210
    :goto_4d
    return-object v0

    :cond_4e
    move v2, v1

    .line 1169
    goto :goto_b

    :cond_50
    move v0, v1

    .line 1171
    goto :goto_13

    .line 1173
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_15

    :cond_6a
    move-object v0, v1

    goto :goto_4d
.end method

.method private createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1222
    const v0, 0x7f020052

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1225
    instance-of v0, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v0, :cond_2e

    move-object v0, p1

    .line 1226
    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    .line 1227
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v1

    .line 1228
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicItem;->isItemAllSongs()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1230
    :cond_29
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1256
    :goto_2d
    return-object v0

    .line 1234
    :cond_2e
    instance-of v0, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v0, :cond_41

    move-object v0, p1

    .line 1235
    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    .line 1236
    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v0

    .line 1237
    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 1238
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2d

    .line 1241
    :cond_41
    const v0, 0x7f02005f

    .line 1242
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getHasRemote()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1243
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v0

    .line 1244
    if-eqz v0, :cond_5e

    const v0, 0x7f020060

    .line 1254
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2d

    .line 1244
    :cond_5e
    const v0, 0x7f020061

    goto :goto_53

    .line 1247
    :cond_62
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v1

    if-nez v1, :cond_53

    .line 1248
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2d
.end method

.method private createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f00

    .line 1269
    if-nez p1, :cond_6

    .line 1270
    const-string p1, " "

    .line 1272
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 1273
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 1276
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    add-int/lit8 v3, v1, -0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1277
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1279
    int-to-float v3, v0

    sub-float v2, v3, v2

    mul-float/2addr v2, v6

    .line 1281
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1282
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1283
    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    .line 1284
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    .line 1286
    int-to-float v1, v1

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    mul-float/2addr v1, v6

    const/high16 v4, 0x4000

    sub-float/2addr v1, v4

    .line 1288
    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, p1, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1289
    return-object v0
.end method

.method private createPlaceholderMark()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1263
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1264
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "albumName"

    .prologue
    .line 870
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 871
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 873
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "artistName"

    .prologue
    .line 856
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 857
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 859
    .end local p1
    :cond_8
    return-object p1
.end method

.method public static effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "overlayLabel"

    .prologue
    .line 877
    move-object v2, p0

    .line 878
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 879
    .local v1, len:I
    const/4 v3, 0x1

    if-le v1, v3, :cond_1e

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, i:I
    :goto_9
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_18

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 885
    :cond_18
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 888
    .end local v0           #i:I
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 863
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 864
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 866
    .end local p1
    :cond_8
    return-object p1
.end method

.method private fauxArtTypeForMusicItem(Lcom/google/android/music/albumwall/MusicItem;)I
    .registers 6
    .parameter "item"

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    .line 617
    .local v0, musicItemType:I
    packed-switch v0, :pswitch_data_1e

    .line 631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown music item type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :pswitch_f
    const/4 v2, 0x0

    .line 629
    :goto_10
    return v2

    .line 621
    :pswitch_11
    const/4 v2, 0x5

    goto :goto_10

    .line 624
    :pswitch_13
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getPlaylistType()I

    move-result v1

    .line 625
    .local v1, playlistType:I
    invoke-static {v1}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistTypeToArtStyle(I)I

    move-result v2

    goto :goto_10

    .line 629
    .end local v1           #playlistType:I
    :pswitch_1c
    const/4 v2, 0x4

    goto :goto_10

    .line 617
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_1c
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method private findCurrentIndexOfItem(Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1430
    iget-object v0, p2, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v3

    .line 1431
    if-eqz v3, :cond_12

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_18

    .line 1432
    :cond_12
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1466
    :goto_17
    return-object v0

    .line 1434
    :cond_18
    if-nez p1, :cond_20

    .line 1435
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v0, v2, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_17

    .line 1440
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1441
    packed-switch v0, :pswitch_data_52

    .line 1463
    :pswitch_29
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_42
    move v0, v1

    .line 1466
    :goto_43
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v0

    goto :goto_17

    .line 1449
    :pswitch_48
    const/4 v2, 0x3

    move v0, v1

    .line 1451
    goto :goto_43

    :pswitch_4b
    move v0, v2

    move v2, v1

    .line 1456
    goto :goto_43

    .line 1459
    :pswitch_4e
    const/4 v2, 0x4

    move v0, v1

    .line 1461
    goto :goto_43

    .line 1441
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_4e
        :pswitch_29
        :pswitch_29
        :pswitch_42
    .end packed-switch
.end method

.method private findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .registers 9
    .parameter "pile"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 1470
    if-nez p1, :cond_9

    .line 1471
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v4, v5, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    .line 1490
    :goto_8
    return-object v4

    .line 1474
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v3

    .line 1475
    .local v3, mode:I
    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1476
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1f

    .line 1477
    :cond_19
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    goto :goto_8

    .line 1482
    :cond_1f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 1483
    const/4 v2, 0x2

    .line 1484
    .local v2, keyIndex:I
    const/4 v1, 0x0

    .line 1490
    .local v1, idIndex:I
    :goto_24
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    goto :goto_8

    .line 1486
    .end local v1           #idIndex:I
    .end local v2           #keyIndex:I
    :cond_29
    const/4 v2, 0x1

    .line 1487
    .restart local v2       #keyIndex:I
    const/4 v1, 0x0

    .restart local v1       #idIndex:I
    goto :goto_24
.end method

.method private formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1819
    invoke-static {v0, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 1820
    const v2, 0x7f0d012c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    return-object v0
.end method

.method private formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1826
    invoke-static {v0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 1827
    const v2, 0x7f0d012f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    return-object v0
.end method

.method public static getAccessibilitySongCountLabel(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1782
    invoke-static {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)I

    move-result v0

    .line 1783
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1784
    const v2, 0x7f0c0001

    invoke-static {v1, v2, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getQuantityText(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlbumCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I
    .registers 6
    .parameter "context"
    .parameter "pile"

    .prologue
    .line 1749
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v0

    .line 1750
    .local v0, mode:I
    packed-switch v0, :pswitch_data_38

    .line 1757
    const-string v1, "MusicAlbumWallCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1752
    :pswitch_26
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1754
    :pswitch_2f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1750
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method private getArtistCursor(J)Landroid/database/Cursor;
    .registers 10
    .parameter "artistId"

    .prologue
    const/4 v3, 0x0

    .line 1603
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1607
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getAutoPlaylists()[J
    .registers 4

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    if-nez v0, :cond_f

    .line 2059
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;Z)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 2062
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    return-object v0
.end method

.method private getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1619
    if-nez p1, :cond_d

    .line 1620
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v0, :cond_c

    .line 1621
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 1622
    iput-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    .line 1693
    :cond_c
    :goto_c
    return-object v3

    .line 1626
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/MusicPile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1627
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 1629
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v6

    .line 1630
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorMode:I

    if-eq v0, v6, :cond_4d

    .line 1631
    const-string v0, "MusicAlbumWallCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewMode unexpectedly changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 1634
    :cond_4d
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9c

    .line 1636
    packed-switch v6, :pswitch_data_f0

    .line 1674
    :pswitch_54
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$NewAndRecentQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1676
    :goto_79
    new-instance v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1677
    iput v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorMode:I

    .line 1678
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    .line 1679
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1689
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9c

    .line 1690
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1693
    :cond_9c
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_c

    .line 1643
    :pswitch_a0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsSortedByAlbumUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_79

    .line 1648
    :pswitch_af
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PlaylistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_79

    .line 1653
    :pswitch_bc
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    .line 1655
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_79

    .line 1661
    :pswitch_cf
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    .line 1663
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_79

    .line 1669
    :pswitch_e2
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "dummy"

    aput-object v2, v1, v0

    .line 1670
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_79

    .line 1636
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_af
        :pswitch_bc
        :pswitch_cf
        :pswitch_54
        :pswitch_e2
        :pswitch_6d
    .end packed-switch
.end method

.method private getPileCount()I
    .registers 3

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1547
    .local v0, mode:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1548
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1550
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x1

    goto :goto_14
.end method

.method private static getQuantityText(Landroid/content/res/Resources;II)Ljava/lang/String;
    .registers 8
    .parameter "res"
    .parameter "resId"
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 1836
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, songString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1841
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatter:Ljava/util/Formatter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1842
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSongAndCountLabel(Landroid/content/Context;ZLcom/google/android/music/albumwall/MusicPile;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "forAccessibility"
    .parameter "pile"

    .prologue
    .line 1743
    invoke-static {p0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAlbumCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v0

    .line 1744
    .local v0, albumCount:I
    invoke-static {p0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v1

    .line 1745
    .local v1, songCount:I
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/music/MusicUtils;->makeSongAndAlbumCountLabel(Landroid/content/Context;ZII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)I
    .registers 11
    .parameter "context"
    .parameter "musicItem"
    .parameter "prefs"

    .prologue
    .line 1788
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v1

    .line 1789
    .local v1, itemType:I
    const/4 v4, 0x0

    .line 1790
    .local v4, songCount:I
    packed-switch v1, :pswitch_data_46

    .line 1814
    :goto_8
    return v4

    .line 1792
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v4

    .line 1793
    goto :goto_8

    .line 1795
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v4

    .line 1796
    goto :goto_8

    .line 1798
    :pswitch_1b
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    .line 1799
    .local v2, playListId:J
    invoke-static {v2, v3}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1800
    const/4 v6, 0x0

    invoke-static {v2, v3, v6, p2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 1802
    .local v0, autoPlaylist:Lcom/google/android/music/medialist/AutoPlaylist;
    invoke-virtual {v0, p0}, Lcom/google/android/music/medialist/AutoPlaylist;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 1803
    .local v5, uri:Landroid/net/Uri;
    invoke-static {p0, v5}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    .line 1804
    goto :goto_8

    .line 1805
    .end local v0           #autoPlaylist:Lcom/google/android/music/medialist/AutoPlaylist;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsCount(Landroid/content/Context;J)I

    move-result v4

    goto :goto_8

    .line 1811
    .end local v2           #playListId:J
    :pswitch_3c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumCount(Landroid/content/Context;J)I

    move-result v4

    goto :goto_8

    .line 1790
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_9
        :pswitch_12
        :pswitch_1b
    .end packed-switch
.end method

.method private static getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I
    .registers 6
    .parameter "context"
    .parameter "pile"

    .prologue
    .line 1763
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v0

    .line 1764
    .local v0, mode:I
    packed-switch v0, :pswitch_data_38

    .line 1771
    const-string v1, "MusicAlbumWallCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1766
    :pswitch_26
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1768
    :pswitch_2f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1764
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method

.method private getSongCount(Lcom/google/android/music/albumwall/MusicItem;)I
    .registers 4
    .parameter "musicItem"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, p1, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)I

    move-result v0

    return v0
.end method

.method private static getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1832
    const/high16 v0, 0x7f0c

    invoke-static {p0, v0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getQuantityText(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTopLevelCursor(I)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1558
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-nez v0, :cond_48

    .line 1560
    packed-switch p1, :pswitch_data_58

    .line 1572
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1562
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1574
    :goto_2d
    new-instance v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1575
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1585
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1588
    :cond_48
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    return-object v0

    .line 1567
    :pswitch_4b
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$GenresQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2d

    .line 1560
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_21
        :pswitch_4b
    .end packed-switch
.end method

.method private getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1986
    .line 1988
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1989
    if-nez v1, :cond_6

    .line 2012
    :cond_5
    :goto_5
    return-object v0

    .line 1992
    :cond_6
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v2, :cond_43

    .line 1995
    check-cast p1, Lcom/google/android/music/albumwall/MusicItem;

    .line 1996
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    .line 1997
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    .line 1999
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 2000
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    if-nez v4, :cond_2b

    .line 2002
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 2003
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 2004
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 2006
    :cond_3b
    const-string v1, "MusicAlbumWallCallback"

    const-string v2, "Unsupported KeepOn item!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2008
    :cond_43
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v2, :cond_5

    .line 2009
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method private initTracker()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 350
    return-void
.end method

.method private isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 1969
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getKeepOn()Z

    move-result v0

    .line 1970
    .local v0, keepOn:Z
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1972
    .local v1, uiKeepOn:Ljava/lang/Boolean;
    if-eqz v1, :cond_e

    .line 1973
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1975
    :cond_e
    return v0
.end method

.method private openAllSongsForArtist(JLjava/lang/String;)V
    .registers 5
    .parameter "artist_id"
    .parameter "artistName"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAllSongsByArtist(JLjava/lang/String;)V

    .line 1864
    return-void
.end method

.method private openAllSongsForGenre(JLjava/lang/String;)V
    .registers 5
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAllSongsInGenre(JLjava/lang/String;)V

    .line 1868
    return-void
.end method

.method private openTrackBrowserForAlbum(J)V
    .registers 10
    .parameter "album_id"

    .prologue
    const-wide/16 v3, -0x1

    .line 1851
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAlbum(JJJ)V

    .line 1852
    return-void
.end method

.method private openTrackBrowserForAutoPlaylist(J)V
    .registers 4
    .parameter "playlistId"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAutoPlaylist(J)V

    .line 1860
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForPlaylist(JLjava/lang/String;I)V

    .line 1856
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 1846
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1847
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 1848
    return-void
.end method

.method private searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .registers 15
    .parameter "item"
    .parameter "c"
    .parameter "keyIndex"
    .parameter "idIndex"

    .prologue
    const/4 v8, 0x0

    .line 1506
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->hasSortKey()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1507
    :cond_9
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1542
    :goto_e
    return-object v6

    .line 1510
    :cond_f
    const/4 v5, 0x0

    .line 1511
    .local v5, start:I
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 1512
    .local v1, end:I
    move v3, v5

    .line 1513
    .local v3, probe:I
    :goto_17
    if-gt v5, v1, :cond_4a

    .line 1514
    add-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 1515
    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1516
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1518
    .local v4, probeKey:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getSortKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1519
    .local v0, compare:I
    if-nez v0, :cond_42

    .line 1521
    const/4 v2, 0x0

    .line 1522
    .local v2, isIdSame:Z
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v6

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3c

    .line 1523
    const/4 v2, 0x1

    .line 1529
    :cond_3c
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_e

    .line 1530
    .end local v2           #isIdSame:Z
    :cond_42
    if-gez v0, :cond_47

    .line 1531
    add-int/lit8 v5, v3, 0x1

    goto :goto_17

    .line 1533
    :cond_47
    add-int/lit8 v1, v3, -0x1

    goto :goto_17

    .line 1538
    .end local v0           #compare:I
    .end local v4           #probeKey:Ljava/lang/String;
    :cond_4a
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1542
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_e
.end method

.method private setShuffleAllPlaylistItem(Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 848
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v3, 0x7f0d013c

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, overlay:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 851
    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p1, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method private switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 8
    .parameter

    .prologue
    .line 1907
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1908
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v0

    .line 1909
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1910
    if-nez v1, :cond_f

    .line 1939
    :cond_e
    :goto_e
    return-void

    .line 1913
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    .line 1915
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    .line 1916
    if-eqz v0, :cond_30

    .line 1917
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    .line 1921
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 1922
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v2

    .line 1923
    if-eqz v0, :cond_34

    .line 1924
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_e

    .line 1919
    :cond_30
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_1f

    .line 1926
    :cond_34
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_e

    .line 1928
    :cond_38
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    if-nez v2, :cond_54

    .line 1929
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    .line 1930
    if-eqz v0, :cond_4c

    .line 1931
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_e

    .line 1933
    :cond_4c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_e

    .line 1936
    :cond_54
    const-string v0, "MusicAlbumWallCallback"

    const-string v1, "Item is not supported for KeepOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private switchArtistKeepOnStatus(Lcom/google/android/music/albumwall/MusicPile;)V
    .registers 7
    .parameter "pile"

    .prologue
    .line 1946
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1947
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v3

    .line 1948
    .local v3, wasKept:Z
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1949
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v2, :cond_f

    .line 1960
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v3           #wasKept:Z
    :cond_e
    :goto_e
    return-void

    .line 1952
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v3       #wasKept:Z
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v0

    .line 1953
    .local v0, artistId:J
    if-eqz v3, :cond_19

    .line 1954
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_e

    .line 1956
    :cond_19
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_e
.end method


# virtual methods
.method public getAlbumArtistIndexForPile(Lcom/google/android/music/albumwall/MusicPile;)I
    .registers 7
    .parameter "pile"

    .prologue
    .line 1293
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v2

    .line 1294
    .local v2, mode:I
    invoke-direct {p0, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1296
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    .line 1297
    .local v3, result:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget-boolean v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v4, :cond_2a

    .line 1298
    iget v0, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1299
    .local v0, albumIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1300
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getSortKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 1305
    .end local v0           #albumIndex:I
    :goto_29
    return v0

    :cond_2a
    const/4 v0, -0x1

    goto :goto_29
.end method

.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wall/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getModeDebugString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isManageMusicMode()Z
    .registers 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public notifyAlbumArtChanged(J)V
    .registers 8
    .parameter "albumId"

    .prologue
    .line 930
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 931
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    if-eqz v2, :cond_25

    .line 932
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    .line 933
    .local v1, item:Lcom/google/android/music/albumwall/MusicItem;
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    goto :goto_12

    .line 936
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/android/music/albumwall/MusicItem;
    :cond_25
    return-void
.end method

.method public onAlbumChanged(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2020
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 2021
    return-void
.end method

.method public onArtistChanged(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2016
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 2017
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    .line 358
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v2}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v2, v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 366
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 367
    .local v1, key:Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    goto :goto_1f

    .line 369
    .end local v1           #key:Ljava/lang/Long;
    :cond_35
    return-void
.end method

.method public onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 2025
    return-void
.end method

.method public onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V
    .registers 4
    .parameter "item"
    .parameter "entered"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView;->onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V

    .line 2033
    return-void
.end method

.method public onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .registers 6
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1100
    :cond_6
    :goto_6
    return-void

    .line 1091
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_6

    .line 1094
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public onItemPartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .registers 7
    .parameter "partId"
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_5

    .line 988
    :goto_4
    return-void

    .line 978
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    if-nez v0, :cond_5

    .line 1069
    :goto_4
    return-void

    .line 1018
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    .line 1020
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public onMusicModeStateChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 1887
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 1888
    .local v0, offlineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-ne v1, v0, :cond_9

    .line 1900
    :goto_8
    return-void

    .line 1892
    :cond_9
    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1893
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->setManageAlbumMode(Z)V

    .line 1894
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1895
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 1896
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 1899
    :cond_24
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    goto :goto_8
.end method

.method public onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V
    .registers 4
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView;->onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V

    .line 2029
    return-void
.end method

.method public onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V
    .registers 5
    .parameter "pile"
    .parameter "expanded"
    .parameter "entered"

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallView;->onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V

    .line 2037
    return-void
.end method

.method public onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .registers 6
    .parameter "pile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    :cond_6
    :goto_6
    return-void

    .line 1076
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_6

    .line 1079
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$5;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public onPilePartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .registers 7
    .parameter "partId"
    .parameter "pile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_5

    .line 1006
    :goto_4
    return-void

    .line 996
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public onRecycleItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 1315
    packed-switch p1, :pswitch_data_a

    .line 1326
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1329
    :pswitch_8
    return-void

    .line 1315
    nop

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onRecyclePileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .registers 6
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p4}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1312
    return-void
.end method

.method public onRegisterForItemTextureChangeNotification(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 9
    .parameter "item"
    .parameter "type"

    .prologue
    .line 892
    move-object v3, p1

    check-cast v3, Lcom/google/android/music/albumwall/MusicItem;

    .line 893
    .local v3, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    const/4 v5, 0x3

    if-ne p2, v5, :cond_30

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v5

    if-nez v5, :cond_30

    .line 895
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v0

    .line 896
    .local v0, albumId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 897
    .local v2, key:Ljava/lang/Long;
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 898
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    if-nez v4, :cond_2d

    .line 899
    new-instance v4, Ljava/util/HashSet;

    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 900
    .restart local v4       #set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v5, v0, v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->registerAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 903
    :cond_2d
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 905
    .end local v0           #albumId:J
    .end local v2           #key:Ljava/lang/Long;
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    :cond_30
    return-void
.end method

.method public onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V
    .registers 9
    .parameter "pile"
    .parameter "reply"

    .prologue
    const/4 v5, 0x0

    .line 940
    move-object v4, p1

    check-cast v4, Lcom/google/android/music/albumwall/MusicPile;

    .line 941
    .local v4, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v1

    .line 942
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_e

    .line 943
    invoke-interface {p2, v5, v5}, Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;->reply(II)V

    .line 971
    :goto_d
    return-void

    .line 945
    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 946
    .local v0, count:I
    move v2, v0

    .line 947
    .local v2, expandedCount:I
    const/4 v5, 0x1

    if-le v0, v5, :cond_1c

    iget-boolean v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    if-eqz v5, :cond_1c

    .line 948
    add-int/lit8 v2, v2, 0x1

    .line 951
    :cond_1c
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v3

    .line 952
    .local v3, mode:I
    sparse-switch v3, :sswitch_data_36

    .line 969
    :cond_25
    :goto_25
    invoke-interface {p2, v0, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;->reply(II)V

    goto :goto_d

    .line 955
    :sswitch_29
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAutoPlaylists()[J

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 956
    goto :goto_25

    .line 959
    :sswitch_30
    if-lez v0, :cond_25

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 952
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_29
        0x6 -> :sswitch_30
    .end sparse-switch
.end method

.method public onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V
    .registers 6
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "reply"

    .prologue
    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/MusicItem;

    move-result-object v0

    .line 639
    .local v0, item:Lcom/google/android/music/albumwall/MusicItem;
    invoke-interface {p4, v0}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 640
    return-void
.end method

.method public onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
    .registers 26
    .parameter "type"
    .parameter "item"
    .parameter "config"
    .parameter "reply"

    .prologue
    .line 475
    move-object/from16 v14, p2

    check-cast v14, Lcom/google/android/music/albumwall/MusicItem;

    .line 476
    .local v14, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v7, p3

    .line 477
    .local v7, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v8, 0x0

    .line 479
    .local v8, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_11e

    .line 559
    :goto_a
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 560
    return-void

    .line 481
    :pswitch_10
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 482
    .local v18, w:I
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v2

    float-to-int v10, v2

    .line 484
    .local v10, h:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1, v10, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 485
    .local v11, icon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    move/from16 v17, v0

    .line 486
    .local v17, streamingAvailable:Z
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getHasLocal()Z

    move-result v2

    if-nez v2, :cond_5c

    if-nez v17, :cond_5c

    const/4 v13, 0x1

    .line 487
    .local v13, itemUnavailable:Z
    :goto_34
    if-eqz v13, :cond_5e

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10, v6}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 489
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 490
    .local v9, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v11, v2, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v2, v11}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 486
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v13           #itemUnavailable:Z
    :cond_5c
    const/4 v13, 0x0

    goto :goto_34

    .line 493
    .restart local v13       #itemUnavailable:Z
    :cond_5e
    move-object v8, v11

    goto :goto_a

    .line 498
    .end local v10           #h:I
    .end local v11           #icon:Landroid/graphics/Bitmap;
    .end local v13           #itemUnavailable:Z
    .end local v17           #streamingAvailable:Z
    .end local v18           #w:I
    :pswitch_60
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, mainLabel:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, subLabel:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v12

    .line 501
    .local v12, itemType:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    if-eqz v2, :cond_9d

    const/4 v3, 0x3

    .line 504
    .local v3, labelType:I
    :goto_73
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Lcom/google/android/music/albumwall/MusicItem;)I

    move-result v16

    .line 505
    .local v16, songCount:I
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 506
    packed-switch v12, :pswitch_data_12c

    .line 526
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown itemType "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    .end local v3           #labelType:I
    .end local v16           #songCount:I
    :cond_9d
    const/4 v2, 0x3

    if-ne v12, v2, :cond_a2

    const/4 v3, 0x0

    goto :goto_73

    :cond_a2
    const/4 v3, 0x1

    goto :goto_73

    .line 508
    .restart local v3       #labelType:I
    .restart local v16       #songCount:I
    :pswitch_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000f

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 528
    :goto_b7
    :pswitch_b7
    const/4 v5, 0x0

    :goto_b8
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    .line 542
    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 544
    goto/16 :goto_a

    .line 513
    :pswitch_c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000f

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 516
    goto :goto_b7

    .line 518
    :pswitch_d6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 519
    goto :goto_b7

    .line 521
    :pswitch_df
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 522
    goto :goto_b7

    .line 530
    :cond_e8
    packed-switch v12, :pswitch_data_13a

    goto :goto_b8

    .line 534
    :pswitch_ec
    move-object v5, v4

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000f

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 536
    goto :goto_b8

    .line 547
    .end local v3           #labelType:I
    .end local v4           #mainLabel:Ljava/lang/String;
    .end local v5           #subLabel:Ljava/lang/String;
    .end local v12           #itemType:I
    .end local v16           #songCount:I
    :pswitch_f9
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getOverlayLabel()Ljava/lang/String;

    move-result-object v15

    .line 548
    .local v15, overlayLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 550
    goto/16 :goto_a

    .line 552
    .end local v15           #overlayLabel:Ljava/lang/String;
    :pswitch_105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 554
    goto/16 :goto_a

    .line 556
    :pswitch_115
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_a

    .line 479
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_f9
        :pswitch_115
        :pswitch_10
        :pswitch_105
    .end packed-switch

    .line 506
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_df
        :pswitch_a4
        :pswitch_c2
        :pswitch_d6
        :pswitch_b7
    .end packed-switch

    .line 530
    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_ec
    .end packed-switch
.end method

.method public onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V
    .registers 16
    .parameter "pileIndex"
    .parameter "reply"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 381
    const/4 v8, 0x0

    .line 382
    .local v8, pile:Lcom/google/android/music/albumwall/MusicPile;
    iget-object v12, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v12}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v6

    .line 383
    .local v6, mode:I
    invoke-static {v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v12

    if-eqz v12, :cond_86

    .line 384
    invoke-direct {p0, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ge p1, v12, :cond_24

    .line 386
    new-instance v8, Lcom/google/android/music/albumwall/MusicPile;

    .end local v8           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v8}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .line 387
    .restart local v8       #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 388
    packed-switch v6, :pswitch_data_8e

    .line 423
    .end local v0           #c:Landroid/database/Cursor;
    :cond_24
    :goto_24
    if-eqz v8, :cond_29

    .line 424
    invoke-virtual {v8, v6}, Lcom/google/android/music/albumwall/MusicPile;->setMode(I)V

    .line 426
    :cond_29
    invoke-interface {p2, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 427
    return-void

    .line 390
    .restart local v0       #c:Landroid/database/Cursor;
    :pswitch_2d
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 391
    .local v2, id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, label:Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, sortKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, overlayLabel:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v10, :cond_65

    move v1, v10

    .line 395
    .local v1, hasRemote:Z
    :goto_4a
    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_67

    move v4, v10

    .line 396
    .local v4, keepOn:Z
    :goto_52
    invoke-virtual {v8, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 397
    invoke-virtual {v8, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v8, v9}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v8, v7}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v8, v1}, Lcom/google/android/music/albumwall/MusicPile;->setHasRemote(Z)V

    .line 401
    invoke-virtual {v8, v4}, Lcom/google/android/music/albumwall/MusicPile;->setKeepOn(Z)V

    goto :goto_24

    .end local v1           #hasRemote:Z
    .end local v4           #keepOn:Z
    :cond_65
    move v1, v11

    .line 394
    goto :goto_4a

    .restart local v1       #hasRemote:Z
    :cond_67
    move v4, v11

    .line 395
    goto :goto_52

    .line 405
    .end local v1           #hasRemote:Z
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v7           #overlayLabel:Ljava/lang/String;
    .end local v9           #sortKey:Ljava/lang/String;
    :pswitch_69
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 406
    .restart local v2       #id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 407
    .restart local v5       #label:Ljava/lang/String;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 408
    .restart local v9       #sortKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 409
    .restart local v7       #overlayLabel:Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 410
    invoke-virtual {v8, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v8, v9}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v8, v7}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    goto :goto_24

    .line 419
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v7           #overlayLabel:Ljava/lang/String;
    .end local v9           #sortKey:Ljava/lang/String;
    :cond_86
    if-nez p1, :cond_24

    .line 420
    new-instance v8, Lcom/google/android/music/albumwall/MusicPile;

    .end local v8           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v8}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .restart local v8       #pile:Lcom/google/android/music/albumwall/MusicPile;
    goto :goto_24

    .line 388
    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_69
    .end packed-switch
.end method

.method public onRequestPileCount(Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
    .registers 3
    .parameter "reply"

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v0

    .line 469
    .local v0, pileCount:I
    invoke-interface {p1, v0}, Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;->reply(I)V

    .line 470
    return-void
.end method

.method public onRequestPileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
    .registers 20
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "config"
    .parameter "reply"

    .prologue
    .line 432
    move-object/from16 v12, p2

    check-cast v12, Lcom/google/android/music/albumwall/MusicPile;

    .line 433
    .local v12, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    move-object/from16 v6, p4

    .line 434
    .local v6, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v8, 0x0

    .line 435
    .local v8, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_62

    .line 462
    :goto_a
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 463
    return-void

    .line 437
    :pswitch_10
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, artist:Ljava/lang/String;
    if-eqz p3, :cond_4d

    const/4 v2, 0x2

    .line 440
    .local v2, labelType:I
    :goto_17
    move-object v3, v7

    .line 441
    .local v3, label:Ljava/lang/String;
    if-nez p3, :cond_44

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 442
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4, v12}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongAndCountLabel(Landroid/content/Context;ZLcom/google/android/music/albumwall/MusicPile;)Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, countsText:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v11

    .line 444
    .local v11, mode:I
    const/4 v1, 0x2

    if-ne v11, v1, :cond_4f

    const v10, 0x7f0d012d

    .line 447
    .local v10, labelId:I
    :goto_31
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .end local v9           #countsText:Ljava/lang/String;
    .end local v10           #labelId:I
    .end local v11           #mode:I
    :cond_44
    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 452
    goto :goto_a

    .line 438
    .end local v2           #labelType:I
    .end local v3           #label:Ljava/lang/String;
    :cond_4d
    const/4 v2, 0x0

    goto :goto_17

    .line 444
    .restart local v2       #labelType:I
    .restart local v3       #label:Ljava/lang/String;
    .restart local v9       #countsText:Ljava/lang/String;
    .restart local v11       #mode:I
    :cond_4f
    const v10, 0x7f0d012e

    goto :goto_31

    .line 454
    .end local v2           #labelType:I
    .end local v3           #label:Ljava/lang/String;
    .end local v7           #artist:Ljava/lang/String;
    .end local v9           #countsText:Ljava/lang/String;
    .end local v11           #mode:I
    :pswitch_53
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getOverlayLabel()Ljava/lang/String;

    move-result-object v13

    .line 455
    .local v13, overlayLabel:Ljava/lang/String;
    invoke-direct {p0, v13, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 457
    goto :goto_a

    .line 459
    .end local v13           #overlayLabel:Ljava/lang/String;
    :pswitch_5c
    invoke-direct {p0, v12, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_a

    .line 435
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_10
        :pswitch_53
        :pswitch_5c
    .end packed-switch
.end method

.method public onUnregisterForItemTextureChangeNotification(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .registers 9
    .parameter "item"
    .parameter "type"

    .prologue
    .line 911
    move-object v3, p1

    check-cast v3, Lcom/google/android/music/albumwall/MusicItem;

    .line 912
    .local v3, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    const/4 v5, 0x3

    if-ne p2, v5, :cond_1e

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v5

    if-nez v5, :cond_1e

    .line 914
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v0

    .line 915
    .local v0, albumId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 916
    .local v2, key:Ljava/lang/Long;
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 917
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    if-nez v4, :cond_1f

    .line 927
    .end local v0           #albumId:J
    .end local v2           #key:Ljava/lang/Long;
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    :cond_1e
    :goto_1e
    return-void

    .line 920
    .restart local v0       #albumId:J
    .restart local v2       #key:Ljava/lang/Long;
    .restart local v4       #set:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/albumwall/MusicItem;>;"
    :cond_1f
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 921
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 922
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mArtDownloadServiceConnection:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    invoke-virtual {v5, v0, v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 923
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mRegisteredItems:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;

    invoke-direct {v2, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1737
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1738
    .local v0, vs:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestInvalidate(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1739
    return-void
.end method

.method public declared-synchronized setAllowOpeningItem(Z)V
    .registers 3
    .parameter "allowOpenningItem"

    .prologue
    .line 1009
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1010
    monitor-exit p0

    return-void

    .line 1009
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCreatingShortcut(Z)V
    .registers 2
    .parameter "creatingShortcut"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 373
    return-void
.end method

.method public setHelper(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 2
    .parameter "callbackHelper"

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 1593
    return-void
.end method

.method public updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 11
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1341
    iput-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 1342
    const/4 v4, 0x0

    .line 1343
    .local v4, searchResult:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v2

    .line 1345
    .local v2, mode:I
    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1346
    iget-object v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v3, Lcom/google/android/music/albumwall/MusicPile;

    .line 1347
    .local v3, pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1349
    iget v0, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1350
    .local v0, index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1351
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v5, :cond_2f

    .line 1352
    if-ne v0, v7, :cond_27

    .line 1353
    invoke-virtual {p1, v8}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1414
    .end local v3           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_26
    :goto_26
    return-void

    .line 1356
    .restart local v3       #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_27
    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V

    .line 1366
    .end local v0           #index:I
    .end local v3           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v5

    iput v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1367
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v5, :cond_43

    .line 1369
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;

    invoke-direct {v6, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V

    .line 1379
    :cond_43
    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    .line 1380
    .local v1, item:Lcom/google/android/music/albumwall/MusicItem;
    invoke-direct {p0, v1, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfItem(Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1382
    iget v0, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1383
    .restart local v0       #index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1385
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v5, :cond_57

    .line 1386
    if-ne v0, v7, :cond_76

    .line 1387
    iput-object v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1394
    :cond_57
    :goto_57
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v5, :cond_26

    .line 1395
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v5, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v5, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1396
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v5, :cond_80

    .line 1397
    iget v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    iput v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1399
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;

    invoke-direct {v6, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V

    goto :goto_26

    .line 1389
    :cond_76
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/MusicItem;

    move-result-object v5

    iput-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    goto :goto_57

    .line 1408
    :cond_80
    iput-object v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1409
    iput v7, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1410
    iput v7, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 1411
    iput v7, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    goto :goto_26
.end method

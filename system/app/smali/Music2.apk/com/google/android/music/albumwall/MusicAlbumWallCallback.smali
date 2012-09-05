.class public Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
.implements Lcom/google/android/music/albumwall/AlbumWallCallback;


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

.field private mAutoPlaylists:[J

.field private mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

.field private mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field private mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

.field private mCursor:Landroid/database/Cursor;

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

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mTopLevelCursor:Landroid/database/Cursor;

.field private mTopLevelCursorObserver:Landroid/database/ContentObserver;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private mUnknownPlaylistName:Ljava/lang/String;

.field private mView:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "MusicAlbumWallCallback"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->LOGV:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 87
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

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    .line 97
    iput-boolean v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 277
    new-instance v1, Lcom/google/android/music/albumwall/BitmapPool;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/music/albumwall/BitmapPool;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    .line 279
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    .line 280
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    .line 282
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    .line 288
    iput-boolean v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 1764
    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$14;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$14;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 294
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    .line 295
    iput-object p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 296
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    .line 298
    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 299
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    .line 300
    iput-object p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 302
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 307
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 308
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 309
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 311
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 312
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 313
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x4220

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 314
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 316
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0x50505050

    invoke-direct {v0, v1, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 317
    .local v0, colorFilter:Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 319
    new-instance v1, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 322
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
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
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
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
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForShuffleAll()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/MusicPile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)Lcom/google/android/music/albumwall/MusicPile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/utils/MusicCallbackHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
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
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
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
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForArtist(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForGenre(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method private final checkCursorAccessThread()V
    .registers 6

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0}, Lcom/google/android/music/utils/MusicCallbackHelper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1938
    if-eqz v0, :cond_31

    .line 1939
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1940
    if-eq v1, v0, :cond_31

    .line 1941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method using cursor access was called on the wrong thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instead of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1946
    :cond_31
    return-void
.end method

.method private clearCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1594
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->checkCursorAccessThread()V

    .line 1596
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 1597
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 1598
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1599
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1601
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1603
    :cond_1a
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1604
    return-void
.end method

.method private clearTopLevelCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1608
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->checkCursorAccessThread()V

    .line 1610
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 1611
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    .line 1612
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1613
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1615
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1617
    :cond_1a
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1618
    return-void
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V
    .registers 18
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1021
    const/4 v2, 0x2

    new-array v9, v2, [I

    const/4 v2, 0x0

    move/from16 v0, p2

    float-to-int v3, v0

    aput v3, v9, v2

    const/4 v2, 0x1

    move/from16 v0, p3

    float-to-int v3, v0

    aput v3, v9, v2

    .line 1022
    .local v9, location:[I
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    .line 1023
    .local v1, contextMenuManager:Lcom/google/android/music/utils/ContextMenuManager;
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_9a

    .line 1055
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown item type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1025
    :pswitch_24
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v11

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/music/utils/ContextMenuManager;->showAlbumContextMenu(JLjava/lang/String;JLjava/lang/String;Landroid/view/View;[IIZZ)V

    .line 1057
    :goto_3f
    return-void

    .line 1031
    :pswitch_40
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1032
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v6, 0x3

    move-object v4, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/utils/ContextMenuManager;->showAutoPlaylistContextMenu(J[ILandroid/view/View;I)V

    goto :goto_3f

    .line 1035
    :cond_56
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getPlaylistType()I

    move-result v8

    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v11, 0x3

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v12

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v13

    move-object v4, v1

    invoke-virtual/range {v4 .. v13}, Lcom/google/android/music/utils/ContextMenuManager;->showPlaylistContextMenu(JLjava/lang/String;I[ILandroid/view/View;IZZ)V

    goto :goto_3f

    .line 1042
    :pswitch_72
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v7, 0x3

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto :goto_3f

    .line 1047
    :pswitch_82
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v7, 0x3

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/music/utils/ContextMenuManager;->showAllSongsForGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto :goto_3f

    .line 1051
    :pswitch_92
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v3, 0x3

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/music/utils/ContextMenuManager;->showShuffleAllContextMenu([ILandroid/view/View;I)V

    goto :goto_3f

    .line 1023
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_72
        :pswitch_82
        :pswitch_40
        :pswitch_92
    .end packed-switch
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V
    .registers 14
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x3

    .line 1061
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v9

    .line 1062
    .local v9, mode:I
    new-array v4, v2, [I

    const/4 v0, 0x0

    float-to-int v1, p2

    aput v1, v4, v0

    const/4 v0, 0x1

    float-to-int v1, p3

    aput v1, v4, v0

    .line 1063
    .local v4, location:[I
    if-ne v9, v2, :cond_30

    .line 1064
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getKeepOn()Z

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/music/utils/ContextMenuManager;->showArtistContextMenu(JLjava/lang/String;[ILandroid/view/View;IZZ)V

    .line 1075
    :goto_2f
    return-void

    .line 1067
    :cond_30
    if-ne v9, v6, :cond_46

    .line 1068
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/utils/ContextMenuManager;->showGenreContextMenu(JLjava/lang/String;[ILandroid/view/View;I)V

    goto :goto_2f

    .line 1072
    :cond_46
    const-string v0, "MusicAlbumWallCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown pile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method private createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "item"
    .parameter "w"
    .parameter "h"
    .parameter "antiAlias"

    .prologue
    .line 529
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
    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v10

    .line 535
    .local v10, mainLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v11

    .line 538
    .local v11, subLabel:Ljava/lang/String;
    if-eqz p5, :cond_97

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1, v6}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 543
    .local v22, bitmap:Landroid/graphics/Bitmap;
    :goto_18
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 547
    .local v4, canvas:Landroid/graphics/Canvas;
    const/16 v29, 0x2

    .line 548
    .local v29, textureBorder:I
    if-nez p4, :cond_25

    .line 549
    const/16 v29, 0x0

    .line 551
    :cond_25
    mul-int/lit8 v5, v29, 0x2

    sub-int v8, p2, v5

    .line 552
    .local v8, artWidth:I
    mul-int/lit8 v5, v29, 0x2

    sub-int v9, p3, v5

    .line 554
    .local v9, artHeight:I
    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v29

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v27

    .line 556
    .local v27, itemType:I
    packed-switch v27, :pswitch_data_b0

    .line 563
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

    .line 568
    :goto_56
    if-eqz p4, :cond_96

    .line 569
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 570
    .local v28, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 571
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v5

    move/from16 v24, v0

    .line 572
    .local v24, frameLeft:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v5

    move/from16 v26, v0

    .line 573
    .local v26, frameTop:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int v25, v8, v5

    .line 574
    .local v25, frameRight:I
    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int v23, v9, v5

    .line 575
    .local v23, frameBottom:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 578
    .end local v23           #frameBottom:I
    .end local v24           #frameLeft:I
    .end local v25           #frameRight:I
    .end local v26           #frameTop:I
    .end local v28           #padding:Landroid/graphics/Rect;
    :cond_96
    return-object v22

    .line 541
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

    .line 558
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

    .line 556
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a3
    .end packed-switch
.end method

.method private createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .registers 22
    .parameter "labelType"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "item"
    .parameter "config"

    .prologue
    .line 1079
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v5

    .line 1081
    .local v5, labelConfig:Lcom/google/android/music/utils/LabelMaker$Config;
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_58

    const/4 v4, 0x1

    .line 1083
    .local v4, isExpanded:Z
    :goto_e
    if-eqz v4, :cond_5a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getIsExpandedClusterLabelHorizontal()Z

    move-result v13

    if-nez v13, :cond_5a

    const/4 v12, 0x1

    .line 1085
    .local v12, vertical:Z
    :goto_17
    if-nez p3, :cond_5c

    move-object/from16 v10, p2

    .line 1087
    .local v10, text:Ljava/lang/String;
    :goto_1b
    new-instance v6, Lcom/google/android/music/utils/LabelMaker;

    invoke-direct {v6, v10, v5}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;)V

    .line 1091
    .local v6, labelMaker:Lcom/google/android/music/utils/LabelMaker;
    if-eqz v4, :cond_30

    .line 1092
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->measure()V

    .line 1093
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->getTextRightClipped()I

    move-result v11

    .line 1094
    .local v11, textRight:I
    iput v11, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1095
    iget v13, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    invoke-virtual {v6, v13}, Lcom/google/android/music/utils/LabelMaker;->setWidth(I)V

    .line 1098
    .end local v11           #textRight:I
    :cond_30
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1110
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_57

    .line 1112
    iget v8, v5, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 1113
    .local v8, rotWidth:I
    iget v7, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1114
    .local v7, rotHeight:I
    iget-object v13, v5, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1115
    .local v9, rotated:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1116
    .local v3, c:Landroid/graphics/Canvas;
    const/high16 v13, -0x3d4c

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1117
    neg-int v13, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1118
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1119
    move-object v2, v9

    .line 1122
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v7           #rotHeight:I
    .end local v8           #rotWidth:I
    .end local v9           #rotated:Landroid/graphics/Bitmap;
    :cond_57
    return-object v2

    .line 1081
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #isExpanded:Z
    .end local v6           #labelMaker:Lcom/google/android/music/utils/LabelMaker;
    .end local v10           #text:Ljava/lang/String;
    .end local v12           #vertical:Z
    :cond_58
    const/4 v4, 0x0

    goto :goto_e

    .line 1083
    .restart local v4       #isExpanded:Z
    :cond_5a
    const/4 v12, 0x0

    goto :goto_17

    .line 1085
    .restart local v12       #vertical:Z
    :cond_5c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1b
.end method

.method private createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "item"
    .parameter "config"

    .prologue
    .line 1134
    const v4, 0x7f020050

    .line 1135
    .local v4, resourceId:I
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1137
    instance-of v5, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v5, :cond_2e

    move-object v3, p1

    .line 1138
    check-cast v3, Lcom/google/android/music/albumwall/MusicItem;

    .line 1139
    .local v3, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v2

    .line 1140
    .local v2, mode:I
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->isItemAllSongs()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x2

    if-ne v2, v5, :cond_29

    :cond_1f
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1142
    :cond_29
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1160
    .end local v2           #mode:I
    .end local v3           #musicItem:Lcom/google/android/music/albumwall/MusicItem;
    :goto_2d
    return-object v0

    .line 1145
    :cond_2e
    const v4, 0x7f020068

    .line 1146
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getHasRemote()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1147
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v1

    .line 1148
    .local v1, keepOn:Z
    if-eqz v1, :cond_4b

    const v4, 0x7f02006f

    .line 1158
    .end local v1           #keepOn:Z
    :cond_40
    :goto_40
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1160
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_2d

    .line 1148
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #keepOn:Z
    :cond_4b
    const v4, 0x7f02006e

    goto :goto_40

    .line 1151
    .end local v1           #keepOn:Z
    :cond_4f
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowMenuMark()Z

    move-result v5

    if-nez v5, :cond_40

    .line 1152
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

    .line 1173
    if-nez p1, :cond_6

    .line 1174
    const-string p1, " "

    .line 1176
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 1177
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 1180
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    add-int/lit8 v3, v1, -0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1181
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1183
    int-to-float v3, v0

    sub-float v2, v3, v2

    mul-float/2addr v2, v6

    .line 1185
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1186
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1187
    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    .line 1188
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    .line 1190
    int-to-float v1, v1

    add-float/2addr v4, v5

    sub-float/2addr v1, v4

    mul-float/2addr v1, v6

    const/high16 v4, 0x4000

    sub-float/2addr v1, v4

    .line 1192
    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, p1, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1193
    return-object v0
.end method

.method private createPlaceholderMark()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1167
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1168
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "albumName"

    .prologue
    .line 834
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 835
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 837
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "artistName"

    .prologue
    .line 820
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 821
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 823
    .end local p1
    :cond_8
    return-object p1
.end method

.method public static effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "overlayLabel"

    .prologue
    .line 841
    move-object v2, p0

    .line 842
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 843
    .local v1, len:I
    const/4 v3, 0x1

    if-le v1, v3, :cond_1e

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, i:I
    :goto_9
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_18

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 849
    :cond_18
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 852
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
    .line 827
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 828
    iget-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 830
    .end local p1
    :cond_8
    return-object p1
.end method

.method private fauxArtTypeForMusicItem(Lcom/google/android/music/albumwall/MusicItem;)I
    .registers 6
    .parameter "item"

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v0

    .line 583
    .local v0, musicItemType:I
    packed-switch v0, :pswitch_data_1e

    .line 597
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown music item type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :pswitch_f
    const/4 v2, 0x0

    .line 595
    :goto_10
    return v2

    .line 587
    :pswitch_11
    const/4 v2, 0x5

    goto :goto_10

    .line 590
    :pswitch_13
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getPlaylistType()I

    move-result v1

    .line 591
    .local v1, playlistType:I
    invoke-static {v1}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistTypeToArtStyle(I)I

    move-result v2

    goto :goto_10

    .line 595
    .end local v1           #playlistType:I
    :pswitch_1c
    const/4 v2, 0x4

    goto :goto_10

    .line 583
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

    .line 1338
    iget-object v0, p2, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v3

    .line 1339
    if-eqz v3, :cond_12

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_18

    .line 1340
    :cond_12
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1374
    :goto_17
    return-object v0

    .line 1342
    :cond_18
    if-nez p1, :cond_20

    .line 1343
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v0, v2, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_17

    .line 1348
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1349
    packed-switch v0, :pswitch_data_52

    .line 1371
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

    .line 1374
    :goto_43
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v0

    goto :goto_17

    .line 1357
    :pswitch_48
    const/4 v2, 0x5

    move v0, v1

    .line 1359
    goto :goto_43

    :pswitch_4b
    move v0, v2

    move v2, v1

    .line 1364
    goto :goto_43

    .line 1367
    :pswitch_4e
    const/4 v2, 0x4

    move v0, v1

    .line 1369
    goto :goto_43

    .line 1349
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

    .line 1378
    if-nez p1, :cond_9

    .line 1379
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v4, v5, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    .line 1398
    :goto_8
    return-object v4

    .line 1382
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v3

    .line 1383
    .local v3, mode:I
    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1384
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1f

    .line 1385
    :cond_19
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    goto :goto_8

    .line 1390
    :cond_1f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 1391
    const/4 v2, 0x2

    .line 1392
    .local v2, keyIndex:I
    const/4 v1, 0x0

    .line 1398
    .local v1, idIndex:I
    :goto_24
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    goto :goto_8

    .line 1394
    .end local v1           #idIndex:I
    .end local v2           #keyIndex:I
    :cond_29
    const/4 v2, 0x1

    .line 1395
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
    .line 1712
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1713
    invoke-static {v0, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 1714
    const v2, 0x7f0d00f0

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

    .line 1715
    return-object v0
.end method

.method private formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1720
    invoke-static {v0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 1721
    const v2, 0x7f0d00f3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    return-object v0
.end method

.method public static getAccessibilitySongCountLabel(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1676
    invoke-static {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/jumper/MusicPreferences;)I

    move-result v0

    .line 1677
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1678
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
    .line 1643
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v0

    .line 1644
    .local v0, mode:I
    packed-switch v0, :pswitch_data_38

    .line 1651
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

    .line 1652
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1646
    :pswitch_26
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1648
    :pswitch_2f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1644
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

    .line 1511
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

    .line 1515
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getAutoPlaylists()[J
    .registers 4

    .prologue
    .line 1952
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->checkCursorAccessThread()V

    .line 1955
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    if-nez v0, :cond_16

    .line 1956
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ContentResolver;Z)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 1959
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    return-object v0
.end method

.method private getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1525
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->checkCursorAccessThread()V

    .line 1527
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/MusicPile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1528
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 1530
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_64

    .line 1532
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1533
    packed-switch v0, :pswitch_data_b8

    .line 1571
    :pswitch_1e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1535
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$NewAndRecentQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1573
    :goto_43
    new-instance v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1574
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    .line 1575
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1585
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_64

    .line 1586
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1589
    :cond_64
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 1540
    :pswitch_67
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsSortedByAlbumUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_43

    .line 1545
    :pswitch_76
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PlaylistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_43

    .line 1550
    :pswitch_83
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    .line 1552
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_43

    .line 1558
    :pswitch_96
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    .line 1560
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_43

    .line 1566
    :pswitch_a9
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "dummy"

    aput-object v2, v1, v0

    .line 1567
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_43

    .line 1533
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_67
        :pswitch_76
        :pswitch_83
        :pswitch_96
        :pswitch_1e
        :pswitch_a9
        :pswitch_37
    .end packed-switch
.end method

.method private getPileCount()I
    .registers 3

    .prologue
    .line 1454
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1455
    .local v0, mode:I
    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1456
    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1458
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

    .line 1730
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1734
    .local v0, songString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1735
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatter:Ljava/util/Formatter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1736
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
    .line 1637
    invoke-static {p0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAlbumCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v0

    .line 1638
    .local v0, albumCount:I
    invoke-static {p0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Landroid/content/Context;Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v1

    .line 1639
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
    .line 1682
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v1

    .line 1683
    .local v1, itemType:I
    const/4 v4, 0x0

    .line 1684
    .local v4, songCount:I
    packed-switch v1, :pswitch_data_46

    .line 1708
    :goto_8
    return v4

    .line 1686
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v4

    .line 1687
    goto :goto_8

    .line 1689
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v4

    .line 1690
    goto :goto_8

    .line 1692
    :pswitch_1b
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    .line 1693
    .local v2, playListId:J
    invoke-static {v2, v3}, Lcom/google/android/music/AutoPlaylists;->isAutoPlaylistId(J)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1694
    const/4 v6, 0x0

    invoke-static {v2, v3, v6, p2}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v0

    .line 1696
    .local v0, autoPlaylist:Lcom/google/android/music/medialist/AutoPlaylist;
    invoke-virtual {v0, p0}, Lcom/google/android/music/medialist/AutoPlaylist;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 1697
    .local v5, uri:Landroid/net/Uri;
    invoke-static {p0, v5}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    .line 1698
    goto :goto_8

    .line 1699
    .end local v0           #autoPlaylist:Lcom/google/android/music/medialist/AutoPlaylist;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_33
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsCount(Landroid/content/Context;J)I

    move-result v4

    goto :goto_8

    .line 1705
    .end local v2           #playListId:J
    :pswitch_3c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumCount(Landroid/content/Context;J)I

    move-result v4

    goto :goto_8

    .line 1684
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
    .line 1657
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v0

    .line 1658
    .local v0, mode:I
    packed-switch v0, :pswitch_data_38

    .line 1665
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

    .line 1666
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1660
    :pswitch_26
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1662
    :pswitch_2f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v1

    goto :goto_25

    .line 1658
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
    .line 1671
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
    .line 1726
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

    .line 1464
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->checkCursorAccessThread()V

    .line 1466
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4b

    .line 1468
    packed-switch p1, :pswitch_data_5c

    .line 1480
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

    .line 1470
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1482
    :goto_30
    new-instance v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v1, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1483
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1493
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1496
    :cond_4b
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    return-object v0

    .line 1475
    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$GenresQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_30

    .line 1468
    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_24
        :pswitch_4e
    .end packed-switch
.end method

.method private getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1883
    .line 1885
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1886
    if-nez v1, :cond_6

    .line 1909
    :cond_5
    :goto_5
    return-object v0

    .line 1889
    :cond_6
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v2, :cond_43

    .line 1892
    check-cast p1, Lcom/google/android/music/albumwall/MusicItem;

    .line 1893
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    .line 1894
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    .line 1896
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 1897
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    if-nez v4, :cond_2b

    .line 1899
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 1900
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 1901
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 1903
    :cond_3b
    const-string v1, "MusicAlbumWallCallback"

    const-string v2, "Unsupported KeepOn item!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1905
    :cond_43
    instance-of v2, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v2, :cond_5

    .line 1906
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method private isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 1866
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getKeepOn()Z

    move-result v0

    .line 1867
    .local v0, keepOn:Z
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1869
    .local v1, uiKeepOn:Ljava/lang/Boolean;
    if-eqz v1, :cond_e

    .line 1870
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1872
    :cond_e
    return v0
.end method

.method private openAllSongsForArtist(JLjava/lang/String;)V
    .registers 5
    .parameter "artist_id"
    .parameter "artistName"

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAllSongsByArtist(JLjava/lang/String;)V

    .line 1758
    return-void
.end method

.method private openAllSongsForGenre(JLjava/lang/String;)V
    .registers 5
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAllSongsInGenre(JLjava/lang/String;)V

    .line 1762
    return-void
.end method

.method private openTrackBrowserForAlbum(J)V
    .registers 10
    .parameter "album_id"

    .prologue
    const-wide/16 v3, -0x1

    .line 1745
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAlbum(JJJ)V

    .line 1746
    return-void
.end method

.method private openTrackBrowserForAutoPlaylist(J)V
    .registers 4
    .parameter "playlistId"

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAutoPlaylist(J)V

    .line 1754
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForPlaylist(JLjava/lang/String;I)V

    .line 1750
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 1740
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1741
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 1742
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

    .line 1414
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->hasSortKey()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1415
    :cond_9
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1450
    :goto_e
    return-object v6

    .line 1418
    :cond_f
    const/4 v5, 0x0

    .line 1419
    .local v5, start:I
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 1420
    .local v1, end:I
    move v3, v5

    .line 1421
    .local v3, probe:I
    :goto_17
    if-gt v5, v1, :cond_4a

    .line 1422
    add-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 1423
    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1424
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1426
    .local v4, probeKey:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getSortKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1427
    .local v0, compare:I
    if-nez v0, :cond_42

    .line 1429
    const/4 v2, 0x0

    .line 1430
    .local v2, isIdSame:Z
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v6

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3c

    .line 1431
    const/4 v2, 0x1

    .line 1437
    :cond_3c
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_e

    .line 1438
    .end local v2           #isIdSame:Z
    :cond_42
    if-gez v0, :cond_47

    .line 1439
    add-int/lit8 v5, v3, 0x1

    goto :goto_17

    .line 1441
    :cond_47
    add-int/lit8 v1, v3, -0x1

    goto :goto_17

    .line 1446
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

    .line 1450
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_e
.end method

.method private setShuffleAllPlaylistItem(Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 811
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v3, 0x7f0d0100

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, overlay:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 814
    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method private switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V
    .registers 8
    .parameter

    .prologue
    .line 1804
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1805
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v0

    .line 1806
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1807
    if-nez v1, :cond_f

    .line 1836
    :cond_e
    :goto_e
    return-void

    .line 1810
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    .line 1812
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v2

    .line 1813
    if-eqz v0, :cond_30

    .line 1814
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    .line 1818
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 1819
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v2

    .line 1820
    if-eqz v0, :cond_34

    .line 1821
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_e

    .line 1816
    :cond_30
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_1f

    .line 1823
    :cond_34
    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_e

    .line 1825
    :cond_38
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v2

    if-nez v2, :cond_54

    .line 1826
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v2

    .line 1827
    if-eqz v0, :cond_4c

    .line 1828
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_e

    .line 1830
    :cond_4c
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_e

    .line 1833
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
    .line 1843
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1844
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v3

    .line 1845
    .local v3, wasKept:Z
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1846
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v2, :cond_f

    .line 1857
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v3           #wasKept:Z
    :cond_e
    :goto_e
    return-void

    .line 1849
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v3       #wasKept:Z
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v0

    .line 1850
    .local v0, artistId:J
    if-eqz v3, :cond_19

    .line 1851
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_e

    .line 1853
    :cond_19
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_e
.end method


# virtual methods
.method public getAlbumArtistIndexForPile(Lcom/google/android/music/albumwall/MusicPile;)I
    .registers 7
    .parameter "pile"

    .prologue
    .line 1197
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v2

    .line 1198
    .local v2, mode:I
    invoke-direct {p0, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1200
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    .line 1201
    .local v3, result:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget-boolean v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v4, :cond_2a

    .line 1202
    iget v0, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1203
    .local v0, albumIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1204
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getSortKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 1209
    .end local v0           #albumIndex:I
    :goto_29
    return v0

    :cond_2a
    const/4 v0, -0x1

    goto :goto_29
.end method

.method public isManageMusicMode()Z
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
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
    .line 1917
    .local p1, albumIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 1918
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
    .line 1913
    .local p1, artistIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 1914
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v0}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mNetworkMonitorConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method public onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/AlbumWallView;->onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 1922
    return-void
.end method

.method public onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V
    .registers 4
    .parameter "item"
    .parameter "entered"

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView;->onItemHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Z)V

    .line 1930
    return-void
.end method

.method public onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .registers 6
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1017
    :cond_6
    :goto_6
    return-void

    .line 1008
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_6

    .line 1011
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
    .line 892
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_5

    .line 905
    :goto_4
    return-void

    .line 895
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
    .line 932
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    if-nez v0, :cond_5

    .line 986
    :goto_4
    return-void

    .line 935
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z

    .line 937
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public onManageMusicModeStateChanged(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "offlineMusicManager"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-ne v0, p1, :cond_5

    .line 1797
    :goto_4
    return-void

    .line 1785
    :cond_5
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1786
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setManageAlbumMode(Z)V

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1788
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 1789
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 1790
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1792
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    .line 1796
    :cond_2e
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    goto :goto_4
.end method

.method public onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V
    .registers 4
    .parameter "pile"
    .parameter "expanded"

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallView;->onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V

    .line 1926
    return-void
.end method

.method public onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V
    .registers 5
    .parameter "pile"
    .parameter "expanded"
    .parameter "entered"

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallView;->onPileHovered(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZZ)V

    .line 1934
    return-void
.end method

.method public onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .registers 6
    .parameter "pile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1002
    :cond_6
    :goto_6
    return-void

    .line 993
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_6

    .line 996
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
    .line 910
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_5

    .line 923
    :goto_4
    return-void

    .line 913
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
    .line 1219
    packed-switch p1, :pswitch_data_a

    .line 1230
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1233
    :pswitch_8
    return-void

    .line 1219
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
    .line 1215
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p4}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1216
    return-void
.end method

.method public onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V
    .registers 9
    .parameter "pile"
    .parameter "reply"

    .prologue
    const/4 v5, 0x0

    .line 857
    move-object v4, p1

    check-cast v4, Lcom/google/android/music/albumwall/MusicPile;

    .line 858
    .local v4, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v1

    .line 859
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_e

    .line 860
    invoke-interface {p2, v5, v5}, Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;->reply(II)V

    .line 888
    :goto_d
    return-void

    .line 862
    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 863
    .local v0, count:I
    move v2, v0

    .line 864
    .local v2, expandedCount:I
    const/4 v5, 0x1

    if-le v0, v5, :cond_1c

    iget-boolean v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    if-eqz v5, :cond_1c

    .line 865
    add-int/lit8 v2, v2, 0x1

    .line 868
    :cond_1c
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v3

    .line 869
    .local v3, mode:I
    sparse-switch v3, :sswitch_data_36

    .line 886
    :cond_25
    :goto_25
    invoke-interface {p2, v0, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;->reply(II)V

    goto :goto_d

    .line 872
    :sswitch_29
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAutoPlaylists()[J

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 873
    goto :goto_25

    .line 876
    :sswitch_30
    if-lez v0, :cond_25

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 869
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_29
        0x6 -> :sswitch_30
    .end sparse-switch
.end method

.method public onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V
    .registers 45
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "reply"

    .prologue
    .line 604
    move-object/from16 v25, p1

    check-cast v25, Lcom/google/android/music/albumwall/MusicPile;

    .line 605
    .local v25, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    new-instance v19, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 606
    .local v19, item:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v13

    .line 607
    .local v13, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v24

    .line 610
    .local v24, mode:I
    if-eqz p2, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    move/from16 v36, v0

    if-eqz v36, :cond_d1

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_d1

    .line 611
    if-nez p3, :cond_cf

    .line 612
    const/16 v36, 0x2

    move/from16 v0, v24

    move/from16 v1, v36

    if-ne v0, v1, :cond_bd

    const/16 v18, 0x1

    .line 613
    .local v18, isArtists:Z
    :goto_3d
    if-eqz v18, :cond_c1

    const/16 v36, 0x1

    :goto_41
    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 615
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v16

    .line 616
    .local v16, id:J
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 617
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v21

    .line 618
    .local v21, label:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 621
    .local v27, overlay:Ljava/lang/String;
    if-eqz v18, :cond_a7

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v36

    move-object/from16 v0, v19

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getArtistCursor(J)Landroid/database/Cursor;

    move-result-object v7

    .line 624
    .local v7, artistCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_a7

    .line 626
    :try_start_76
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v36

    if-lez v36, :cond_a4

    .line 627
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c5

    const/4 v15, 0x1

    .line 629
    .local v15, hasRemote:Z
    :goto_90
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_c7

    const/16 v20, 0x1

    .line 630
    .local v20, keepOn:Z
    :goto_9c
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 631
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V
    :try_end_a4
    .catchall {:try_start_76 .. :try_end_a4} :catchall_ca

    .line 634
    .end local v15           #hasRemote:Z
    .end local v20           #keepOn:Z
    :cond_a4
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 639
    .end local v7           #artistCursor:Landroid/database/Cursor;
    :cond_a7
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 808
    .end local v16           #id:J
    .end local v18           #isArtists:Z
    .end local v21           #label:Ljava/lang/String;
    .end local v27           #overlay:Ljava/lang/String;
    :goto_bc
    return-void

    .line 612
    :cond_bd
    const/16 v18, 0x0

    goto/16 :goto_3d

    .line 613
    .restart local v18       #isArtists:Z
    :cond_c1
    const/16 v36, 0x2

    goto/16 :goto_41

    .line 628
    .restart local v7       #artistCursor:Landroid/database/Cursor;
    .restart local v16       #id:J
    .restart local v21       #label:Ljava/lang/String;
    .restart local v27       #overlay:Ljava/lang/String;
    :cond_c5
    const/4 v15, 0x0

    goto :goto_90

    .line 629
    .restart local v15       #hasRemote:Z
    :cond_c7
    const/16 v20, 0x0

    goto :goto_9c

    .line 634
    .end local v15           #hasRemote:Z
    :catchall_ca
    move-exception v36

    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v36

    .line 644
    .end local v7           #artistCursor:Landroid/database/Cursor;
    .end local v16           #id:J
    .end local v18           #isArtists:Z
    .end local v21           #label:Ljava/lang/String;
    .end local v27           #overlay:Ljava/lang/String;
    :cond_cf
    add-int/lit8 p3, p3, -0x1

    .line 649
    :cond_d1
    if-eqz p2, :cond_144

    const/16 v36, 0x1

    move/from16 v0, v24

    move/from16 v1, v36

    if-ne v0, v1, :cond_144

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAutoPlaylists()[J

    move-result-object v12

    .line 651
    .local v12, autoPlaylists:[J
    array-length v0, v12

    move/from16 v36, v0

    move/from16 v0, p3

    move/from16 v1, v36

    if-ge v0, v1, :cond_13f

    .line 652
    aget-wide v10, v12, p3

    .line 653
    .local v10, autoPlaylistId:J
    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v37, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v10, v11, v0, v1}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v22

    .line 655
    .local v22, list:Lcom/google/android/music/medialist/AutoPlaylist;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/AutoPlaylist;->getListingName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 656
    .restart local v21       #label:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 657
    .restart local v27       #overlay:Ljava/lang/String;
    const/16 v36, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 658
    const/16 v36, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 659
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 661
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 662
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto/16 :goto_bc

    .line 667
    .end local v10           #autoPlaylistId:J
    .end local v21           #label:Ljava/lang/String;
    .end local v22           #list:Lcom/google/android/music/medialist/AutoPlaylist;
    .end local v27           #overlay:Ljava/lang/String;
    :cond_13f
    array-length v0, v12

    move/from16 v36, v0

    sub-int p3, p3, v36

    .line 672
    .end local v12           #autoPlaylists:[J
    :cond_144
    const/16 v36, 0x6

    move/from16 v0, v24

    move/from16 v1, v36

    if-ne v0, v1, :cond_160

    .line 673
    if-nez p3, :cond_15e

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setShuffleAllPlaylistItem(Lcom/google/android/music/albumwall/MusicItem;)V

    .line 675
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto/16 :goto_bc

    .line 678
    :cond_15e
    add-int/lit8 p3, p3, -0x1

    .line 682
    :cond_160
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v36

    move/from16 v0, p3

    move/from16 v1, v36

    if-lt v0, v1, :cond_175

    .line 683
    const/16 v36, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto/16 :goto_bc

    .line 686
    :cond_175
    move/from16 v0, p3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 688
    packed-switch v24, :pswitch_data_482

    .line 805
    :pswitch_17d
    const-string v36, "MusicAlbumWallCallback"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unsupported mode: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    new-instance v38, Ljava/lang/RuntimeException;

    invoke-direct/range {v38 .. v38}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static/range {v36 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    :goto_19e
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto/16 :goto_bc

    .line 690
    :pswitch_1a7
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_257

    const/16 v35, 0x0

    .line 696
    .local v35, type:I
    :goto_1b3
    if-nez v35, :cond_25b

    .line 697
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 698
    .local v4, albumId:J
    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 699
    .local v23, mainLabel:Ljava/lang/String;
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 700
    .local v34, subLabel:Ljava/lang/String;
    const/16 v32, 0x0

    .line 707
    .local v32, playlistType:I
    :goto_1df
    invoke-static/range {v23 .. v23}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 709
    .restart local v27       #overlay:Ljava/lang/String;
    const/16 v36, 0x7

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_27f

    const/4 v15, 0x1

    .line 710
    .restart local v15       #hasRemote:Z
    :goto_1f4
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_282

    const/4 v14, 0x1

    .line 711
    .local v14, hasLocal:Z
    :goto_1ff
    const/16 v36, 0x9

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_285

    const/16 v20, 0x1

    .line 715
    .restart local v20       #keepOn:Z
    :goto_20b
    const v36, 0x3b9aca00

    add-int v36, v36, p3

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 716
    .local v33, sortKey:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 717
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 718
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 719
    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 720
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 725
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 726
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_19e

    .line 690
    .end local v4           #albumId:J
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v20           #keepOn:Z
    .end local v23           #mainLabel:Ljava/lang/String;
    .end local v27           #overlay:Ljava/lang/String;
    .end local v32           #playlistType:I
    .end local v33           #sortKey:Ljava/lang/String;
    .end local v34           #subLabel:Ljava/lang/String;
    .end local v35           #type:I
    :cond_257
    const/16 v35, 0x3

    goto/16 :goto_1b3

    .line 702
    .restart local v35       #type:I
    :cond_25b
    const/16 v36, 0x5

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 703
    .restart local v23       #mainLabel:Ljava/lang/String;
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 704
    .restart local v4       #albumId:J
    const-string v34, ""

    .line 705
    .restart local v34       #subLabel:Ljava/lang/String;
    const/16 v36, 0x6

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .restart local v32       #playlistType:I
    goto/16 :goto_1df

    .line 709
    .restart local v27       #overlay:Ljava/lang/String;
    :cond_27f
    const/4 v15, 0x0

    goto/16 :goto_1f4

    .line 710
    .restart local v15       #hasRemote:Z
    :cond_282
    const/4 v14, 0x0

    goto/16 :goto_1ff

    .line 711
    .restart local v14       #hasLocal:Z
    :cond_285
    const/16 v20, 0x0

    goto :goto_20b

    .line 730
    .end local v4           #albumId:J
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v23           #mainLabel:Ljava/lang/String;
    .end local v27           #overlay:Ljava/lang/String;
    .end local v32           #playlistType:I
    .end local v34           #subLabel:Ljava/lang/String;
    .end local v35           #type:I
    :pswitch_288
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 731
    .restart local v4       #albumId:J
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 732
    .local v8, artistId:J
    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, album:Ljava/lang/String;
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, artist:Ljava/lang/String;
    const/16 v36, 0x5

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 735
    .restart local v33       #sortKey:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 736
    .restart local v27       #overlay:Ljava/lang/String;
    const/16 v36, 0x6

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_32b

    const/4 v15, 0x1

    .line 737
    .restart local v15       #hasRemote:Z
    :goto_2d5
    const/16 v36, 0x7

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_32d

    const/4 v14, 0x1

    .line 738
    .restart local v14       #hasLocal:Z
    :goto_2e0
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_32f

    const/16 v20, 0x1

    .line 739
    .restart local v20       #keepOn:Z
    :goto_2ec
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 740
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 741
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 742
    const/16 v36, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 743
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 748
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 749
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_19e

    .line 736
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v20           #keepOn:Z
    :cond_32b
    const/4 v15, 0x0

    goto :goto_2d5

    .line 737
    .restart local v15       #hasRemote:Z
    :cond_32d
    const/4 v14, 0x0

    goto :goto_2e0

    .line 738
    .restart local v14       #hasLocal:Z
    :cond_32f
    const/16 v20, 0x0

    goto :goto_2ec

    .line 753
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #artist:Ljava/lang/String;
    .end local v8           #artistId:J
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v27           #overlay:Ljava/lang/String;
    .end local v33           #sortKey:Ljava/lang/String;
    :pswitch_332
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 754
    .local v30, playlistId:J
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 755
    .local v26, name:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 756
    .restart local v27       #overlay:Ljava/lang/String;
    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3c0

    const/4 v15, 0x1

    .line 757
    .restart local v15       #hasRemote:Z
    :goto_35f
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_3c2

    const/4 v14, 0x1

    .line 758
    .restart local v14       #hasLocal:Z
    :goto_36a
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_3c4

    const/16 v20, 0x1

    .line 759
    .restart local v20       #keepOn:Z
    :goto_376
    const/16 v36, 0x5

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 760
    .restart local v32       #playlistType:I
    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 761
    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 762
    const/16 v36, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 763
    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setPlaylistType(I)V

    .line 764
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 768
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 769
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_19e

    .line 756
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v20           #keepOn:Z
    .end local v32           #playlistType:I
    :cond_3c0
    const/4 v15, 0x0

    goto :goto_35f

    .line 757
    .restart local v15       #hasRemote:Z
    :cond_3c2
    const/4 v14, 0x0

    goto :goto_36a

    .line 758
    .restart local v14       #hasLocal:Z
    :cond_3c4
    const/16 v20, 0x0

    goto :goto_376

    .line 774
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v26           #name:Ljava/lang/String;
    .end local v27           #overlay:Ljava/lang/String;
    .end local v30           #playlistId:J
    :pswitch_3c7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v36

    move-object/from16 v0, v19

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 779
    :pswitch_3d2
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 780
    .restart local v4       #albumId:J
    const/16 v36, 0x2

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 781
    .restart local v3       #album:Ljava/lang/String;
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 782
    .restart local v6       #artist:Ljava/lang/String;
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 783
    .restart local v33       #sortKey:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 787
    .restart local v27       #overlay:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v28

    .line 788
    .local v28, pileId:J
    const/16 v36, 0x5

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_47b

    const/4 v15, 0x1

    .line 789
    .restart local v15       #hasRemote:Z
    :goto_41b
    const/16 v36, 0x6

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_47d

    const/4 v14, 0x1

    .line 790
    .restart local v14       #hasLocal:Z
    :goto_426
    const/16 v36, 0x7

    move/from16 v0, v36

    invoke-interface {v13, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_47f

    const/16 v20, 0x1

    .line 791
    .restart local v20       #keepOn:Z
    :goto_432
    const/16 v36, 0x20

    shl-long v36, v28, v36

    const-wide v38, 0xffffffffL

    and-long v38, v38, v4

    or-long v36, v36, v38

    move-object/from16 v0, v19

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 792
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 793
    const/16 v36, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 794
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 799
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 800
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_19e

    .line 788
    .end local v14           #hasLocal:Z
    .end local v15           #hasRemote:Z
    .end local v20           #keepOn:Z
    :cond_47b
    const/4 v15, 0x0

    goto :goto_41b

    .line 789
    .restart local v15       #hasRemote:Z
    :cond_47d
    const/4 v14, 0x0

    goto :goto_426

    .line 790
    .restart local v14       #hasLocal:Z
    :cond_47f
    const/16 v20, 0x0

    goto :goto_432

    .line 688
    :pswitch_data_482
    .packed-switch 0x0
        :pswitch_288
        :pswitch_332
        :pswitch_3c7
        :pswitch_3d2
        :pswitch_17d
        :pswitch_17d
        :pswitch_1a7
    .end packed-switch
.end method

.method public onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
    .registers 26
    .parameter "type"
    .parameter "item"
    .parameter "config"
    .parameter "reply"

    .prologue
    .line 441
    move-object/from16 v14, p2

    check-cast v14, Lcom/google/android/music/albumwall/MusicItem;

    .line 442
    .local v14, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v7, p3

    .line 443
    .local v7, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v8, 0x0

    .line 445
    .local v8, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_11e

    .line 525
    :goto_a
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 526
    return-void

    .line 447
    :pswitch_10
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 448
    .local v18, w:I
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v2

    float-to-int v10, v2

    .line 450
    .local v10, h:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1, v10, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 451
    .local v11, icon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    move/from16 v17, v0

    .line 452
    .local v17, streamingAvailable:Z
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getHasLocal()Z

    move-result v2

    if-nez v2, :cond_5c

    if-nez v17, :cond_5c

    const/4 v13, 0x1

    .line 453
    .local v13, itemUnavailable:Z
    :goto_34
    if-eqz v13, :cond_5e

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10, v6}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 455
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 456
    .local v9, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v11, v2, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v2, v11}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 452
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v13           #itemUnavailable:Z
    :cond_5c
    const/4 v13, 0x0

    goto :goto_34

    .line 459
    .restart local v13       #itemUnavailable:Z
    :cond_5e
    move-object v8, v11

    goto :goto_a

    .line 464
    .end local v10           #h:I
    .end local v11           #icon:Landroid/graphics/Bitmap;
    .end local v13           #itemUnavailable:Z
    .end local v17           #streamingAvailable:Z
    .end local v18           #w:I
    :pswitch_60
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, mainLabel:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, subLabel:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v12

    .line 467
    .local v12, itemType:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    if-eqz v2, :cond_9d

    const/4 v3, 0x3

    .line 470
    .local v3, labelType:I
    :goto_73
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Lcom/google/android/music/albumwall/MusicItem;)I

    move-result v16

    .line 471
    .local v16, songCount:I
    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 472
    packed-switch v12, :pswitch_data_12c

    .line 492
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

    .line 467
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

    .line 474
    .restart local v3       #labelType:I
    .restart local v16       #songCount:I
    :pswitch_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000d

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 494
    :goto_b7
    :pswitch_b7
    const/4 v5, 0x0

    :goto_b8
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    .line 508
    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 510
    goto/16 :goto_a

    .line 479
    :pswitch_c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000d

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 482
    goto :goto_b7

    .line 484
    :pswitch_d6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 485
    goto :goto_b7

    .line 487
    :pswitch_df
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 488
    goto :goto_b7

    .line 496
    :cond_e8
    packed-switch v12, :pswitch_data_13a

    goto :goto_b8

    .line 500
    :pswitch_ec
    move-object v5, v4

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v6, 0x7f0d000d

    invoke-virtual {v2, v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    goto :goto_b8

    .line 513
    .end local v3           #labelType:I
    .end local v4           #mainLabel:Ljava/lang/String;
    .end local v5           #subLabel:Ljava/lang/String;
    .end local v12           #itemType:I
    .end local v16           #songCount:I
    :pswitch_f9
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getOverlayLabel()Ljava/lang/String;

    move-result-object v15

    .line 514
    .local v15, overlayLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 516
    goto/16 :goto_a

    .line 518
    .end local v15           #overlayLabel:Ljava/lang/String;
    :pswitch_105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 520
    goto/16 :goto_a

    .line 522
    :pswitch_115
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_a

    .line 445
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_f9
        :pswitch_115
        :pswitch_10
        :pswitch_105
    .end packed-switch

    .line 472
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_df
        :pswitch_a4
        :pswitch_c2
        :pswitch_d6
        :pswitch_b7
    .end packed-switch

    .line 496
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

    .line 347
    const/4 v8, 0x0

    .line 348
    .local v8, pile:Lcom/google/android/music/albumwall/MusicPile;
    iget-object v12, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v12}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v6

    .line 349
    .local v6, mode:I
    invoke-static {v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v12

    if-eqz v12, :cond_86

    .line 350
    invoke-direct {p0, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 351
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ge p1, v12, :cond_24

    .line 352
    new-instance v8, Lcom/google/android/music/albumwall/MusicPile;

    .end local v8           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v8}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .line 353
    .restart local v8       #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 354
    packed-switch v6, :pswitch_data_8e

    .line 389
    .end local v0           #c:Landroid/database/Cursor;
    :cond_24
    :goto_24
    if-eqz v8, :cond_29

    .line 390
    invoke-virtual {v8, v6}, Lcom/google/android/music/albumwall/MusicPile;->setMode(I)V

    .line 392
    :cond_29
    invoke-interface {p2, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 393
    return-void

    .line 356
    .restart local v0       #c:Landroid/database/Cursor;
    :pswitch_2d
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 357
    .local v2, id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, label:Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, sortKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, overlayLabel:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v10, :cond_65

    move v1, v10

    .line 361
    .local v1, hasRemote:Z
    :goto_4a
    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_67

    move v4, v10

    .line 362
    .local v4, keepOn:Z
    :goto_52
    invoke-virtual {v8, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 363
    invoke-virtual {v8, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v8, v9}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v8, v7}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v8, v1}, Lcom/google/android/music/albumwall/MusicPile;->setHasRemote(Z)V

    .line 367
    invoke-virtual {v8, v4}, Lcom/google/android/music/albumwall/MusicPile;->setKeepOn(Z)V

    goto :goto_24

    .end local v1           #hasRemote:Z
    .end local v4           #keepOn:Z
    :cond_65
    move v1, v11

    .line 360
    goto :goto_4a

    .restart local v1       #hasRemote:Z
    :cond_67
    move v4, v11

    .line 361
    goto :goto_52

    .line 371
    .end local v1           #hasRemote:Z
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v7           #overlayLabel:Ljava/lang/String;
    .end local v9           #sortKey:Ljava/lang/String;
    :pswitch_69
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 372
    .restart local v2       #id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 373
    .restart local v5       #label:Ljava/lang/String;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 374
    .restart local v9       #sortKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    .restart local v7       #overlayLabel:Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 376
    invoke-virtual {v8, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v8, v9}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v8, v7}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    goto :goto_24

    .line 385
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v7           #overlayLabel:Ljava/lang/String;
    .end local v9           #sortKey:Ljava/lang/String;
    :cond_86
    if-nez p1, :cond_24

    .line 386
    new-instance v8, Lcom/google/android/music/albumwall/MusicPile;

    .end local v8           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v8}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .restart local v8       #pile:Lcom/google/android/music/albumwall/MusicPile;
    goto :goto_24

    .line 354
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
    .line 433
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v0

    .line 435
    .local v0, pileCount:I
    invoke-interface {p1, v0}, Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;->reply(I)V

    .line 436
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
    .line 398
    move-object/from16 v12, p2

    check-cast v12, Lcom/google/android/music/albumwall/MusicPile;

    .line 399
    .local v12, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    move-object/from16 v6, p4

    .line 400
    .local v6, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v8, 0x0

    .line 401
    .local v8, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_62

    .line 428
    :goto_a
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 429
    return-void

    .line 403
    :pswitch_10
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, artist:Ljava/lang/String;
    if-eqz p3, :cond_4d

    const/4 v2, 0x2

    .line 406
    .local v2, labelType:I
    :goto_17
    move-object v3, v7

    .line 407
    .local v3, label:Ljava/lang/String;
    if-nez p3, :cond_44

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 408
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4, v12}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongAndCountLabel(Landroid/content/Context;ZLcom/google/android/music/albumwall/MusicPile;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, countsText:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getMode()I

    move-result v11

    .line 410
    .local v11, mode:I
    const/4 v1, 0x2

    if-ne v11, v1, :cond_4f

    const v10, 0x7f0d00f1

    .line 413
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

    .line 416
    .end local v9           #countsText:Ljava/lang/String;
    .end local v10           #labelId:I
    .end local v11           #mode:I
    :cond_44
    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 418
    goto :goto_a

    .line 404
    .end local v2           #labelType:I
    .end local v3           #label:Ljava/lang/String;
    :cond_4d
    const/4 v2, 0x0

    goto :goto_17

    .line 410
    .restart local v2       #labelType:I
    .restart local v3       #label:Ljava/lang/String;
    .restart local v9       #countsText:Ljava/lang/String;
    .restart local v11       #mode:I
    :cond_4f
    const v10, 0x7f0d00f2

    goto :goto_31

    .line 420
    .end local v2           #labelType:I
    .end local v3           #label:Ljava/lang/String;
    .end local v7           #artist:Ljava/lang/String;
    .end local v9           #countsText:Ljava/lang/String;
    .end local v11           #mode:I
    :pswitch_53
    invoke-virtual {v12}, Lcom/google/android/music/albumwall/MusicPile;->getOverlayLabel()Ljava/lang/String;

    move-result-object v13

    .line 421
    .local v13, overlayLabel:Ljava/lang/String;
    invoke-direct {p0, v13, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 423
    goto :goto_a

    .line 425
    .end local v13           #overlayLabel:Ljava/lang/String;
    :pswitch_5c
    invoke-direct {p0, v12, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_a

    .line 401
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_10
        :pswitch_53
        :pswitch_5c
    .end packed-switch
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 1621
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;

    invoke-direct {v2, p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1631
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;-><init>(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1632
    .local v0, vs:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestInvalidate(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1633
    return-void
.end method

.method public declared-synchronized setAllowOpeningItem(Z)V
    .registers 3
    .parameter "allowOpenningItem"

    .prologue
    .line 926
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpeningItem:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 927
    monitor-exit p0

    return-void

    .line 926
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCreatingShortcut(Z)V
    .registers 2
    .parameter "creatingShortcut"

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 339
    return-void
.end method

.method public setHelper(Lcom/google/android/music/utils/MusicCallbackHelper;)V
    .registers 2
    .parameter "callbackHelper"

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 1501
    return-void
.end method

.method public updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 12
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1245
    iput-object v9, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAutoPlaylists:[J

    .line 1246
    const/4 v4, 0x0

    .line 1247
    .local v4, searchResult:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v2

    .line 1249
    .local v2, mode:I
    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1250
    iget-object v3, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v3, Lcom/google/android/music/albumwall/MusicPile;

    .line 1251
    .local v3, pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v3, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1253
    iget v0, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1254
    .local v0, index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1255
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v5, :cond_2f

    .line 1256
    if-ne v0, v8, :cond_27

    .line 1257
    invoke-virtual {p1, v9}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1322
    .end local v3           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_26
    :goto_26
    return-void

    .line 1260
    .restart local v3       #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_27
    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V

    .line 1270
    .end local v0           #index:I
    .end local v3           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v5

    iput v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1271
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v5, :cond_43

    .line 1273
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;

    invoke-direct {v6, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V

    .line 1283
    :cond_43
    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    .line 1284
    .local v1, item:Lcom/google/android/music/albumwall/MusicItem;
    invoke-direct {p0, v1, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfItem(Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1286
    iget v0, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1287
    .restart local v0       #index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1289
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v5, :cond_57

    .line 1290
    if-ne v0, v8, :cond_76

    .line 1291
    iput-object v9, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1302
    :cond_57
    :goto_57
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v5, :cond_26

    .line 1303
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v5, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v5, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v4

    .line 1304
    iget-boolean v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v5, :cond_82

    .line 1305
    iget v5, v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    iput v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1307
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;

    invoke-direct {v6, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;)V

    goto :goto_26

    .line 1293
    :cond_76
    iget-object v5, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;

    invoke-direct {v7, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v5, v6, v0, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V

    goto :goto_57

    .line 1316
    :cond_82
    iput-object v9, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1317
    iput v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1318
    iput v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileUnexpandedItemCount:I

    .line 1319
    iput v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileExpandedItemCount:I

    goto :goto_26
.end method

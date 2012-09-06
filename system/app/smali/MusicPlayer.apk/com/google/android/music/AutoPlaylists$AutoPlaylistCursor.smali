.class public abstract Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;
.super Lcom/google/android/music/store/MutableMatrixCursor;
.source "AutoPlaylists.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AutoPlaylists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoPlaylistCursor"
.end annotation


# instance fields
.field private volatile mClosed:Z

.field private mContext:Landroid/content/Context;

.field private final mIncludeAllTracksList:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .registers 8
    .parameter "context"
    .parameter "columnNames"
    .parameter "includeAllTracksList"

    .prologue
    .line 175
    invoke-direct {p0, p2}, Lcom/google/android/music/store/MutableMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mClosed:Z

    .line 163
    new-instance v0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$1;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$1;-><init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMainHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    .line 178
    iput-boolean p3, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mIncludeAllTracksList:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 180
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$2;-><init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->refreshData()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mClosed:Z

    return v0
.end method

.method private refreshData()V
    .registers 5

    .prologue
    .line 191
    iget-boolean v1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mClosed:Z

    if-eqz v1, :cond_5

    .line 211
    :goto_4
    return-void

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mIncludeAllTracksList:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylistsToShow(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/Context;Z)[J

    move-result-object v0

    .line 198
    .local v0, playlistsToShow:[J
    iget-object v1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;-><init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;[J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-super {p0}, Lcom/google/android/music/store/MutableMatrixCursor;->close()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mClosed:Z

    .line 217
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 219
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 220
    iput-object v2, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mContext:Landroid/content/Context;

    .line 221
    iput-object v2, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 222
    return-void
.end method

.method public abstract createAutoPlaylistRow(J)[Ljava/lang/Object;
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 235
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$4;-><init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

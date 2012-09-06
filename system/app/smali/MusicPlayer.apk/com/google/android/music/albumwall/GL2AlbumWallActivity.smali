.class public Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# instance fields
.field private mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field private mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

.field private mMode:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field private mView:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "topLevel"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/AlbumWallRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    return-object v0
.end method

.method private expandArtist(JLjava/lang/String;ZZ)V
    .registers 14
    .parameter "artistId"
    .parameter "sortableAlbumArtistName"
    .parameter "animate"
    .parameter "focusOnFirstExpandedArtist"

    .prologue
    .line 131
    iget-object v7, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    new-instance v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;JLjava/lang/String;ZZ)V

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/utils/MusicCallbackHelper;->post(Ljava/lang/Runnable;Z)V

    .line 147
    return-void
.end method

.method public static getModeDebugString(I)Ljava/lang/String;
    .registers 4
    .parameter "mode"

    .prologue
    .line 207
    packed-switch p0, :pswitch_data_56

    .line 223
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v0, :cond_35

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_20
    const-string v0, "recent"

    .line 227
    :goto_22
    return-object v0

    .line 211
    :pswitch_23
    const-string v0, "albums"

    goto :goto_22

    .line 213
    :pswitch_26
    const-string v0, "artists"

    goto :goto_22

    .line 215
    :pswitch_29
    const-string v0, "genres"

    goto :goto_22

    .line 217
    :pswitch_2c
    const-string v0, "playlists"

    goto :goto_22

    .line 219
    :pswitch_2f
    const-string v0, "empty"

    goto :goto_22

    .line 221
    :pswitch_32
    const-string v0, "singleAlbum"

    goto :goto_22

    .line 226
    :cond_35
    const-string v0, "GL2AlbumWallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const-string v0, "unknown"

    goto :goto_22

    .line 207
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2c
        :pswitch_26
        :pswitch_29
        :pswitch_32
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "mode"

    .prologue
    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, resId:I
    packed-switch p1, :pswitch_data_38

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :pswitch_1d
    const v0, 0x7f0d00d6

    .line 203
    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_24
    return-object v1

    .line 185
    :pswitch_25
    const v0, 0x7f0d00d7

    .line 186
    goto :goto_20

    .line 188
    :pswitch_29
    const v0, 0x7f0d00d8

    .line 189
    goto :goto_20

    .line 191
    :pswitch_2d
    const v0, 0x7f0d00db

    .line 192
    goto :goto_20

    .line 194
    :pswitch_31
    const v0, 0x7f0d00da

    .line 195
    goto :goto_20

    .line 198
    :pswitch_35
    const/4 v1, 0x0

    goto :goto_24

    .line 180
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25
        :pswitch_31
        :pswitch_29
        :pswitch_2d
        :pswitch_35
        :pswitch_35
        :pswitch_1d
    .end packed-switch
.end method

.method public static final isClusteredMode(I)Z
    .registers 2
    .parameter "mode"

    .prologue
    .line 266
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateBottomBar()V
    .registers 3

    .prologue
    .line 318
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method public getZOrder()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 13
    .parameter "state"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 90
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "displayMode"

    const/4 v4, 0x5

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 91
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setMode(I)V

    .line 92
    const-string v0, "GL2AlbumWallActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v9

    .line 95
    .local v9, isClustered:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getAlbumWallConfig()Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-result-object v6

    .line 96
    .local v6, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    invoke-virtual {v6, v9}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusters(Z)V

    .line 98
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->reset()V

    .line 99
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->resetScrollingPositionAndFocusItem()V

    .line 101
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 102
    .local v7, createShortcut:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setCreatingShortcut(Z)V

    .line 104
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isModeShowScrollBar(I)Z

    move-result v10

    .line 105
    .local v10, showScrollBar:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setShowScrollBar(Z)V

    .line 108
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9b

    .line 109
    const-string v0, "albumArtistId"

    const-wide/16 v4, -0x1

    invoke-virtual {v8, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 110
    .local v1, artistId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_9b

    .line 112
    const-string v0, "sortableAlbumArtistName"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, sortableAlbumArtistName:Ljava/lang/String;
    if-eqz v3, :cond_9b

    .line 114
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a7

    const/4 v5, 0x1

    :goto_97
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->expandArtist(JLjava/lang/String;ZZ)V

    .line 120
    .end local v1           #artistId:J
    .end local v3           #sortableAlbumArtistName:Ljava/lang/String;
    :cond_9b
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setAllowOpeningItem(Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestFullLayout()V

    .line 122
    return-void

    .line 114
    .restart local v1       #artistId:J
    .restart local v3       #sortableAlbumArtistName:Ljava/lang/String;
    :cond_a7
    const/4 v5, 0x0

    goto :goto_97
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isModeShowScrollBar(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 158
    if-eqz p1, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 162
    .local v0, showScrollBar:Z
    :cond_e
    :goto_e
    return v0

    .line 158
    .end local v0           #showScrollBar:Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 175
    :cond_c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 176
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setBottomBarHeight(F)V

    .line 126
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 127
    return-void
.end method

.method protected onCreate()V
    .registers 7

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 67
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 69
    iget v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-static {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    .line 70
    .local v1, isClustered:Z
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;-><init>(Landroid/content/Context;Z)V

    .line 72
    .local v0, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/albumwall/AlbumWallView;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 74
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 75
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 76
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderMode(I)V

    .line 78
    new-instance v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    .line 80
    new-instance v2, Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-direct {v2}, Lcom/google/android/music/utils/MusicCallbackHelper;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 81
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setHelper(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 82
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 272
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onDestroy()V

    .line 262
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setUseSystemBackground(Z)V

    .line 168
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 169
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    .line 301
    const-string v0, "GL2AlbumWallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 304
    :goto_22
    return v0

    .line 293
    :pswitch_23
    iget v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v2, v0, :cond_36

    .line 294
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    const v2, 0x7f0d0054

    invoke-static {v2, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_22

    :cond_36
    move v0, v1

    .line 297
    goto :goto_22

    .line 291
    :pswitch_data_38
    .packed-switch 0x17
        :pswitch_23
    .end packed-switch
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 3
    .parameter "musicStateController"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onMusicModeStateChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 310
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onPause()V

    .line 238
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 277
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eq v1, v3, :cond_16

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 279
    :cond_16
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 280
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_21

    .line 281
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_21
    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v1, v3, :cond_2f

    .line 284
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2f
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 242
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setBottomBarHeight(F)V

    .line 246
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onResume()V

    .line 247
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setAllowOpeningItem(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 249
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 250
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 314
    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .registers 3
    .parameter "code"
    .parameter "data"

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->setResult(ILandroid/content/Intent;)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->finish()V

    .line 334
    return-void
.end method

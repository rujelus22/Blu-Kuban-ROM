.class public Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


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
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)Lcom/google/android/music/albumwall/AlbumWallRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
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
    .line 137
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

    .line 153
    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "mode"

    .prologue
    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, resId:I
    packed-switch p1, :pswitch_data_38

    .line 216
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

    .line 198
    :pswitch_1d
    const v0, 0x7f0d00c6

    .line 219
    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_24
    return-object v1

    .line 201
    :pswitch_25
    const v0, 0x7f0d00c7

    .line 202
    goto :goto_20

    .line 204
    :pswitch_29
    const v0, 0x7f0d00c8

    .line 205
    goto :goto_20

    .line 207
    :pswitch_2d
    const v0, 0x7f0d00cb

    .line 208
    goto :goto_20

    .line 210
    :pswitch_31
    const v0, 0x7f0d00ca

    .line 211
    goto :goto_20

    .line 214
    :pswitch_35
    const/4 v1, 0x0

    goto :goto_24

    .line 196
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
    .line 251
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
    .line 323
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    new-instance v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$2;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->queueEvent(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method public getZOrder()I
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 13
    .parameter "state"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 101
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "displayMode"

    const/4 v4, 0x5

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    .line 102
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setMode(I)V

    .line 103
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

    .line 105
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v9

    .line 106
    .local v9, isClustered:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getAlbumWallConfig()Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-result-object v6

    .line 107
    .local v6, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    invoke-virtual {v6, v9}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusters(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->reset()V

    .line 110
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->resetScrollingPositionAndFocusItem()V

    .line 112
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 113
    .local v7, createShortcut:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0, v7}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setCreatingShortcut(Z)V

    .line 115
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isModeShowScrollBar(I)Z

    move-result v10

    .line 116
    .local v10, showScrollBar:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setShowScrollBar(Z)V

    .line 119
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9b

    .line 120
    const-string v0, "albumArtistId"

    const-wide/16 v4, -0x1

    invoke-virtual {v8, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 121
    .local v1, artistId:J
    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_9b

    .line 123
    const-string v0, "sortableAlbumArtistName"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, sortableAlbumArtistName:Ljava/lang/String;
    if-eqz v3, :cond_9b

    .line 125
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a7

    const/4 v5, 0x1

    :goto_97
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->expandArtist(JLjava/lang/String;ZZ)V

    .line 131
    .end local v1           #artistId:J
    .end local v3           #sortableAlbumArtistName:Ljava/lang/String;
    :cond_9b
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setAllowOpeningItem(Z)V

    .line 132
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestFullLayout()V

    .line 133
    return-void

    .line 125
    .restart local v1       #artistId:J
    .restart local v3       #sortableAlbumArtistName:Ljava/lang/String;
    :cond_a7
    const/4 v5, 0x0

    goto :goto_97
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isModeShowScrollBar(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 164
    if-eqz p1, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x6

    if-ne p1, v1, :cond_f

    .line 168
    .local v0, showScrollBar:Z
    :cond_e
    :goto_e
    return v0

    .line 164
    .end local v0           #showScrollBar:Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 5
    .parameter "actionbarConfig"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x1

    .line 182
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 185
    :cond_e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 187
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v0, v1, :cond_1b

    .line 188
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 192
    :goto_1a
    return-void

    .line 190
    :cond_1b
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    goto :goto_1a
.end method

.method protected onCreate()V
    .registers 8

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 64
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 66
    iget v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-static {v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    .line 67
    .local v1, isClustered:Z
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;-><init>(Landroid/content/Context;Z)V

    .line 69
    .local v0, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    new-instance v3, Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v3, p0, v4}, Lcom/google/android/music/albumwall/AlbumWallView;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 71
    new-instance v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v5, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    .line 72
    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v3, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 73
    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/albumwall/AlbumWallView;->setRenderMode(I)V

    .line 75
    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    .line 77
    new-instance v3, Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-direct {v3}, Lcom/google/android/music/utils/MusicCallbackHelper;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    .line 78
    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v3, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setHelper(Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 79
    iget-object v3, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v4, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v5, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/albumwall/AlbumWallView;->setCallback(Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/utils/MusicCallbackHelper;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v2

    .line 82
    .local v2, musicController:Lcom/google/android/music/activitymanagement/MusicUIController;
    if-eqz v2, :cond_64

    .line 83
    invoke-virtual {v2, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->setFocusAlbumReceiver(Lcom/google/android/music/activitymanagement/MusicUIController$FocusAlbumReceiver;)V

    .line 85
    :cond_64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 257
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getLabelsVisible()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setShowLabels(IZ)V

    .line 244
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onDestroy()V

    .line 247
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public onFocusAlbumChange(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getAppState()Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    move-result-object v0

    .line 308
    .local v0, layoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    if-eqz v0, :cond_f

    .line 309
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setBackgroundRepresentativeAlbum(J)V

    .line 311
    :cond_f
    return-void
.end method

.method public onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, showLabels:Z
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getShowLabels(I)Z

    move-result v0

    .line 93
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(ZZ)V

    .line 94
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 4
    .parameter "layoutConfig"

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setUseSystemBackground(Z)V

    .line 174
    iget v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 175
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 179
    :goto_17
    return-void

    .line 177
    :cond_18
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    goto :goto_17
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 4
    .parameter "inManageMusicMode"
    .parameter "manager"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v0, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onManageMusicModeStateChanged(Lcom/google/android/music/OfflineMusicManager;)V

    .line 319
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 320
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_42

    .line 299
    :goto_9
    const-string v1, "GL2AlbumWallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_21
    :goto_21
    return v0

    .line 286
    :pswitch_22
    iget-object v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v2, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    :goto_27
    move v0, v1

    .line 302
    goto :goto_21

    .line 289
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    goto :goto_27

    .line 292
    :pswitch_2f
    iget v2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v2, v1, :cond_21

    .line 293
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    const v2, 0x7f0d0044

    invoke-static {v2, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 284
    :pswitch_data_42
    .packed-switch 0x17
        :pswitch_2f
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onPause()V

    .line 229
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 262
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v1

    if-nez v1, :cond_18

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-nez v1, :cond_18

    .line 263
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 264
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_18

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_18
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-nez v1, :cond_2f

    .line 267
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 268
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_2f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eq v1, v3, :cond_44

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-eqz v1, :cond_44

    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    .line 272
    :cond_44
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 273
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_4f

    .line 274
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_4f
    iget v1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mMode:I

    if-ne v1, v3, :cond_5d

    .line 277
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 278
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_5d

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_5d
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->mCallback:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setAllowOpeningItem(Z)V

    .line 239
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->updateBottomBar()V

    .line 315
    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .registers 3
    .parameter "code"
    .parameter "data"

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->finish()V

    .line 339
    return-void
.end method

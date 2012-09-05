.class public Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
.super Ljava/lang/Object;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;,
        Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
    }
.end annotation


# instance fields
.field private mAllowShopTutorial:Z

.field private mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field private mFocusedAlbumId:J

.field private mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

.field private mManageMusicBarEnabled:Z

.field private mManageMusicModeEnabled:Z

.field private mNowPlayingBarEnabled:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseSystemBackground:Z

.field private mUseTopBarNowPlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->reset(Landroid/content/Context;)V

    .line 377
    return-void
.end method


# virtual methods
.method public getFocusedAlbumId()J
    .registers 3

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mFocusedAlbumId:J

    return-wide v0
.end method

.method public getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    return-object v0
.end method

.method public getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAllowShopTutorial()Z
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    return v0
.end method

.method public isManageMusicBarEnabled()Z
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    return v0
.end method

.method public isManageMusicModeEnabled()Z
    .registers 2

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    return v0
.end method

.method public isNowPlayingBarEnabled()Z
    .registers 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    return v0
.end method

.method public isUseSystemBackground()Z
    .registers 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    return v0
.end method

.method public isUseTopBarNowPlaying()Z
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseTopBarNowPlaying:Z

    return v0
.end method

.method public reset(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 380
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 382
    .local v0, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->useActionBarNowPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseTopBarNowPlaying:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_28

    .line 384
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    .line 387
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    .line 388
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    .line 389
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    .line 390
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 391
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 392
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    .line 393
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mFocusedAlbumId:J

    .line 394
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    .line 395
    return-void

    .line 384
    :catchall_28
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method

.method public setAllowShopTutorial(Z)V
    .registers 2
    .parameter "allowTutorial"

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    .line 475
    return-void
.end method

.method public setFocusedAlbumId(J)V
    .registers 3
    .parameter "focusedAlbumId"

    .prologue
    .line 466
    iput-wide p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mFocusedAlbumId:J

    .line 467
    return-void
.end method

.method public setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V
    .registers 2
    .parameter "level"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 459
    return-void
.end method

.method public setManageMusicBarEnabled(Z)V
    .registers 2
    .parameter "manageMusicBarEnabled"

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    .line 427
    return-void
.end method

.method public setManageMusicModeEnabled(Z)V
    .registers 2
    .parameter "manageMusicModeEnabled"

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    .line 435
    return-void
.end method

.method public setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 447
    return-void
.end method

.method public setNowPlayingBarEnabled(Z)V
    .registers 2
    .parameter "nowPlayingBarEnabled"

    .prologue
    .line 418
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    .line 419
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "mTitle"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    .line 403
    return-void
.end method

.method public setUseSystemBackground(Z)V
    .registers 2
    .parameter "useSystemBackground"

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    .line 411
    return-void
.end method

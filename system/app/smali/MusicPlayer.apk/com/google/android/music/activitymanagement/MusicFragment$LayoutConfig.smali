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

.field private mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

.field private mManageMusicBarEnabled:Z

.field private mManageMusicModeEnabled:Z

.field private mNowPlayingBarEnabled:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseSystemBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->reset(Landroid/content/Context;)V

    .line 394
    return-void
.end method


# virtual methods
.method public getLevel()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    return-object v0
.end method

.method public getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAllowShopTutorial()Z
    .registers 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    return v0
.end method

.method public isManageMusicBarEnabled()Z
    .registers 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    return v0
.end method

.method public isManageMusicModeEnabled()Z
    .registers 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    return v0
.end method

.method public isNowPlayingBarEnabled()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    return v0
.end method

.method public isUseSystemBackground()Z
    .registers 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    return v0
.end method

.method public reset(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    .line 398
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    .line 399
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    .line 400
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    .line 401
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 402
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NON_LEVELED:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 403
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    .line 404
    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    .line 405
    return-void
.end method

.method public setAllowShopTutorial(Z)V
    .registers 2
    .parameter "allowTutorial"

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAllowShopTutorial:Z

    .line 469
    return-void
.end method

.method public setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V
    .registers 2
    .parameter "level"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mLevel:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    .line 461
    return-void
.end method

.method public setManageMusicBarEnabled(Z)V
    .registers 2
    .parameter "manageMusicBarEnabled"

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicBarEnabled:Z

    .line 437
    return-void
.end method

.method public setManageMusicModeEnabled(Z)V
    .registers 2
    .parameter "manageMusicModeEnabled"

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mManageMusicModeEnabled:Z

    .line 445
    return-void
.end method

.method public setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mAvailableEmptyView:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 449
    return-void
.end method

.method public setNowPlayingBarEnabled(Z)V
    .registers 2
    .parameter "nowPlayingBarEnabled"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mNowPlayingBarEnabled:Z

    .line 429
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "mTitle"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mTitle:Ljava/lang/CharSequence;

    .line 413
    return-void
.end method

.method public setUseSystemBackground(Z)V
    .registers 2
    .parameter "useSystemBackground"

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->mUseSystemBackground:Z

    .line 421
    return-void
.end method

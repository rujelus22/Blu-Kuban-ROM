.class public Lcom/google/android/music/carousel/CarouselActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "CarouselActivity.java"


# static fields
.field public static PIXEL_DENSITY:F


# instance fields
.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mView:Lcom/google/android/opengl/carousel/CarouselView;

.field private mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "base"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public static initializePixelDensity(Landroid/view/WindowManager;)V
    .registers 4
    .parameter "windowManager"

    .prologue
    .line 58
    sget v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    .line 63
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_17
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 105
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 106
    .local v1, icicle:Landroid/os/Bundle;
    if-eqz v1, :cond_1c

    const-string v2, "RotationAngle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 107
    const-string v2, "RotationAngle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 108
    .local v0, angle:F
    iget-object v2, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->setCarouselRotationAngle(F)V

    .line 110
    .end local v0           #angle:F
    :cond_1c
    return-void
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 78
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 79
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 80
    return-void
.end method

.method protected onCreate()V
    .registers 6

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/carousel/CarouselActivity;->initializePixelDensity(Landroid/view/WindowManager;)V

    .line 47
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 48
    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getPreferredSurfaceFormat()I

    move-result v0

    .line 51
    .local v0, surfacePixelFormat:I
    new-instance v1, Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 53
    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v2, p0, Lcom/google/android/music/carousel/CarouselActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/carousel/CarouselActivity;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;-><init>(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    iput-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onDestroy()V

    .line 135
    :cond_9
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 136
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 137
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 3
    .parameter "layoutConfig"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 72
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setUseSystemBackground(Z)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_15

    .line 125
    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onPause()V

    .line 128
    :cond_15
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    if-eqz v0, :cond_15

    .line 116
    iget-object v0, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/music/carousel/CarouselActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 119
    :cond_15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "RotationAngle"

    iget-object v1, p0, Lcom/google/android/music/carousel/CarouselActivity;->mViewHelper:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselRotationAngle()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    return-void
.end method

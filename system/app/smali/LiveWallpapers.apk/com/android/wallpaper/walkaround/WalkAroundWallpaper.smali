.class public Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "WalkAroundWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
    }
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->stopCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->startCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method private startCamera()V
    .registers 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_b

    .line 71
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 82
    :goto_a
    return-void

    .line 74
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_a

    .line 75
    :catch_11
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 79
    const-string v1, "WalkAround"

    const-string v2, "Error opening the camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private stopCamera()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 87
    :try_start_4
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_14

    .line 93
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_12

    .line 98
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 100
    :cond_11
    return-void

    .line 94
    :catch_12
    move-exception v0

    goto :goto_e

    .line 88
    :catch_14
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3a

    .line 57
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 58
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_3b

    .line 59
    .local v1, portrait:Z
    :goto_14
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 60
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "orientation"

    if-eqz v1, :cond_3d

    const-string v2, "portrait"

    :goto_20
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 63
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 64
    :cond_35
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 67
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    .end local v1           #portrait:Z
    :cond_3a
    return-void

    .line 58
    :cond_3b
    const/4 v1, 0x0

    goto :goto_14

    .line 60
    .restart local v0       #params:Landroid/hardware/Camera$Parameters;
    .restart local v1       #portrait:Z
    :cond_3d
    const-string v2, "landscape"

    goto :goto_20
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 50
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;-><init>(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V

    iput-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 44
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->stopCamera()V

    .line 45
    return-void
.end method

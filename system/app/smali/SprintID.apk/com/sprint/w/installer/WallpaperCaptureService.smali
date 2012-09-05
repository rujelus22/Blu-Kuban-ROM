.class public Lcom/sprint/w/installer/WallpaperCaptureService;
.super Landroid/app/Service;
.source "WallpaperCaptureService.java"


# static fields
.field static sBusy:Z


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    const-class v0, Lcom/sprint/w/installer/WallpaperCaptureService;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/WallpaperCaptureService;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "i"

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 25
    sget-boolean v4, Lcom/sprint/w/installer/WallpaperCaptureService;->sBusy:Z

    if-eqz v4, :cond_e

    .line 26
    iget-object v3, p0, Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Wallpaper Capture Service is already working!"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 68
    :goto_d
    return v2

    .line 29
    :cond_e
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    .line 30
    .local v0, pi:Lcom/sprint/w/installer/PackInfo;
    if-eqz v0, :cond_18

    iget-object v4, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    if-nez v4, :cond_1c

    .line 31
    :cond_18
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperCaptureService;->stopSelf()V

    goto :goto_d

    .line 38
    :cond_1c
    iget-boolean v4, v0, Lcom/sprint/w/installer/PackInfo;->newInstall:Z

    if-nez v4, :cond_38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/sprint/w/installer/PackInfo;->activationTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v4, v4, v6

    if-gez v4, :cond_38

    .line 39
    iget-object v3, p0, Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Wallpaper Capture Service: nothing to do!"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/sprint/w/installer/WallpaperCaptureService;->stopSelf()V

    goto :goto_d

    .line 44
    :cond_38
    sput-boolean v3, Lcom/sprint/w/installer/WallpaperCaptureService;->sBusy:Z

    .line 45
    new-instance v1, Lcom/sprint/w/installer/WallpaperCaptureService$1;

    const-string v2, "WallpaperCapture"

    invoke-direct {v1, p0, v2, v0}, Lcom/sprint/w/installer/WallpaperCaptureService$1;-><init>(Lcom/sprint/w/installer/WallpaperCaptureService;Ljava/lang/String;Lcom/sprint/w/installer/PackInfo;)V

    .line 67
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v2, v3

    .line 68
    goto :goto_d
.end method

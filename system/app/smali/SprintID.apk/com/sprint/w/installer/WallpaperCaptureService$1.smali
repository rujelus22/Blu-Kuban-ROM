.class Lcom/sprint/w/installer/WallpaperCaptureService$1;
.super Ljava/lang/Thread;
.source "WallpaperCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/WallpaperCaptureService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

.field final synthetic val$pi:Lcom/sprint/w/installer/PackInfo;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/WallpaperCaptureService;Ljava/lang/String;Lcom/sprint/w/installer/PackInfo;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

    iput-object p3, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->val$pi:Lcom/sprint/w/installer/PackInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 48
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

    #getter for: Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v1}, Lcom/sprint/w/installer/WallpaperCaptureService;->access$000(Lcom/sprint/w/installer/WallpaperCaptureService;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "WP Capture Service starting"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

    .line 52
    .local v0, c:Landroid/content/Context;
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->val$pi:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sprint/w/installer/WallpaperCaptureService;->sBusy:Z

    .line 54
    const-string v1, "HOME"

    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->val$pi:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 55
    sput-object v3, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 61
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

    invoke-virtual {v1}, Lcom/sprint/w/installer/WallpaperCaptureService;->stopSelf()V

    .line 62
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->this$0:Lcom/sprint/w/installer/WallpaperCaptureService;

    #getter for: Lcom/sprint/w/installer/WallpaperCaptureService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v1}, Lcom/sprint/w/installer/WallpaperCaptureService;->access$000(Lcom/sprint/w/installer/WallpaperCaptureService;)Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "WP Capture Service done"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 65
    return-void

    .line 57
    :cond_3c
    const-string v1, "OEM"

    iget-object v2, p0, Lcom/sprint/w/installer/WallpaperCaptureService$1;->val$pi:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 58
    sput-object v3, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2b
.end method

.class public Lcom/sprint/w/installer/WallpaperListener;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperListener.java"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-class v0, Lcom/sprint/w/installer/WallpaperListener;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperListener;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/sprint/w/installer/WallpaperListener;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "WP Changed!"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/WallpaperCaptureService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.class public Lcom/google/googlenav/wallpaper/MapWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/BroadcastReceiver;

.field private volatile c:Z

.field private volatile d:Ljava/lang/String;

.field private e:Landroid/graphics/Paint;

.field private volatile f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->c:Z

    .line 180
    const-string v0, "(c) 2011 Google"

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->d:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->e:Landroid/graphics/Paint;

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->f:Landroid/graphics/Rect;

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Z

    return p1
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/google/googlenav/wallpaper/a;

    invoke-direct {v1, p0}, Lcom/google/googlenav/wallpaper/a;-><init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V

    iput-object v1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->b:Landroid/content/BroadcastReceiver;

    .line 196
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    .prologue
    .line 209
    new-instance v0, Lcom/google/googlenav/wallpaper/b;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/wallpaper/b;-><init>(Lcom/google/googlenav/wallpaper/MapWallpaper;Lcom/google/googlenav/wallpaper/MapWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    return-void
.end method

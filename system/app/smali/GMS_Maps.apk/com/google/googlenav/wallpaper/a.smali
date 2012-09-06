.class Lcom/google/googlenav/wallpaper/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/MapWallpaper;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z

    .line 194
    return-void
.end method

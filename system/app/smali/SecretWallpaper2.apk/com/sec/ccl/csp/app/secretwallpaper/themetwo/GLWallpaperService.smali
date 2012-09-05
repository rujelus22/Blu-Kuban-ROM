.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;,
        Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    .prologue
    .line 72
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;)V

    return-object v0
.end method

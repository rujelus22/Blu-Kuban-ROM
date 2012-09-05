.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$SimpleEGLConfigChooser;
.super Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEGLConfigChooser"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 10
    .parameter "withDepthBuffer"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 1020
    if-eqz p1, :cond_18

    const/16 v5, 0x10

    :goto_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;-><init>(IIIIII)V

    .line 1023
    iput v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;->mRedSize:I

    .line 1024
    iput v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;->mGreenSize:I

    .line 1025
    iput v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;->mBlueSize:I

    .line 1026
    iput v7, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$ComponentSizeChooser;->mAlphaSize:I

    .line 1027
    return-void

    :cond_18
    move v5, v4

    .line 1020
    goto :goto_8
.end method

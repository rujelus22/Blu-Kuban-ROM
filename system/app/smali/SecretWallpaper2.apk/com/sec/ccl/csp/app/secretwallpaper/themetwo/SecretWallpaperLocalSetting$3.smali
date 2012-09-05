.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$3;
.super Ljava/lang/Object;
.source "SecretWallpaperLocalSetting.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$3;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 115
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 110
    const-string v0, "SecretWallpaper"

    const-string v1, "onScrollStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.class Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$1;
.super Ljava/lang/Object;
.source "SecretWallpaperLocalSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$1;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090002

    if-ne v0, v1, :cond_e

    .line 87
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting$1;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/SecretWallpaperLocalSetting;->finish()V

    .line 89
    :cond_e
    return-void
.end method

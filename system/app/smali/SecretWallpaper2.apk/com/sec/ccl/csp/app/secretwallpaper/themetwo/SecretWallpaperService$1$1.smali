.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1$1;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1$1;->this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1108
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1$1;->this$1:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;

    iget-object v0, v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkWeather()V
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V

    .line 1109
    return-void
.end method

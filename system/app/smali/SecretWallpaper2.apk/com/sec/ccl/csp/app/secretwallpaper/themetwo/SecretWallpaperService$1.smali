.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;
.super Landroid/os/Handler;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 2
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1101
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_13

    .line 1105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1$1;

    invoke-direct {v1, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1$1;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1112
    :cond_13
    return-void
.end method

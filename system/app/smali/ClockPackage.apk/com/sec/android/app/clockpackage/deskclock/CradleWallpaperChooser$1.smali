.class Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$1;
.super Landroid/content/BroadcastReceiver;
.source "CradleWallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->finish()V

    .line 110
    :cond_11
    return-void
.end method

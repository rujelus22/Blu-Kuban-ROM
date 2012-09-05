.class Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 6263
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 6264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6265
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 6269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->onFavoritesChanged()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5400(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 6270
    return-void
.end method

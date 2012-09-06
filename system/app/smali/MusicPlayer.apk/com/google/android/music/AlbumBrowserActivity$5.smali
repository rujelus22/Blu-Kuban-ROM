.class Lcom/google/android/music/AlbumBrowserActivity$5;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$5;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 737
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 740
    invoke-static {}, Lcom/google/android/music/AlbumBrowserActivity;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 741
    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_1e
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$5;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity;->finish()V

    .line 744
    return-void
.end method

.class Lcom/google/android/music/GenreAlbumBrowserActivity$5;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1090
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1093
    invoke-static {}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1094
    const-string v0, "GenreAlbumBrowser"

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

    .line 1096
    :cond_1e
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->finish()V

    .line 1097
    return-void
.end method

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
    .line 752
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
    .line 755
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$5;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity;->finish()V

    .line 759
    return-void
.end method

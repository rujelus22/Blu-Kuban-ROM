.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onItemPartSelected(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$x:F

    iput p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    .line 981
    .local v0, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 982
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V
    invoke-static {v1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 986
    :goto_11
    return-void

    .line 984
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$x:F

    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;->val$y:F

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;FF)V

    goto :goto_11
.end method

.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
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
    .line 1011
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$x:F

    iput p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    .line 1014
    .local v0, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$x:F

    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;->val$y:F

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;FF)V

    .line 1015
    return-void
.end method
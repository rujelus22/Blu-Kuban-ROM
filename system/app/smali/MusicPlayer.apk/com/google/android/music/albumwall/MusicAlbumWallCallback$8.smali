.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$Integer2Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(II)V
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p1, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileUnexpandedItemCount:I

    .line 1373
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p2, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileExpandedItemCount:I

    .line 1374
    return-void
.end method

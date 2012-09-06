.class Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer$3;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;->this$1:Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;->this$1:Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$3$1;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onItemFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 536
    return-void
.end method

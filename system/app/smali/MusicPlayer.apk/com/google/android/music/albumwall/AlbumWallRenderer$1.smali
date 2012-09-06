.class Lcom/google/android/music/albumwall/AlbumWallRenderer$1;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallback;->onPileFocused(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)V

    .line 230
    return-void
.end method

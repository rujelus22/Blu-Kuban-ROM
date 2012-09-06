.class Lcom/google/android/music/albumwall/AlbumWallView$7;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;)V
    .registers 2
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->collapseExpandedPile(Z)V

    .line 489
    return-void
.end method

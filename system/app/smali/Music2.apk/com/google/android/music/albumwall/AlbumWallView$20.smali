.class Lcom/google/android/music/albumwall/AlbumWallView$20;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setManageAlbumMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-boolean p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$20;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setManageAlbumMode(Z)V

    .line 684
    return-void
.end method

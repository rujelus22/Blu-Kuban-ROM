.class Lcom/google/android/music/albumwall/AlbumWallView$2;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->resetScrollingPositionAndFocusItem()V
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
    .line 194
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$2;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$2;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v0

    .line 197
    .local v0, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v0, :cond_f

    .line 198
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Transformer;->resetTransformer()V

    .line 200
    :cond_f
    return-void
.end method

.class Lcom/google/android/music/albumwall/AlbumWallView$5;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->requestFullLayout()V
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
    .line 241
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$5;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$5;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 244
    return-void
.end method

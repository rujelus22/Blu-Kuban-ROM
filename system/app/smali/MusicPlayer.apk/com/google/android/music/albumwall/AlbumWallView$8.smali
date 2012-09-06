.class Lcom/google/android/music/albumwall/AlbumWallView$8;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->routeKey(III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$flags:I

.field final synthetic val$keyCode:I

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$tag:I

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$keyCode:I

    iput p4, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$tag:I

    iget v3, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$keyCode:I

    iget v4, p0, Lcom/google/android/music/albumwall/AlbumWallView$8;->val$flags:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->routeKey(III)Z

    move-result v1

    #calls: Lcom/google/android/music/albumwall/AlbumWallView;->sendBoolean(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->access$200(Lcom/google/android/music/albumwall/AlbumWallView;Z)V

    .line 526
    return-void
.end method

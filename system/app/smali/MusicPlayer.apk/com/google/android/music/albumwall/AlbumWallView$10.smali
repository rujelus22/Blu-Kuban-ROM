.class Lcom/google/android/music/albumwall/AlbumWallView$10;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$epoch:Lcom/google/android/music/albumwall/Model$Epoch;

    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallView$10;->val$n:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 572
    return-void
.end method

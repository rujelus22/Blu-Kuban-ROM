.class Lcom/google/android/music/albumwall/AlbumWallView$6;
.super Ljava/lang/Object;
.source "AlbumWallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    iput-boolean p2, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->this$0:Lcom/google/android/music/albumwall/AlbumWallView;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallView;->mRenderer:Lcom/google/android/music/albumwall/AlbumWallRenderer;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->access$100(Lcom/google/android/music/albumwall/AlbumWallView;)Lcom/google/android/music/albumwall/AlbumWallRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallView$6;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setLabelsVisible(Z)V

    .line 261
    return-void
.end method

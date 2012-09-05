.class Lcom/google/android/music/albumwall/AlbumWallRenderer$12;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->setBackgroundRepresentativeAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-wide p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    #getter for: Lcom/google/android/music/albumwall/AlbumWallRenderer;->mBackgroundView:Lcom/google/android/music/albumwall/BackgroundView;
    invoke-static {v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$1100(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/BackgroundView;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$12;->val$albumId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/BackgroundView;->setBackgroundFromAlbumId(J)V

    .line 1101
    return-void
.end method

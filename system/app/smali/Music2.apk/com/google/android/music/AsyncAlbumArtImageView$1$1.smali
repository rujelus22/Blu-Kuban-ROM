.class Lcom/google/android/music/AsyncAlbumArtImageView$1$1;
.super Ljava/lang/Object;
.source "AsyncAlbumArtImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AsyncAlbumArtImageView$1;->notifyAlbumArtChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/AsyncAlbumArtImageView$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;->this$1:Lcom/google/android/music/AsyncAlbumArtImageView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;->this$1:Lcom/google/android/music/AsyncAlbumArtImageView$1;

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V
    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$900(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    .line 241
    return-void
.end method

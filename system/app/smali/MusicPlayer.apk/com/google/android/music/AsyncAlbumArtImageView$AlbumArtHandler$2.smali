.class Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;
.super Ljava/lang/Object;
.source "AsyncAlbumArtImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->albumImpl(Lcom/google/android/music/AsyncAlbumArtImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;

.field final synthetic val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    iput-object p2, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p3, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$d:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1500(Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$902(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z

    .line 764
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler$2;->val$imageView:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z
    invoke-static {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1602(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z

    .line 765
    return-void
.end method

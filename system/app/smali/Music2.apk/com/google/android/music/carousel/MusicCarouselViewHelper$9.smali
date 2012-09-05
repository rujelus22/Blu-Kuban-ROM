.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlbumArtChanged(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->val$id:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onRequestTexture(I)V

    .line 766
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-virtual {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

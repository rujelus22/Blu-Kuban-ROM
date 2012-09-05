.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->notifyAlbumArtChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    iput-wide p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->val$albumId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    .line 770
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const-wide/16 v1, -0x1

    #setter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1002(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)J

    .line 771
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    .line 773
    :cond_1e
    return-void
.end method

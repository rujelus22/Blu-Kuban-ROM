.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onInvalidateTexture(I)V
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
    .line 695
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 698
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 699
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$id:I

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-static {v1, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 700
    .local v0, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_2c

    .line 701
    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    if-eqz v1, :cond_21

    .line 704
    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v3, v4, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 706
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 708
    :cond_21
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;->val$id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 710
    :cond_2c
    monitor-exit v2

    .line 711
    return-void

    .line 710
    .end local v0           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method

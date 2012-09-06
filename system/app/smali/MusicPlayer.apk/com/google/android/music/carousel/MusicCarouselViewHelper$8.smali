.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;
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
    .line 780
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 783
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 784
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$id:I

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-static {v1, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 785
    .local v0, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_3a

    .line 786
    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    if-eqz v1, :cond_2f

    .line 789
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicUIController;->getArtDownloadServiceConnection()Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v3, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 792
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    .line 794
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 796
    :cond_3a
    monitor-exit v2

    .line 797
    return-void

    .line 796
    .end local v0           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

.field final synthetic val$id:I

.field final synthetic val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iput p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private playlistTypeToFauxStyle(I)I
    .registers 4
    .parameter "playlistType"

    .prologue
    .line 825
    packed-switch p1, :pswitch_data_10

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown playlistType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :pswitch_b
    const/4 v0, 0x1

    .line 829
    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_c

    .line 825
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public backgroundTask()V
    .registers 15

    .prologue
    .line 786
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I

    move-result v1

    add-int/lit8 v6, v1, -0x8

    .line 787
    .local v6, artWidth:I
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I

    move-result v1

    add-int/lit8 v7, v1, -0x8

    .line 789
    .local v7, artHeight:I
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->mBitmap:Landroid/graphics/Bitmap;

    .line 790
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 792
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 793
    const/high16 v1, 0x4080

    const/high16 v3, 0x4080

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v1, :pswitch_data_b8

    .line 813
    :goto_32
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 814
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getGlossyOverlay()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 815
    .local v11, glossyOverlay:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v12, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 817
    .local v12, overlayBounds:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 818
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 819
    new-instance v10, Landroid/graphics/RectF;

    const/high16 v1, 0x4080

    const/high16 v3, 0x4080

    add-int/lit8 v4, v6, 0x4

    int-to-float v4, v4

    add-int/lit8 v5, v7, 0x4

    int-to-float v5, v5

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 821
    .local v10, dst:Landroid/graphics/RectF;
    invoke-virtual {v0, v11, v12, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 822
    return-void

    .line 797
    .end local v10           #dst:Landroid/graphics/RectF;
    .end local v11           #glossyOverlay:Landroid/graphics/Bitmap;
    .end local v12           #overlayBounds:Landroid/graphics/Rect;
    .end local v13           #paint:Landroid/graphics/Paint;
    :pswitch_6c
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 802
    :pswitch_7e
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v8, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v9, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 807
    :pswitch_9b
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->playlistTypeToFauxStyle(I)I

    move-result v2

    .line 808
    .local v2, style:I
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    iget-object v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-object v8, v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 795
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_7e
        :pswitch_9b
    .end packed-switch
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    .line 837
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    invoke-static {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 838
    .local v0, currentId:I
    if-ltz v0, :cond_16

    .line 843
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    .line 850
    :goto_15
    return-void

    .line 848
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->deleteBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_15
.end method

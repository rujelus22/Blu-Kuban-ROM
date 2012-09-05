.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# instance fields
.field public attachMsgId:J

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFullScreenText:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mHasAttachment:Z

.field private mHasAudio:Z

.field private mHasText:Z

.field protected mHeightTransformRatio:F

.field protected mIsPreview:Z

.field protected mLocation:I

.field private mMovie:Landroid/graphics/Movie;

.field protected final mSlideNumber:I

.field private mTopText:Z

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F

.field private player:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .registers 5
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 118
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_29

    .line 119
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 121
    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/dom/smil/SmilPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowPresenter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    return v0
.end method

.method private doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .registers 5
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 294
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 296
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_c

    .line 297
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 305
    :cond_b
    :goto_b
    return-void

    .line 298
    :cond_c
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_14

    .line 299
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_b

    .line 300
    :cond_14
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1c

    .line 301
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_b

    .line 302
    :cond_1c
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_b

    .line 303
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_b
.end method

.method private doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .registers 5
    .parameter "view"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 496
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_c

    .line 497
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startMovie()V

    .line 503
    :cond_b
    :goto_b
    return-void

    .line 498
    :cond_c
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_14

    .line 499
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseMovie()V

    goto :goto_b

    .line 500
    :cond_14
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_b

    .line 501
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopMovie(Landroid/graphics/Bitmap;)V

    goto :goto_b
.end method

.method private doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .registers 7
    .parameter "view"
    .parameter "video"

    .prologue
    .line 560
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 562
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_c

    .line 563
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 578
    :cond_b
    :goto_b
    return-void

    .line 564
    :cond_c
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_14

    .line 565
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_b

    .line 566
    :cond_14
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_35

    .line 569
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 570
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_31

    .line 571
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020115

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 574
    :cond_31
    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 575
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_35
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_b

    .line 576
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_b
.end method

.method private getCurrentSlideIndex(I)I
    .registers 4
    .parameter "currentSlideTime"

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_22

    .line 679
    :goto_7
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v1, :cond_22

    .line 680
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    sub-int/2addr p1, v1

    .line 681
    const/16 v1, -0x384

    if-ge p1, v1, :cond_1f

    .line 682
    add-int/lit8 v1, v0, 0x1

    .line 685
    :goto_1e
    return v1

    .line 679
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 685
    :cond_22
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    goto :goto_1e
.end method

.method private getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;
    .registers 18
    .parameter "part"
    .parameter "msgId"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 835
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v12

    .line 836
    .local v12, location:[B
    if-nez v12, :cond_10

    .line 837
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v12

    .line 839
    :cond_10
    if-nez v12, :cond_16

    .line 840
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v12

    .line 843
    :cond_16
    if-nez v12, :cond_bd

    .line 844
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    .line 848
    .local v10, fileName:Ljava/lang/String;
    :goto_1c
    const/4 v0, 0x1

    const-string v3, "<"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v0, v3, :cond_2a

    .line 849
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 851
    :cond_2a
    const/4 v0, 0x1

    const-string v3, ">"

    invoke-virtual {v10, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v0, v3, :cond_3e

    .line 852
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 854
    :cond_3e
    const-string v0, "cid:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 855
    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 858
    :cond_50
    new-instance v13, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 859
    .local v13, type:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 860
    const/4 v8, 0x0

    .line 861
    .local v8, drmFileName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 862
    .local v2, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 865
    .local v7, c:Landroid/database/Cursor;
    :try_start_6e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 866
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 867
    if-nez v8, :cond_87

    .line 868
    const-string v0, "cl"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_c4

    move-result-object v8

    .line 870
    :cond_87
    move-object v10, v8

    .line 872
    if-eqz v7, :cond_8d

    .line 873
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 879
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #drmFileName:Ljava/lang/String;
    :cond_8d
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, index:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_cb

    .line 881
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 886
    .local v9, extension:Ljava/lang/String;
    :goto_9e
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 887
    const-string v0, "dcf"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 888
    const-string v9, "dcf"

    .line 891
    :cond_ae
    if-nez v9, :cond_ba

    .line 892
    const-string v0, "text/x-vCard"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 893
    const-string v9, "vcf"

    .line 903
    :cond_ba
    :goto_ba
    if-nez v9, :cond_f1

    .line 906
    .end local v10           #fileName:Ljava/lang/String;
    :goto_bc
    return-object v10

    .line 846
    .end local v9           #extension:Ljava/lang/String;
    .end local v11           #index:I
    .end local v13           #type:Ljava/lang/String;
    :cond_bd
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>([B)V

    .restart local v10       #fileName:Ljava/lang/String;
    goto/16 :goto_1c

    .line 872
    .restart local v2       #dataUri:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #drmFileName:Ljava/lang/String;
    .restart local v13       #type:Ljava/lang/String;
    :catchall_c4
    move-exception v0

    if-eqz v7, :cond_ca

    .line 873
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ca
    throw v0

    .line 883
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #drmFileName:Ljava/lang/String;
    .restart local v11       #index:I
    :cond_cb
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 884
    .restart local v9       #extension:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_9e

    .line 894
    :cond_db
    const-string v0, "text/x-vCalendar"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 895
    const-string v9, "vcs"

    goto :goto_ba

    .line 896
    :cond_e6
    const-string v0, "text/x-vNote"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 897
    const-string v9, "vnt"

    goto :goto_ba

    .line 906
    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_bc
.end method

.method private getTransformRatio(II)F
    .registers 5
    .parameter "viewsize"
    .parameter "layoutsize"

    .prologue
    .line 157
    if-lez p1, :cond_6

    .line 158
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 160
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f80

    goto :goto_5
.end method

.method private hasTopText()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    .line 264
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .registers 13
    .parameter "view"
    .parameter "image"

    .prologue
    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 439
    .local v4, is2:Ljava/io/ByteArrayInputStream;
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 440
    if-eqz v3, :cond_3e

    .line 441
    const/4 v6, 0x0

    .line 442
    .local v6, streamSize:I
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_70

    move-result v1

    .line 444
    .local v1, canMark:Z
    :try_start_17
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_c5

    move-result v6

    .line 448
    :goto_1b
    if-eqz v1, :cond_49

    .line 449
    const/4 v7, 0x0

    :try_start_1e
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    .line 450
    invoke-static {v4}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    .line 461
    :goto_27
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_62

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_62

    .line 462
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3e} :catch_70

    .line 473
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :cond_3e
    :goto_3e
    if-eqz v3, :cond_43

    .line 475
    :try_start_40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_8c

    .line 482
    :cond_43
    :goto_43
    if-eqz v4, :cond_48

    .line 484
    :try_start_45
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_95

    .line 491
    :cond_48
    :goto_48
    return-void

    .line 453
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :cond_49
    :try_start_49
    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/SlideshowPresenter;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 454
    .local v0, array:[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_70

    .line 455
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .local v5, is2:Ljava/io/ByteArrayInputStream;
    :try_start_52
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v1

    .line 456
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 457
    invoke-static {v5}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_60} :catch_cb

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_27

    .line 465
    .end local v0           #array:[B
    :cond_62
    :try_start_62
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6f} :catch_70

    goto :goto_3e

    .line 468
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :catch_70
    move-exception v2

    .line 470
    .local v2, e:Ljava/io/IOException;
    :goto_71
    :try_start_71
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while opening or reading stream in presentImage"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_a7

    .line 473
    if-eqz v3, :cond_7d

    .line 475
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_9e

    .line 482
    :cond_7d
    :goto_7d
    if-eqz v4, :cond_48

    .line 484
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_48

    .line 485
    :catch_83
    move-exception v2

    .line 487
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 476
    .end local v2           #e:Ljava/io/IOException;
    :catch_8c
    move-exception v2

    .line 478
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    .line 485
    .end local v2           #e:Ljava/io/IOException;
    :catch_95
    move-exception v2

    .line 487
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 476
    :catch_9e
    move-exception v2

    .line 478
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7d

    .line 473
    .end local v2           #e:Ljava/io/IOException;
    :catchall_a7
    move-exception v7

    :goto_a8
    if-eqz v3, :cond_ad

    .line 475
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b3

    .line 482
    :cond_ad
    :goto_ad
    if-eqz v4, :cond_b2

    .line 484
    :try_start_af
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_bc

    .line 488
    :cond_b2
    :goto_b2
    throw v7

    .line 476
    :catch_b3
    move-exception v2

    .line 478
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Mms/SlideshowPresenter"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ad

    .line 485
    .end local v2           #e:Ljava/io/IOException;
    :catch_bc
    move-exception v2

    .line 487
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Mms/SlideshowPresenter"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b2

    .line 445
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :catch_c5
    move-exception v7

    goto/16 :goto_1b

    .line 473
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v0       #array:[B
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    :catchall_c8
    move-exception v7

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_a8

    .line 468
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    :catch_cb
    move-exception v2

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_71
.end method

.method private presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .registers 9
    .parameter "view"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 240
    .local v1, media:Lcom/android/mms/model/MediaModel;
    instance-of v2, v1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_3a

    .line 243
    iget-object v2, p2, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 244
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_37

    .line 245
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    if-nez v2, :cond_34

    .line 246
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    .line 252
    :cond_2e
    :goto_2e
    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_6

    .line 248
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    :cond_34
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_2e

    .line 250
    :cond_37
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_2e

    .line 253
    :cond_3a
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_6

    .line 257
    :cond_46
    return-void
.end method

.method private transformHeight(I)I
    .registers 4
    .parameter "height"

    .prologue
    .line 189
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformMediaSize(I)I
    .registers 4
    .parameter "size"

    .prologue
    .line 167
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public findAttachmentList(J)Ljava/util/ArrayList;
    .registers 15
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v9, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 724
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_10

    .line 725
    const/4 v9, 0x0

    .line 768
    :goto_f
    return-object v9

    .line 731
    :cond_10
    iput-wide p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachMsgId:J

    .line 734
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 735
    .local v7, partNum:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    .line 737
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v7, :cond_94

    .line 738
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 739
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 742
    .local v8, type:Ljava/lang/String;
    const-string v9, "kkahn/Mms/SlideshowPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findAttachmentList:type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v9, "text/x-vCard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    const-string v9, "text/x-vcard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    const-string v9, "text/x-vCalendar"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    const-string v9, "text/x-vNote"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    const-string v9, "text/x-vtodo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 749
    :cond_6d
    const/4 v2, 0x0

    .line 750
    .local v2, fileName:Ljava/lang/String;
    invoke-direct {p0, v6, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v2

    .line 751
    const/4 v4, 0x0

    .line 753
    .local v4, object:Lcom/android/mms/model/AttachmentModel;
    :try_start_73
    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    iget-object v9, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v8, v2, v10}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_7e
    .catch Lcom/google/android/mms/MmsException; {:try_start_73 .. :try_end_7e} :catch_8f

    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .local v5, object:Lcom/android/mms/model/AttachmentModel;
    move-object v4, v5

    .line 758
    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :goto_7f
    if-eqz v4, :cond_8c

    .line 759
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 737
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 754
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :catch_8f
    move-exception v1

    .line 756
    .local v1, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_7f

    .line 768
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #type:Ljava/lang/String;
    :cond_94
    iget-object v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    goto/16 :goto_f
.end method

.method public getCurSlideIndex()I
    .registers 2

    .prologue
    .line 690
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTotSlideNumber()I
    .registers 2

    .prologue
    .line 694
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    return v0
.end method

.method public goBackward()V
    .registers 2

    .prologue
    .line 594
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_a

    .line 595
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 597
    :cond_a
    return-void
.end method

.method public goForward()V
    .registers 3

    .prologue
    .line 601
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    .line 602
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 604
    :cond_e
    return-void
.end method

.method public initAttachmentListView_presenter()V
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 912
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    invoke-interface {v0}, Lcom/android/mms/ui/SlideViewInterface;->initAttachmentListView()V

    .line 913
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .registers 6
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 610
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-void

    .line 612
    :cond_9
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_2c

    move-object v1, p1

    .line 613
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 614
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 620
    :cond_21
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 639
    :cond_2c
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_53

    .line 640
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_3f

    .line 641
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_3f
    move-object v1, p1

    .line 654
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 655
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 669
    :cond_53
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_8

    goto :goto_8
.end method

.method public present()V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 195
    return-void
.end method

.method public present(Z)V
    .registers 2
    .parameter "firstSlide"

    .prologue
    .line 200
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .registers 7
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p3, :cond_11

    .line 287
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    .line 291
    return-void
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 11
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v1

    .line 391
    .local v1, imageViewTop:I
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v2, :cond_d

    .line 392
    const/4 v1, 0x0

    .line 394
    :cond_d
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 396
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_1f
    if-eqz p4, :cond_2c

    .line 401
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 408
    :cond_2c
    :goto_2c
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_73

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 411
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_64

    .line 412
    check-cast p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setMovieRegion(IIII)V

    .line 433
    :cond_64
    :goto_64
    return-void

    .line 404
    .restart local p1
    :cond_65
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v2, v3, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_2c

    .line 425
    :cond_73
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_95

    move-object v2, p1

    .line 426
    check-cast v2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 430
    :cond_95
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    goto :goto_64
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .registers 6
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 274
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 275
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 281
    :cond_f
    :goto_f
    return-void

    .line 276
    .restart local p2
    :cond_10
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 277
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_f

    .line 278
    .restart local p2
    :cond_1c
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 279
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_f
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .registers 10
    .parameter "view"
    .parameter "model"

    .prologue
    const/4 v6, 0x0

    .line 207
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 209
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 210
    :cond_10
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    .line 215
    :goto_12
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    .line 216
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    .line 218
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowPresenter;->hasTopText()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    .line 221
    :try_start_24
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_3b

    .line 230
    :goto_27
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 233
    .local v2, totalSlide:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    .line 234
    .local v0, currentSlide:I
    invoke-interface {p1, v0, v2}, Lcom/android/mms/ui/SlideViewInterface;->setPageNumber(II)V

    .line 236
    return-void

    .line 212
    .end local v0           #currentSlide:I
    .end local v2           #totalSlide:I
    :cond_37
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    goto :goto_12

    .line 222
    :catch_3b
    move-exception v1

    .line 224
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Mms/SlideshowPresenter"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v5, 0x7f090021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 17
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    if-eqz v0, :cond_74

    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, textViewTop:I
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->getHeight()I

    move-result v4

    .line 331
    .local v4, textViewHeight:I
    :goto_9
    if-eqz p4, :cond_4f

    .line 333
    const/4 v9, 0x0

    .line 335
    .local v9, showAttachment:Z
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, msgText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, notShownStrOne:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, notShownStrMore:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 341
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v0, v8, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_85

    .line 342
    move-object v6, v8

    .line 344
    const/4 v9, 0x1

    .line 354
    :cond_37
    :goto_37
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v0, :cond_3c

    .line 355
    const/4 v9, 0x1

    .line 358
    :cond_3c
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v0, v6, v9, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 359
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4f

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    iget-wide v10, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachMsgId:J

    invoke-interface {p1, v0, v10, v11}, Lcom/android/mms/ui/SlideViewInterface;->addAttachmentListView(Ljava/util/ArrayList;J)V

    .line 366
    .end local v6           #msgText:Ljava/lang/String;
    .end local v7           #notShownStrMore:Ljava/lang/String;
    .end local v8           #notShownStrOne:Ljava/lang/String;
    .end local v9           #showAttachment:Z
    :cond_4f
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_6b

    move-object v0, p1

    .line 367
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    invoke-interface/range {v0 .. v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIIIZ)V

    .line 372
    :cond_6b
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v0, :cond_73

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/mms/model/TextModel;->setVisible(Z)V

    .line 376
    :cond_73
    return-void

    .line 320
    .end local v2           #textViewTop:I
    .end local v4           #textViewHeight:I
    :cond_74
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    .line 321
    .restart local v2       #textViewTop:I
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    .restart local v4       #textViewHeight:I
    goto :goto_9

    .line 345
    .restart local v6       #msgText:Ljava/lang/String;
    .restart local v7       #notShownStrMore:Ljava/lang/String;
    .restart local v8       #notShownStrOne:Ljava/lang/String;
    .restart local v9       #showAttachment:Z
    :cond_85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v0, v7, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_95

    .line 346
    move-object v6, v7

    .line 348
    const/4 v9, 0x1

    goto :goto_37

    .line 350
    :cond_95
    const/4 v9, 0x0

    goto :goto_37
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 10
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v0

    .line 530
    .local v0, videoViewTop:I
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v1, :cond_d

    .line 531
    const/4 v0, 0x0

    .line 534
    :cond_d
    if-eqz p4, :cond_1c

    .line 535
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 541
    :cond_1c
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_3e

    move-object v1, p1

    .line 542
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 556
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    .line 557
    return-void
.end method

.method public resetLocation()V
    .registers 2

    .prologue
    .line 590
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 591
    return-void
.end method

.method protected setPreviewState(Z)V
    .registers 2
    .parameter "isPreview"

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    .line 708
    return-void
.end method

.method public setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .registers 4
    .parameter "sPlayer"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 712
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowPresenter;->getView()Lcom/android/mms/ui/ViewInterface;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V

    .line 713
    return-void
.end method

.method public streamToBytes(Ljava/io/InputStream;I)[B
    .registers 6
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 507
    new-array v0, p2, [B

    .line 509
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 513
    :goto_6
    return-object v0

    .line 510
    :catch_7
    move-exception v1

    .line 511
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

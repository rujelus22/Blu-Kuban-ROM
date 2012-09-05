.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddImagePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "aContext"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 357
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 359
    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$10(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 360
    invoke-static {}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->getInstance()Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->init()V

    return-void
.end method

.method private getImageThumbByPosition(I)Lcom/sec/android/app/ve/data/VideoThumb;
    .registers 5
    .parameter "aPosition"

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, lPath:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 469
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageThumbMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    check-cast v1, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 471
    .restart local v1       #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_13
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 365
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 370
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 375
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 388
    const/4 v11, 0x0

    .line 390
    .local v11, lLayout:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .line 391
    .local v6, imgVw:Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 392
    .local v12, lSelectedView:Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 396
    .local v9, lDurationView:Landroid/widget/TextView;
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030015

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v11, v0

    .line 398
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->getImageThumbByPosition(I)Lcom/sec/android/app/ve/data/VideoThumb;

    move-result-object v10

    .line 400
    .local v10, lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    sget-object v1, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    .local v2, lFileString:Ljava/lang/String;
    if-eqz v10, :cond_81

    .line 404
    invoke-virtual {v10}, Lcom/sec/android/app/ve/data/VideoThumb;->getId()J

    move-result-wide v4

    .line 407
    .local v4, lOriginId:J
    const v1, 0x7f0b0046

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    .line 408
    const v1, 0x7f0b0047

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v12, v0

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$11(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$11(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :goto_52
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9b

    .line 420
    :cond_62
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 422
    const v1, 0x7f02019c

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$2(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 425
    invoke-static {}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->getInstance()Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mVideoImageFetcher:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$12(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    move-result-object v7

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->addOperation(Ljava/lang/String;IJLandroid/view/View;Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;)V

    .line 445
    .end local v2           #lFileString:Ljava/lang/String;
    .end local v4           #lOriginId:J
    .end local v10           #lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_81
    :goto_81
    return-object v11

    .line 415
    .restart local v2       #lFileString:Ljava/lang/String;
    .restart local v4       #lOriginId:J
    .restart local v10       #lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_82
    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_86} :catch_87
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_86} :catch_ac

    goto :goto_52

    .line 436
    .end local v2           #lFileString:Ljava/lang/String;
    .end local v4           #lOriginId:J
    .end local v10           #lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_87
    move-exception v8

    .line 438
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got Exception in getView of ImagePicker View -->"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_81

    .line 429
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v2       #lFileString:Ljava/lang/String;
    .restart local v4       #lOriginId:J
    .restart local v10       #lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_9b
    :try_start_9b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 431
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ab} :catch_87
    .catch Ljava/lang/Error; {:try_start_9b .. :try_end_ab} :catch_ac

    goto :goto_81

    .line 440
    .end local v2           #lFileString:Ljava/lang/String;
    .end local v4           #lOriginId:J
    .end local v10           #lImageThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :catch_ac
    move-exception v8

    .line 441
    .local v8, e:Ljava/lang/Error;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got Error in getView of ImagePicker View -->"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_81
.end method

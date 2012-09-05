.class Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddVideoImagePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "aContext"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 355
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 357
    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 358
    invoke-static {}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->getInstance()Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->init()V

    return-void
.end method

.method private getVideoThumbByPosition(I)Lcom/sec/android/app/ve/data/VideoThumb;
    .registers 5
    .parameter "aPosition"

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    .local v0, lPath:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 478
    sget-object v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    check-cast v1, Lcom/sec/android/app/ve/data/VideoThumb;

    .line 480
    .restart local v1       #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    :cond_13
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 364
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 369
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 374
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 22
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 387
    const/4 v8, 0x0

    .line 389
    .local v8, lLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 390
    .local v2, imgVw:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 391
    .local v3, imgVwPlay:Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 392
    .local v11, lSelectedView:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 396
    .local v5, lDurationView:Landroid/widget/TextView;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->inflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030043

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v8, v0

    .line 398
    const v14, 0x7f0b0129

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 400
    const v14, 0x7f0b012a

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 402
    const v14, 0x7f0b012b

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/widget/ImageView;

    move-object v11, v0

    .line 403
    if-eqz v11, :cond_3d

    .line 404
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    :cond_3d
    const v14, 0x7f0b012c

    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 407
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->getVideoThumbByPosition(I)Lcom/sec/android/app/ve/data/VideoThumb;

    move-result-object v12

    .line 409
    .local v12, lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    if-eqz v12, :cond_a2

    .line 411
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Lcom/sec/android/app/ve/data/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 412
    .local v4, lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    .line 413
    .local v7, lHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v13

    .line 414
    .local v13, lWidth:I
    sget-object v14, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 418
    .local v6, lFileString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_a3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 420
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :goto_85
    const v14, 0x7f020198

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    if-eqz v5, :cond_9f

    .line 430
    invoke-virtual {v12}, Lcom/sec/android/app/ve/data/VideoThumb;->getDuration()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v9, v14, v16

    .line 431
    .local v9, lSeconds:J
    invoke-static {v9, v10}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    .end local v9           #lSeconds:J
    :cond_9f
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 463
    .end local v4           #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #lFileString:Ljava/lang/String;
    .end local v7           #lHeight:I
    .end local v12           #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    .end local v13           #lWidth:I
    :cond_a2
    :goto_a2
    return-object v8

    .line 423
    .restart local v4       #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #lFileString:Ljava/lang/String;
    .restart local v7       #lHeight:I
    .restart local v12       #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    .restart local v13       #lWidth:I
    :cond_a3
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a7} :catch_a8

    goto :goto_85

    .line 458
    .end local v4           #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #lFileString:Ljava/lang/String;
    .end local v7           #lHeight:I
    .end local v12           #lVideoThumb:Lcom/sec/android/app/ve/data/VideoThumb;
    .end local v13           #lWidth:I
    :catch_a8
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Got Exception in getView of Video Picker View -->"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_a2
.end method

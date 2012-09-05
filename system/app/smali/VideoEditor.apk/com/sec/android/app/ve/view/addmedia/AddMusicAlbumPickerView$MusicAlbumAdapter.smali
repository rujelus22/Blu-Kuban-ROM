.class Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddMusicAlbumPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicAlbumAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "c"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 346
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 347
    iput-object p2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->mContext:Landroid/content/Context;

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->mContext:Landroid/content/Context;

    .line 349
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 348
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 350
    invoke-static {}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->getInstance()Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->init()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 356
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 370
    const/4 v7, 0x0

    .line 371
    .local v7, lMusicAlbumlayout:Landroid/widget/RelativeLayout;
    const/4 v4, 0x0

    .line 372
    .local v4, lAlbumImg:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 373
    .local v5, lAlbumName:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 374
    .local v6, lAlbumNameSelected:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 375
    .local v2, lAlbumArtistName:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 376
    .local v3, lAlbumExpand:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03001e

    .line 377
    const/4 v11, 0x0

    .line 376
    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7           #lMusicAlbumlayout:Landroid/widget/RelativeLayout;
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 378
    .restart local v7       #lMusicAlbumlayout:Landroid/widget/RelativeLayout;
    const v9, 0x7f0b005a

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #lAlbumImg:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 379
    .restart local v4       #lAlbumImg:Landroid/widget/ImageView;
    const v9, 0x7f0b005f

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #lAlbumExpand:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 380
    .restart local v3       #lAlbumExpand:Landroid/widget/ImageView;
    const v9, 0x7f0b005d

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #lAlbumName:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 381
    .restart local v5       #lAlbumName:Landroid/widget/TextView;
    const v9, 0x7f0b005c

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #lAlbumNameSelected:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 382
    .restart local v6       #lAlbumNameSelected:Landroid/widget/TextView;
    const v9, 0x7f0b005e

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #lAlbumArtistName:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 383
    .restart local v2       #lAlbumArtistName:Landroid/widget/TextView;
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_49

    if-gez p1, :cond_51

    .line 384
    :cond_49
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt p1, v9, :cond_7d

    .line 386
    :cond_51
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "size of the Array -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  and position is -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v9, v9, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    const/16 v10, 0x4b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    :goto_7c
    return-object v7

    .line 392
    :cond_7d
    sget-object v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 393
    .local v8, lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    invoke-virtual {v8}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, AlbumName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, AlbumArt:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Inside AlbumPicker and Album Name is -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 398
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_121

    .line 400
    const-string v9, "Album name is empty..so putting as other"

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 405
    :goto_ac
    invoke-virtual {v8}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumArtistName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Selcted Album ID is -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 408
    sget v9, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    invoke-virtual {v8}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumId()I

    move-result v10

    if-ne v9, v10, :cond_125

    .line 410
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :goto_da
    if-nez v0, :cond_131

    .line 423
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v9}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)I

    move-result v9

    const/4 v10, 0x7

    if-le v9, v10, :cond_eb

    .line 424
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v9, v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;I)V

    .line 425
    :cond_eb
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Default Image Index is -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 426
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefaultAlbums:[I
    invoke-static {v9}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v9}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$8(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    #setter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I
    invoke-static {v9, v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$5(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;I)V

    goto/16 :goto_7c

    .line 403
    :cond_121
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ac

    .line 416
    :cond_125
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_da

    .line 433
    :cond_131
    sget-object v9, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_141

    sget-object v9, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_16e

    .line 435
    :cond_141
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Setting loading album art image -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 436
    const v9, 0x7f0200d8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v9, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    const/4 v10, 0x0

    #calls: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v9, v0, v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 438
    invoke-static {}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->getInstance()Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    #getter for: Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumFetcher:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;
    invoke-static {v10}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->access$9(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    move-result-object v10

    invoke-virtual {v9, v0, p1, v4, v10}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->addOperation(Ljava/lang/String;ILandroid/view/View;Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;)V

    goto/16 :goto_7c

    .line 442
    :cond_16e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Setting album image from local HashMap -->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 444
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 446
    sget-object v9, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7c
.end method

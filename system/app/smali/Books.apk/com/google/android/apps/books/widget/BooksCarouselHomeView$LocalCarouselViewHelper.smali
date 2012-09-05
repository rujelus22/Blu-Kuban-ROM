.class Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;
.super Lcom/google/android/opengl/carousel/CarouselViewHelper;
.source "BooksCarouselHomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/BooksCarouselHomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalCarouselViewHelper"
.end annotation


# instance fields
.field private final mDetailTextureParameters:[Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

.field private final mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

.field private final mNumRows:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/apps/books/widget/AtlasRenderer;)V
    .registers 18
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "atlasRenderer"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    .line 248
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 250
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    .line 252
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 255
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f0a0001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 256
    .local v2, detailTextureOffsetX:F
    const v8, 0x7f0a0002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 257
    .local v7, topRowPlacement:F
    const v8, 0x7f0a0003

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 260
    .local v1, bottomRowPlacement:F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_5a

    .line 261
    const/4 v8, 0x2

    new-array v3, v8, [F

    const/4 v8, 0x0

    aput v7, v3, v8

    const/4 v8, 0x1

    aput v1, v3, v8

    .line 267
    .local v3, detailTextureOffsetY:[F
    :goto_32
    array-length v8, v3

    iput v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mNumRows:I

    .line 268
    iget v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mNumRows:I

    new-array v8, v8, [Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    iput-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mDetailTextureParameters:[Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 270
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 271
    .local v4, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_40
    iget v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mNumRows:I

    if-ge v5, v8, :cond_61

    .line 272
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mDetailTextureParameters:[Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    new-instance v9, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    mul-float/2addr v10, v2

    aget v11, v3, v5

    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-direct {v9, v10, v11}, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FF)V

    aput-object v9, v8, v5

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 263
    .end local v3           #detailTextureOffsetY:[F
    .end local v4           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v5           #i:I
    :cond_5a
    const/4 v8, 0x1

    new-array v3, v8, [F

    const/4 v8, 0x0

    aput v7, v3, v8

    .restart local v3       #detailTextureOffsetY:[F
    goto :goto_32

    .line 276
    .restart local v4       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v5       #i:I
    :cond_61
    if-eqz p3, :cond_69

    .line 277
    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/google/android/opengl/carousel/CarouselView;->setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V

    .line 279
    :cond_69
    return-void
.end method

.method private cardPositionIsValid(I)Z
    .registers 5
    .parameter "n"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 557
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    if-ltz p1, :cond_54

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_54

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_54

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, p1

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v0, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 561
    :cond_54
    const/4 v0, 0x0

    monitor-exit v1

    .line 564
    :goto_56
    return v0

    :cond_57
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_56

    .line 565
    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private computeDepthScale(I)F
    .registers 9
    .parameter "numPages"

    .prologue
    .line 588
    const v3, 0x3ecccccd

    .line 589
    .local v3, minimumScale:F
    const/high16 v1, 0x4020

    .line 591
    .local v1, maximumScale:F
    const/16 v2, 0x32

    .line 592
    .local v2, minimumNumPages:I
    const/high16 v0, 0x4448

    .line 595
    .local v0, maximumNumPages:F
    add-int/lit8 v5, p1, -0x32

    int-to-float v5, v5

    const v6, 0x443b8000

    div-float v4, v5, v6

    .line 597
    .local v4, result:F
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v4

    .line 600
    const v5, 0x3ecccccd

    const v6, 0x40066666

    mul-float/2addr v6, v4

    add-float v4, v5, v6

    .line 602
    return v4
.end method

.method private getCoverBlocking(Lcom/google/android/apps/books/model/CarouselVolumeData;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x5

    .line 328
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 329
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 330
    const-string v8, "BooksCarouselHomeView"

    const-string v9, "mHomeController.getContext() is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1d
    :goto_1d
    return-object v0

    .line 334
    :cond_1e
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/books/widget/BooksHomeController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 335
    .local v4, resolver:Landroid/content/ContentResolver;
    if-nez v4, :cond_3e

    .line 336
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 337
    const-string v8, "BooksCarouselHomeView"

    const-string v9, "ContentResolver is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 343
    :cond_3e
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/apps/books/widget/BooksHomeController;->blockingGetFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v3

    .line 344
    .local v3, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    if-nez v3, :cond_5a

    .line 345
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 346
    const-string v8, "BooksCarouselHomeView"

    const-string v9, "fetchService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 350
    :cond_5a
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$700(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/accounts/Account;

    move-result-object v8

    if-nez v8, :cond_72

    .line 351
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 352
    const-string v8, "BooksCarouselHomeView"

    const-string v9, "mAccount is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 357
    :cond_72
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$700(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/accounts/Account;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 358
    .local v7, volumeUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$700(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/accounts/Account;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 361
    .local v6, volumeCoverUri:Landroid/net/Uri;
    :try_start_8a
    iget-object v8, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAccount:Landroid/accounts/Account;
    invoke-static {v9}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$700(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/accounts/Account;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_95} :catch_dd

    .line 368
    :cond_95
    :goto_95
    const/4 v0, 0x0

    .line 371
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v8, "cover_content_status"

    invoke-static {v4, v7, v8}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 373
    .local v1, coverState:I
    const/4 v8, 0x3

    if-ne v1, v8, :cond_1d

    .line 375
    :try_start_a3
    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 376
    .local v5, stream:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ae} :catch_b0

    goto/16 :goto_1d

    .line 378
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_b0
    move-exception v2

    .line 379
    .local v2, e:Ljava/io/IOException;
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 380
    const-string v8, "BooksCarouselHomeView"

    const-string v9, "problem loading texture"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :cond_c0
    instance-of v8, v2, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    if-nez v8, :cond_c8

    instance-of v8, v2, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    if-eqz v8, :cond_1d

    .line 384
    :cond_c8
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$800(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v9}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/apps/books/widget/BooksHomeController;->getExternalStorageExceptionRunnable()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1d

    .line 362
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #coverState:I
    .end local v2           #e:Ljava/io/IOException;
    :catch_dd
    move-exception v2

    .line 363
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "BooksCarouselHomeView"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 364
    const-string v8, "BooksCarouselHomeView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem while ensuring volume cover: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method

.method private snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "view"

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 576
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 578
    return-object v0
.end method


# virtual methods
.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .registers 18
    .parameter "n"

    .prologue
    .line 395
    invoke-static {}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$200()Z

    move-result v13

    if-eqz v13, :cond_26

    const-string v13, "BooksCarouselHomeView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDetailTexture("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 403
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_43

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_46

    :cond_43
    const/4 v9, 0x0

    monitor-exit v14

    .line 457
    :goto_45
    return-object v9

    .line 404
    :cond_46
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v15}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v13, v15, :cond_74

    const/4 v13, 0x1

    :goto_5e
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    move/from16 v0, p1

    if-lt v0, v13, :cond_76

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_45

    .line 416
    :catchall_71
    move-exception v13

    monitor-exit v14
    :try_end_73
    .catchall {:try_start_2f .. :try_end_73} :catchall_71

    throw v13

    .line 404
    :cond_74
    const/4 v13, 0x0

    goto :goto_5e

    .line 407
    :cond_76
    :try_start_76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 409
    .local v3, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/apps/books/widget/BooksHomeController;->getDetailView()Landroid/view/View;

    move-result-object v5

    .line 410
    .local v5, detailView:Landroid/view/View;
    if-nez v5, :cond_97

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_45

    .line 412
    :cond_97
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 413
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_a0

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_45

    .line 415
    :cond_a0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v13

    iget-object v15, v3, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    aput-object v15, v13, p1

    .line 416
    monitor-exit v14
    :try_end_ad
    .catchall {:try_start_76 .. :try_end_ad} :catchall_71

    .line 418
    const v13, 0x7f0f000c

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 419
    .local v11, titleView:Landroid/widget/TextView;
    iget-object v13, v3, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v13, 0x7f0f000d

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 422
    .local v1, authorView:Landroid/widget/TextView;
    iget-object v13, v3, Lcom/google/android/apps/books/model/CarouselVolumeData;->author:Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/apps/books/widget/BooksHomeController;->isShowingOfflineUi()Z

    move-result v10

    .line 427
    .local v10, showingOfflineUi:Z
    const v13, 0x7f0f002c

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 429
    .local v6, downloadProgressView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v13, v6, v3, v10}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->setDownloadPercentText(Landroid/widget/TextView;Lcom/google/android/apps/books/model/CarouselVolumeData;Z)V

    .line 432
    const v13, 0x7f0f002d

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/widget/CheckedImageView;

    .line 435
    .local v7, pinnedStatusView:Lcom/google/android/apps/books/widget/CheckedImageView;
    if-eqz v10, :cond_10e

    .line 436
    const/4 v12, 0x0

    .line 437
    .local v12, visibility:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v13}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v13

    iget-object v14, v3, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/google/android/apps/books/widget/BooksHomeController;->isPinned(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/google/android/apps/books/widget/CheckedImageView;->setChecked(Z)V

    .line 441
    :goto_102
    invoke-virtual {v7, v12}, Lcom/google/android/apps/books/widget/CheckedImageView;->setVisibility(I)V

    .line 444
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 445
    .local v8, res:Landroid/content/res/Resources;
    if-nez v8, :cond_110

    .line 447
    const/4 v9, 0x0

    goto/16 :goto_45

    .line 439
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v12           #visibility:I
    :cond_10e
    const/4 v12, 0x4

    .restart local v12       #visibility:I
    goto :goto_102

    .line 449
    .restart local v8       #res:Landroid/content/res/Resources;
    :cond_110
    const/high16 v13, 0x7f0a

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 450
    .local v4, detailTextureWidth:I
    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Landroid/view/View;->measure(II)V

    .line 453
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v5, v13, v14, v4, v15}, Landroid/view/View;->layout(IIII)V

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 457
    .local v9, result:Landroid/graphics/Bitmap;
    goto/16 :goto_45
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .registers 4
    .parameter "n"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mDetailTextureParameters:[Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    iget v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mNumRows:I

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTalkBackText(I)Ljava/lang/String;
    .registers 9
    .parameter "id"

    .prologue
    .line 464
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 465
    :try_start_7
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    :cond_17
    const-string v2, ""

    monitor-exit v4

    .line 474
    :goto_1a
    return-object v2

    .line 466
    :cond_1b
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt p1, v3, :cond_2b

    const-string v2, ""

    monitor-exit v4

    goto :goto_1a

    .line 469
    :catchall_28
    move-exception v3

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v3

    .line 468
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 469
    .local v0, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_28

    .line 471
    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 472
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0e00bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->author:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, talkbackText:Ljava/lang/String;
    goto :goto_1a
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-static {}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$200()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "BooksCarouselHomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTexture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 289
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_3c
    monitor-exit v3

    .line 323
    :cond_3d
    :goto_3d
    return-object v2

    .line 290
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v4, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_63

    const/4 v0, 0x1

    :goto_52
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_65

    monitor-exit v3

    goto :goto_3d

    .line 304
    :catchall_60
    move-exception v0

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_2c .. :try_end_62} :catchall_60

    throw v0

    .line 290
    :cond_63
    const/4 v0, 0x0

    goto :goto_52

    .line 293
    :cond_65
    :try_start_65
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 294
    .local v6, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    new-instance v7, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;

    iget-object v0, v6, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/apps/books/model/CarouselVolumeData;->viewability:Ljava/lang/String;

    invoke-direct {v7, v0, v4}, Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v7, key:Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$600(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView;->lookupCover(Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_93

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    aput-object v2, v0, p1

    .line 302
    monitor-exit v3

    move-object v2, v1

    goto :goto_3d

    .line 304
    :cond_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_65 .. :try_end_94} :catchall_60

    .line 306
    invoke-direct {p0, v6}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->getCoverBlocking(Lcom/google/android/apps/books/model/CarouselVolumeData;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_3d

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->mHelperAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v3, v6}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->shouldDimCover(Lcom/google/android/apps/books/model/CarouselVolumeData;)Z

    move-result v3

    iget-boolean v4, v6, Lcom/google/android/apps/books/model/CarouselVolumeData;->isLimitedPreviewLocked:Z

    iget-object v5, v6, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/widget/AtlasRenderer;->render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 316
    .local v8, modifiedBitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_b2

    if-eq v8, v1, :cond_b2

    .line 317
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    move-object v1, v8

    .line 321
    :cond_b2
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$600(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->cacheCover(Lcom/google/android/apps/books/widget/BooksCarouselView$CoverCacheKey;Landroid/graphics/Bitmap;)V

    move-object v2, v1

    .line 323
    goto :goto_3d
.end method

.method public getTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    .registers 15
    .parameter "n"

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 480
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 481
    :try_start_a
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1c

    :cond_1a
    monitor-exit v10

    .line 510
    :cond_1b
    :goto_1b
    return-object v7

    .line 482
    :cond_1c
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    iget-object v11, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v11}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v8, v11, :cond_41

    const/4 v8, 0x1

    :goto_30
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 483
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLoadedVolumes:[Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$500(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt p1, v8, :cond_43

    monitor-exit v10

    goto :goto_1b

    .line 486
    :catchall_3e
    move-exception v7

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_3e

    throw v7

    :cond_41
    move v8, v9

    .line 482
    goto :goto_30

    .line 485
    :cond_43
    :try_start_43
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 486
    .local v0, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    monitor-exit v10
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_3e

    .line 489
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;

    .line 491
    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;
    invoke-static {v8}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$900(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/AtlasRenderer;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/books/widget/AtlasRenderer;->mScaleFactors:Ljava/util/Map;

    iget-object v10, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 495
    iget-object v7, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$900(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/AtlasRenderer;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/books/widget/AtlasRenderer;->mScaleFactors:Ljava/util/Map;

    iget-object v8, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/opengl/common/Float2;

    .line 498
    .local v4, scale:Lcom/google/android/opengl/common/Float2;
    const v2, 0x3e0a3d71

    .line 499
    .local v2, halfNativeDepth:F
    iget v7, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageCount:I

    if-lez v7, :cond_b1

    iget v7, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageCount:I

    invoke-direct {p0, v7}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->computeDepthScale(I)F

    move-result v6

    .line 502
    .local v6, zscale:F
    :goto_80
    const v1, -0x40c66666

    .line 503
    .local v1, down:F
    const v5, 0x3f39999a

    .line 504
    .local v5, up:F
    const/16 v7, 0x10

    new-array v3, v7, [F

    .line 505
    .local v3, m:[F
    invoke-static {v3, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 506
    const v7, -0x40c66666

    iget v8, v4, Lcom/google/android/opengl/common/Float2;->y:F

    div-float/2addr v7, v8

    const v8, -0x41f5c28f

    mul-float/2addr v8, v6

    invoke-static {v3, v9, v12, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 507
    iget v7, v4, Lcom/google/android/opengl/common/Float2;->x:F

    iget v8, v4, Lcom/google/android/opengl/common/Float2;->y:F

    invoke-static {v3, v9, v7, v8, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 508
    const v7, 0x3f39999a

    iget v8, v4, Lcom/google/android/opengl/common/Float2;->y:F

    div-float/2addr v7, v8

    invoke-static {v3, v9, v12, v7, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 510
    new-instance v7, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;

    invoke-direct {v7, v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;-><init>([F)V

    goto/16 :goto_1b

    .line 499
    .end local v1           #down:F
    .end local v3           #m:[F
    .end local v5           #up:F
    .end local v6           #zscale:F
    :cond_b1
    const/high16 v6, 0x3f80

    goto :goto_80
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .registers 7
    .parameter "n"
    .parameter "touchPos"
    .parameter "detailCoordinates"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 546
    :try_start_7
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->cardPositionIsValid(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 547
    monitor-exit v1

    .line 553
    :goto_e
    return-void

    .line 550
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v0, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    #setter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$002(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_2d

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$600(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->showContextMenu()Z

    goto :goto_e

    .line 551
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public onCardSelected(I)V
    .registers 5
    .parameter "n"

    .prologue
    .line 522
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mDataLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$300(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 523
    :try_start_7
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->cardPositionIsValid(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 524
    monitor-exit v2

    .line 535
    :goto_e
    return-void

    .line 527
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$400(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v0, v1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    .line 528
    .local v0, volumeId:Ljava/lang/String;
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_34

    .line 530
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/BooksHomeController;->isShowingOfflineUi()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 531
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeController;->togglePinned(Ljava/lang/String;)V

    goto :goto_e

    .line 528
    .end local v0           #volumeId:Ljava/lang/String;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    .line 533
    .restart local v0       #volumeId:Ljava/lang/String;
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeController;->openBookInReader(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onDetailSelected(III)V
    .registers 4
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$LocalCarouselViewHelper;->onCardSelected(I)V

    .line 541
    return-void
.end method

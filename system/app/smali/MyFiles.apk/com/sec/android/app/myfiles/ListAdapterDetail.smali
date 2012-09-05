.class public Lcom/sec/android/app/myfiles/ListAdapterDetail;
.super Landroid/widget/BaseAdapter;
.source "ListAdapterDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ListAdapterDetail$1;,
        Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;
    }
.end annotation


# instance fields
.field private mAgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundary:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    .line 267
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mContext:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mHandler:Landroid/os/Handler;

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V
    .registers 5
    .parameter "context"
    .parameter "handler"
    .parameter "view"

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    .line 274
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mContext:Landroid/content/Context;

    .line 275
    iput-object p2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p3, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mList:Landroid/widget/ListView;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/ListAdapterDetail;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/ListAdapterDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/myfiles/ListAdapterDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    return p1
.end method

.method private aging()V
    .registers 9

    .prologue
    .line 381
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 382
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 383
    .local v3, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 385
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_45

    move-result v4

    if-eqz v4, :cond_48

    .line 387
    :try_start_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 388
    .local v2, key:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3f} :catch_40

    goto :goto_12

    .line 389
    .end local v2           #key:I
    :catch_40
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 393
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_45
    move-exception v4

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v4

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_48
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 394
    return-void
.end method

.method private clearAgeMap()V
    .registers 11

    .prologue
    .line 397
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 398
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 401
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 402
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 403
    .local v4, key:I
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x3c

    if-le v5, v7, :cond_12

    .line 404
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v7
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_6f

    .line 408
    :try_start_39
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 409
    .local v2, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 410
    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v9

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v9, v5}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/sec/android/app/myfiles/SimpleIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5c} :catch_72

    .line 417
    :cond_5c
    if-eqz v2, :cond_66

    .line 418
    const/4 v5, 0x1

    :try_start_5f
    invoke-virtual {v2, v5}, Lcom/sec/android/app/myfiles/SimpleItem;->setIsIcon(Z)V

    .line 419
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/myfiles/SimpleItem;->setSkipThumb(Z)V

    .line 421
    :cond_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_88

    .line 422
    :try_start_67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 431
    .end local v0           #deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #key:I
    :catchall_6f
    move-exception v5

    monitor-exit v6
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_6f

    throw v5

    .line 413
    .restart local v0       #deletedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #key:I
    :catch_72
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    :try_start_73
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_88

    .line 426
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #key:I
    :cond_74
    :try_start_74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 428
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 429
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_6f

    goto :goto_78

    .line 421
    .restart local v4       #key:I
    :catchall_88
    move-exception v5

    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v5

    .line 431
    .end local v4           #key:I
    :cond_8b
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_6f

    .line 432
    return-void
.end method

.method public static getSizeFormat(J)Ljava/lang/String;
    .registers 10
    .parameter "number"

    .prologue
    const/high16 v7, 0x4480

    .line 607
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, df:Ljava/text/DecimalFormat;
    long-to-float v1, p0

    .line 612
    .local v1, size:F
    float-to-double v3, v1

    const-wide v5, 0x412999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2e

    .line 613
    div-float/2addr v1, v7

    .line 614
    const-string v2, "KB"

    .line 623
    .local v2, unit:Ljava/lang/String;
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 615
    .end local v2           #unit:Ljava/lang/String;
    :cond_2e
    float-to-double v3, v1

    const-wide v5, 0x41c999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3f

    .line 616
    div-float v3, v1, v7

    div-float v1, v3, v7

    .line 617
    const-string v2, "MB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17

    .line 619
    .end local v2           #unit:Ljava/lang/String;
    :cond_3f
    div-float v3, v1, v7

    div-float/2addr v3, v7

    div-float v1, v3, v7

    .line 620
    const-string v2, "GB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17
.end method

.method private setData(Landroid/view/View;Lcom/sec/android/app/myfiles/SimpleItem;)V
    .registers 14
    .parameter "view"
    .parameter "aIconifiedText"

    .prologue
    const v10, 0x7f0c0002

    const v9, 0x7f0c0006

    .line 517
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v6

    .line 519
    .local v6, type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    sget-object v7, Lcom/sec/android/app/myfiles/ListAdapterDetail$1;->$SwitchMap$com$sec$android$app$myfiles$SimpleItem$ItemType:[I

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_100

    .line 604
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 522
    :pswitch_16
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 524
    .local v1, mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isIcon()Z

    move-result v7

    if-nez v7, :cond_6e

    .line 525
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 529
    :goto_27
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 533
    .local v2, mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v6, v7, :cond_57

    .line 550
    const v7, 0x7f0c0013

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 554
    .local v4, mTextViewSize:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getLength()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->getSizeFormat(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    .end local v4           #mTextViewSize:Landroid/widget/TextView;
    :cond_57
    const v7, 0x7f0c0014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 560
    .local v3, mTextViewDate:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getDateLong()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/myfiles/Utils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 527
    .end local v2           #mTextView:Landroid/widget/TextView;
    .end local v3           #mTextViewDate:Landroid/widget/TextView;
    :cond_6e
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_27

    .line 565
    .end local v1           #mIcon:Landroid/widget/ImageView;
    :pswitch_74
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 566
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v7, 0x7f0c0005

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 569
    .local v5, mcheckBox:Landroid/widget/CheckBox;
    if-eqz v5, :cond_15

    .line 570
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 571
    const v7, 0x7f02001c

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_15

    .line 573
    :cond_9a
    const v7, 0x7f02001b

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_15

    .line 579
    .end local v2           #mTextView:Landroid/widget/TextView;
    .end local v5           #mcheckBox:Landroid/widget/CheckBox;
    :pswitch_a2
    const v7, 0x7f0c0010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 580
    .local v0, mButton:Landroid/widget/ImageView;
    if-eqz v0, :cond_b9

    .line 581
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 582
    const v7, 0x7f020033

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 588
    :cond_b9
    :goto_b9
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 589
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 591
    .restart local v1       #mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15

    .line 584
    .end local v1           #mIcon:Landroid/widget/ImageView;
    .end local v2           #mTextView:Landroid/widget/TextView;
    :cond_d9
    const v7, 0x7f020032

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b9

    .line 595
    .end local v0           #mButton:Landroid/widget/ImageView;
    :pswitch_e0
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 596
    .restart local v2       #mTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 598
    .restart local v1       #mIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/sec/android/app/myfiles/SimpleItem;->getIcon()Lcom/sec/android/app/myfiles/SimpleIcon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleIcon;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15

    .line 519
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_74
        :pswitch_a2
        :pswitch_e0
    .end packed-switch
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    if-nez v0, :cond_5

    .line 312
    :goto_4
    return-void

    .line 305
    :cond_5
    const-string v0, "[MyFiles]"

    const-string v1, "ListAdapterDetail.clearAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 308
    :try_start_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->notifyDataSetChanged()V

    goto :goto_4

    .line 309
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, value:I
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v2

    .line 318
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 319
    monitor-exit v2

    .line 320
    return v0

    .line 319
    :catchall_c
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .parameter "position"

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, obj:Ljava/lang/Object;
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_f

    .line 327
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 328
    monitor-exit v3

    .line 332
    .end local v1           #obj:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 328
    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    :try_start_e
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_f

    .line 329
    :catch_f
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 375
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "position"

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 356
    .local v1, val:I
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v3

    .line 357
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 358
    .local v0, size:I
    if-lez v0, :cond_1c

    if-le v0, p1, :cond_1c

    .line 359
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/myfiles/SimpleItem;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/SimpleItem;->mItemType:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v1

    .line 360
    :cond_1c
    monitor-exit v3

    .line 361
    return v1

    .line 360
    .end local v0           #size:I
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, p1, :cond_b

    .line 441
    const/4 v3, 0x0

    .line 513
    :goto_a
    return-object v3

    .line 443
    :cond_b
    const/4 v3, 0x0

    .line 445
    .local v3, view:Landroid/view/View;
    add-int/lit8 v4, p1, -0x7

    iput v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    .line 446
    iget v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    if-gez v4, :cond_16

    .line 447
    iput v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mStartPosition:I

    .line 449
    :cond_16
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 450
    :try_start_19
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_34

    .line 452
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->clearAgeMap()V

    .line 453
    :cond_34
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mAgeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->aging()V

    .line 455
    :cond_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_b1

    .line 457
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v5

    .line 458
    :try_start_43
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 459
    .local v0, aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v2

    .line 461
    .local v2, type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    if-nez p2, :cond_eb

    .line 462
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 465
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget-object v4, Lcom/sec/android/app/myfiles/ListAdapterDetail$1;->$SwitchMap$com$sec$android$app$myfiles$SimpleItem$ItemType:[I

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_106

    .line 492
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_66
    if-eqz v3, :cond_ab

    .line 493
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->setData(Landroid/view/View;Lcom/sec/android/app/myfiles/SimpleItem;)V

    .line 495
    sget-object v4, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    if-ne v2, v4, :cond_ab

    .line 496
    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mBoundary:Landroid/widget/ImageView;

    .line 497
    const v4, 0x7f0c0004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mOverlay:Landroid/widget/ImageView;

    .line 498
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 500
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mBoundary:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mOverlay:Landroid/widget/ImageView;

    const v6, 0x7f020023

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mOverlay:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    :cond_ab
    :goto_ab
    monitor-exit v5

    goto/16 :goto_a

    .end local v0           #aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v2           #type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :catchall_ae
    move-exception v4

    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_43 .. :try_end_b0} :catchall_ae

    throw v4

    .line 455
    :catchall_b1
    move-exception v4

    :try_start_b2
    monitor-exit v5
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v4

    .line 468
    .restart local v0       #aIconifiedText:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #type:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :pswitch_b4
    const v4, 0x7f03000a

    const/4 v6, 0x0

    :try_start_b8
    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 469
    goto :goto_66

    .line 471
    :pswitch_bd
    const v4, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 472
    goto :goto_66

    .line 474
    :pswitch_c6
    const v4, 0x7f030024

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 475
    goto :goto_66

    .line 477
    :pswitch_cf
    const v4, 0x7f03002b

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 478
    goto :goto_66

    .line 480
    :pswitch_d8
    const v4, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 481
    goto :goto_66

    .line 483
    :pswitch_e1
    const v4, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 484
    goto/16 :goto_66

    .line 489
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_eb
    move-object v3, p2

    goto/16 :goto_66

    .line 505
    :cond_ee
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mBoundary:Landroid/widget/ImageView;

    if-eqz v4, :cond_f9

    .line 506
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mBoundary:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    :cond_f9
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mOverlay:Landroid/widget/ImageView;

    if-eqz v4, :cond_ab

    .line 508
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mOverlay:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_104
    .catchall {:try_start_b8 .. :try_end_104} :catchall_ae

    goto :goto_ab

    .line 465
    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_b4
        :pswitch_bd
        :pswitch_c6
        :pswitch_cf
        :pswitch_d8
        :pswitch_e1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 370
    invoke-static {}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->values()[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    #calls: Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->onPause()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;->access$800(Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    .line 253
    :cond_c
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, lit:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    monitor-enter v1

    .line 297
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mItems:Ljava/util/List;

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public start()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    if-nez v0, :cond_b

    .line 238
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;-><init>(Lcom/sec/android/app/myfiles/ListAdapterDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ListAdapterDetail;->mImageThumbnailManager:Lcom/sec/android/app/myfiles/ListAdapterDetail$ImageThumbnailManager;

    .line 240
    :cond_b
    return-void
.end method
